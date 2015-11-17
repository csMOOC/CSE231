#ifndef FLOW_FUNCTION_H
#define FLOW_FUNCTION_H

#include "../lattice/latticeNode.h"

#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/InstVisitor.h"
#include "llvm/Support/raw_ostream.h"

#include<map>
#include<vector>

using namespace llvm;
using namespace std;


/*
 * Abstract class for flow function
 */
class FlowFunction {

public:

	enum FF_kind {CPFF, RAFF, AEFF, PAFF};

	FF_kind kind;

	FlowFunction(FF_kind kind) {
		this->kind = kind;
	}	

	virtual vector<LatticeNode*> operator() (Instruction* instruction, vector<LatticeNode*> info_in) = 0;
	
};

#endif
