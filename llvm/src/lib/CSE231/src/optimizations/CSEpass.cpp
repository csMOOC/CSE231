#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"

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
		
		AEFlowFunction aef;		
		FlowFunction *f = dyn_cast<FlowFunction>(&aef);
		AELatticeNode bottom(true, false);
		map<Instruction*, LatticeNode*> mymap = dataFlowAnalysis(F, *f, &bottom);

		errs() << "the size of mymap is :" << mymap.size() << "\n";
		return false;
	}

};

}


char CSEpass::ID = 0;

static RegisterPass<CSEpass> X("CSEpass","perform CSE optimization");
