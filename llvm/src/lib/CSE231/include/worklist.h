#ifndef WORKLIST_H
#define WORKLIST_H

/*
 * This file provide API for worklist algorithm
 */

#include "lattice/latticeNode.h"
#include "flowfunction/FlowFunction.h"
#include "flowfunction/AEFlowFunction.h"
#include "flowfunction/PAFlowFunction.h"
#include "flowfunction/CPFlowFunction.h"

#include <list>
#include <map>

#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
using namespace std;

/*
 data flow analysis function, return instruction-latticenode pair.
 */
map<Instruction*, LatticeNode*> dataFlowAnalysis(Function &F, FlowFunction &f, LatticeNode *start);

#endif
