#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/IRBuilder.h"

#include<map>
#include<list>
#include<vector>

#include "../../include/worklist.h"
#include "../../include/lattice/AELatticeNode.h"
#include "../../include/flowfunction/AEFlowFunction.h"

using namespace std;
using namespace llvm;

namespace {

struct CSEpass : public FunctionPass {

	static char ID;

	CSEpass() : FunctionPass(ID) {}

	virtual bool runOnFunction(Function &F) {
		string Fname = F.getName();
		errs() << Fname << "\n\n";

		AEFlowFunction aef;		
		FlowFunction *f = dyn_cast<FlowFunction>(&aef);
		AELatticeNode bottom(true, false);
		map<Instruction*, LatticeNode*> mymap = dataFlowAnalysis(F, *f, &bottom);

		errs() << Fname << "data flow analysis finished!!! \n\n";
		/*
		if(Fname == "main") {
			errs() << "in main\n";
			for(auto e : mymap) {
				(e.second)->PrintInfo();
			}
		}
		errs() << "the size of mymap is :" << mymap.size() << "\n\n\n";
		*/

		//apply CSE optimizations, amazing !!!
		stack<BasicBlock*> BBS;
		for(auto e = F.begin(); e != F.end(); ++e)
			BBS.push(e);
		while(!BBS.empty()) {

			auto bb = BBS.top();
			BBS.pop();

			stack<Instruction*> IS;
			for(auto e = bb->begin(); e != bb->end(); ++e) 
				IS.push(e);

			vector<Instruction*> deletes;

			while(!IS.empty()) {

				auto I = IS.top();
				IS.pop();

				LatticeNode* base = mymap[I];
				AELatticeNode* CSEnode = dyn_cast<AELatticeNode>(base);
				map<Value*, Instruction*> info = CSEnode->node;

				//replace operands with existing calculated one
				for (auto OI = I->op_begin(), OE = I->op_end(); OI != OE; ++OI) {
    				Value *val = *OI;
    				auto iter = info.find( val );

    				if( iter != info.end( ) ) {
        				*OI = (Value*)iter->second;
    				}
				}

				//check useless instruction
				if(!IS.empty()) {
					Instruction *pre = IS.top();
					if(info.count(pre) > 0 && info[pre] != pre)
						deletes.push_back(pre);
				}
		
			}

			for(auto e : deletes)
				e -> eraseFromParent();
		}

		return false;
	}

};

}


char CSEpass::ID = 0;

static RegisterPass<CSEpass> X("CSEpass","perform CSE optimization");
