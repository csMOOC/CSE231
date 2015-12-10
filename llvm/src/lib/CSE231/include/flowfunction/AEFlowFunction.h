#ifndef AE_FLOW_FUNCTION_H
#define AE_FLOW_FUNCTION_H

#include "./FlowFunction.h"
#include "../../include/lattice/AELatticeNode.h"

/*
 * This is the Avaliable Expression Flow Function class
 */
class AEFlowFunction : public FlowFunction, public InstVisitor<AEFlowFunction> {

public:

	//Store data
	vector<LatticeNode*> in;
	vector<LatticeNode*> out;
	vector<AELatticeNode*> Realin;

	AEFlowFunction() : FlowFunction(AEFF) {}

	static bool classof(const FlowFunction* f) {
		return f->kind == AEFF;
	}

	vector<LatticeNode*> operator()(Instruction *ins, vector<LatticeNode*> in);

	void visitBranchInst(BranchInst&);
	void visitCmpInst(CmpInst&);
	void visitBinaryOperator(BinaryOperator&);
	void visitPHINode(PHINode&);	
	void visitCallInst(CallInst&);

};

#endif
