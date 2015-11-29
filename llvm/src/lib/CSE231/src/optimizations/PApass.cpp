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
#include "../../include/lattice/PALatticeNode.h"
#include "../../include/flowfunction/PAFlowFunction.h"

using namespace std;
using namespace llvm;

namespace {

struct PApass : public FunctionPass {

	static char ID;

	PApass() : FunctionPass(ID) {}

	virtual bool runOnFunction(Function &F) {
		string Fname = F.getName();
		errs() << Fname << "\n	\n";

		PAFlowFunction paf;		
		FlowFunction *f = dyn_cast<FlowFunction>(&paf);
		PALatticeNode bottom(true, false);
		map<Instruction*, LatticeNode*> mymap = dataFlowAnalysis(F, *f, &bottom);

		errs() << Fname << "data flow analysis finished!!! \n\n";
		
		if(Fname == "main") {
			errs() << "in main\n";
			for(auto e : mymap) {
				(e.second)->PrintInfo();
			}
		}
		errs() << "the size of mymap is :" << mymap.size() << "\n\n\n";

		return false;
	}

};

}


char PApass::ID = 0;

static RegisterPass<PApass> X("PApass","perform pointer analysis");
