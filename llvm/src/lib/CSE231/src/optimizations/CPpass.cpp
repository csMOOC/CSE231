#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/IRBuilder.h"

#include "../../include/worklist.h"
#include "../../include/lattice/CPLatticNode.h"
#include "../../include/flowfunction/CPFlowFunction.h"

#include <map>
#include <list>
#include <vector>

using namespace std;
using namespace llvm;

namespace 
{

struct CPpass : public FunctionPass 
{

	static char ID;
	
	CPpass() : FunctionPass(ID) {}


	virtual bool runOnFunction(Function &F)
	{

		// name of function for TODO
		string funcName = F.getName();

		// print out errors for function
		errs() << funcName << "\n\n";


		CPFlowFunction cpFF;
		FlowFunction *f = dyn_cast<FlowFunction>(&cpFF);
		
		// define bottom node
		CPLatticeNode bottom(true, false);	

		map<Instruction*, LatticeNode*> mymap = dataFlowAnalysis(F, *f, &bottom);

		errs() << funcName << "Finished dataflow analysis. \n\n";


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

			// Stack for all the instructions in this basic block
			stack<Instruction*> instStack;
			


		}


	}

};

}

char CPpass::ID = 0;

static RegisterPass<CPpass> X("CPpass", "perform constant propagation optimization");
