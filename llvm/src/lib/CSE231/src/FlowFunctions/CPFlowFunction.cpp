#include "../../include/flowfunction/CPFlowFunction.h"

vector<LatticeNode*> CPFlowFunction::operator()(Instruction *ins, vector<LatticeNode*> in)
{

	ins->print(errs());
	errs() << "\n";

	Realin.clear();
	for(vector<LatticeNode*>::iterator it = in.begin(); it != in.end(); it++) 
	{
		CPLatticeNode* node = dyn_cast<CPLatticeNode>(*it);
		Realin.push_back(node);
	}

	out.clear();

	this->visit(ins);

	return out;
}

void CPFlowFunction::visitCallInst(CallInst &ci) 
{

	errs() << "Enter Call Instruction\n";
	CPLatticeNode *cp = new CPLatticeNode(true, false);
	out.push_back(cp);
	errs() << "Leave Call Instruction\n";
}

void CPFlowFunction::visitBranchInst(BranchInst &bi) 
{
	errs() << "Enter Branch Instruction\n";
	CPLatticeNode *cp = new CPLatticeNode(*(Realin.back()));
	out.push_back(cp);
	errs() << "Leave Branch Instruction\n";
}

void CPFlowFunction::visitCmpInst(CmpInst &ci) 
{
	errs() << "Enter cmp Instruction\n";
	CPLatticeNode *cp = new CPLatticeNode(*(Realin.back()));
	out.push_back(cp);
	errs() << "Leave cmp Instruction\n";
}

void CPFlowFunction::visitBinaryOperator(BinaryOperator &bo) 
{
	errs() << "Enter Binary Operator\n";
	
	// the current node we're dealing with
	map<Value*, Constant*> node = Realin.back() -> node;
	
	
	
	if(node.count(&bo) > 0) 
	{
		//While , For will trigger second and more visiting.
		errs() << "CP Binary Operator, redefined\n";
		CPLatticeNode *cp = new CPLatticeNode(*(Realin.back()));
		out.push_back(cp);
		return;
	}

	//continue process
	Value* key = &bo;
	Constant* value;
	bool found = false;

	for(map<Value*, Constant*>::iterator it = node.begin(); it != node.end(); ++it) 
	{

		// Get the two operands to the binary operator
		Value* op1 = bo.getOperand(0);
		Value* op2 = bo.getOperand(1);

		// If both ops are constant (i.e., 1 + 2) then found is true
		if( Constant* C1 = dyn_cast<Constant>(op1) )
		{
			if ( Constant* C2 = dyn_cast<Constant>(op2) )
			{
				found = true;
				value = it->second;
			}
		}
	

	}

	
	if(found) {
		node[key] = value;
	} else {
		node[key] = dyn_cast<Constant>(key);
	}

	CPLatticeNode *cp = new CPLatticeNode(false, false, node);
 	out.push_back(cp);
	errs() << "Leave Binary Operator\n";

}

void CPFlowFunction::visitPHINode(PHINode &phi) 
{
	errs() << "Enter PHI Node\n";

	//At first, out = in_1 join in_2 join ... join in_n
	while(Realin.size() > 1) 
	{
		CPLatticeNode *node1 = Realin.back();
		Realin.pop_back();
		CPLatticeNode *node2 = Realin.back();
		Realin.pop_back();
		CPLatticeNode *joinnode = dyn_cast<CPLatticeNode>(node1->join(node2));
		Realin.push_back(joinnode);
	}

	CPLatticeNode *cp = new CPLatticeNode(*(Realin.back()));
	out.push_back(cp);
	errs() << "Leave PHI Node\n";
}


