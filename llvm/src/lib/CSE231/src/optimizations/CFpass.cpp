#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/IRBuilder.h"

#include "../../include/worklist.h"
#include "../../include/lattice/CPLatticeNode.h"
#include "../../include/flowfunction/CPFlowFunction.h"

#include <map>
#include <list>
#include <vector>

using namespace std;
using namespace llvm;

namespace 
{

struct CFpass : public FunctionPass 
{

	static char ID;
	
	CFpass() : FunctionPass(ID) {}


	virtual bool runOnFunction(Function &F)
	{

		// name of function to optimize
		string funcName = F.getName();

		// print out errors for function
		errs() << funcName << "\n\n";


		CPFlowFunction cpFF;
		FlowFunction *f = dyn_cast<FlowFunction>(&cpFF);
		
		// define bottom node
		CPLatticeNode bottom(true, false);	

		map<Instruction*, LatticeNode*> instMap = dataFlowAnalysis(F, *f, &bottom);

		errs() << funcName << " Finished dataflow analysis. \n\n";


		// Begin Constant Propagation optimization

		stack<BasicBlock*> worklist;

		// push all instructions in function onto worklist for optimizing
		for(auto e = F.begin(); e != F.end(); ++e)
		{
			worklist.push(e);
		}


		// Go through worklist until it's empty and apply optimizations
		while(!worklist.empty())
		{
			// grab the first basic block off the top of the worklist stack
			auto bb = worklist.top();
			worklist.pop();

			// push all the instructions in the basic block into stack for instructions
			stack<Instruction*> instStack;
			for (auto e = bb->begin(); e != bb->end(); ++e)
				instStack.push(e);
		
			// to store deleted instructions
			vector<Instruction*> deleted;	

			// Loop through all the instructions on the instruction stack until they're gone
			while (!instStack.empty()) 
			{
				

				// get the first instruction off the instruction stack
				auto inst = instStack.top();
				instStack.pop();

				// debug: what instruction are we looking at?
				inst->print(errs());
				errs() << "\n";


				// get lattice node
				LatticeNode* base = instMap[inst];
				CPLatticeNode* CPnode = dyn_cast<CPLatticeNode>(base);
				map<Value*, Constant*> info = CPnode->node;

				CPnode->PrintInfo();


				// replace binary op instruction with ret and delete 1st instruction
				// ex. add 1, 2 -> ret 3
				for (auto OI = inst->op_begin(), OE = inst->op_end(); OI != OE; ++OI)
				{

					Value *val1 = *OI;
					//Value *val2 = *OE;

					errs() << "OPERAND VALUE: ";
					val1->print(errs());
					errs() << "\n";
					//val2->print(errs());	
	
					auto iter = info.find(val1);

					errs() << "KEY: ";
					//iter->second->print(errs());
					errs() << "\n";

					if (iter != info.end() )
					{
						//*OI = (Constant*)iter->second;
					}

					
			
				}

			
				// is this instruction dead?
				if(!instStack.empty())
				{

					//Instruction *pre = instStack.top();
					//if (info.count(pre) > 0 )//&& info[pre] != pre)
					//	deleted.push_back(pre);
	
				}	
				
			
			}


			// remove dead instructions from the worklist
			for (auto e : deleted)
			{
				e->eraseFromParent();
			}
			
		}



		return false;

	}

};

}

char CFpass::ID = 0;

static RegisterPass<CFpass> X("CFpass", "perform constant folding optimization");
