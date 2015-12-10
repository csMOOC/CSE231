#ifndef PA_FLOW_FUNCTION_H
#define PA_FLOW_FUNCTION_H

#include "./FlowFunction.h"
#include "../../include/lattice/PALatticeNode.h"

/*
 * This is the Avaliable Expression Flow Function class
 */
class PAFlowFunction : public FlowFunction, public InstVisitor<PAFlowFunction> {

public:

	//Store data
	vector<LatticeNode*> in;
	vector<LatticeNode*> out;
	vector<PALatticeNode*> Realin;

	PAFlowFunction() : FlowFunction(PAFF) {}

	static bool classof(const FlowFunction* f) {
		return f->kind == PAFF;
	}

	vector<LatticeNode*> operator()(Instruction *ins, vector<LatticeNode*> in);

	void visitBranchInst(BranchInst&);
	void visitCmpInst(CmpInst&);
	void visitBinaryOperator(BinaryOperator&);
	void visitPHINode(PHINode&);	
	void visitCallInst(CallInst&);

	void visitAllocaInst(AllocaInst&);
	void visitLoadInst(LoadInst&);
	void visitStoreInst(StoreInst&);

};

#endif
