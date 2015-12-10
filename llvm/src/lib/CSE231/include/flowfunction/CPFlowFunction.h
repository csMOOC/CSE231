#ifndef CP_FLOW_FUNCTION_H
#define CP_FLOW_FUNCTION_H

#include "./FlowFunction.h"
#include "../../include/lattice/CPLatticeNode.h"

// Class defining Constant Propagation flow functions
class CPFlowFunction : public FlowFunction, public InstVisitor<CPFlowFunction>
{

public:
	vector<LatticeNode*> in;
	vector<LatticeNode*> out;	
	vector<CPLatticeNode*> Realin;

	CPFlowFunction() : FlowFunction(CPFF) {}

	// Whether flow function is a CP flow function
	static bool classof(const FlowFunction* f) 
	{
		return f->kind == CPFF;
	}

	vector<LatticeNode*> operator()(Instruction *ins, vector<LatticeNode*> in);

	void visitBranchInst(BranchInst&);
	void visitCmpInst(CmpInst&);
	void visitBinaryOperator(BinaryOperator&);
	void visitPHINode(PHINode&);
	void visitCallInst(CallInst&);

};

#endif
