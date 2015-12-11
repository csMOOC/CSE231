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

	//errs() << "operator FF \n";
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
	
	// llvm context
	//LLVMContext *context = LLVMContextCreate(void);
	
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
	int intVal;
	bool found = false;
	string opName = bo.getOpcodeName();

	for(map<Value*, Constant*>::iterator it = node.begin(); it != node.end(); ++it) 
	{

		// Get the two operands to the binary operator
		Value* op1 = bo.getOperand(0);
		Value* op2 = bo.getOperand(1);

		//errs() << "OPERANDS!!!!!!!!!!: ";
		//op1->print(errs());
		//op2->print(errs());
		//errs() << "here\n\n\n";

		// If both ops are constant integers (i.e., 1 + 2) then found is true
		if( ConstantInt* C1 = dyn_cast<ConstantInt>(op1) )
		{
			if ( ConstantInt* C2 = dyn_cast<ConstantInt>(op2) )
			{
				// we found a constant that can be folded!
				errs() << "here2\n";	
				if (opName == "add") {
					found = true;
					intVal = C1->getSExtValue() + C2->getSExtValue();
					//value = ConstantInt::get(IntegerType::get(&context, 32), APInt(32, intVal, true));
					value = (Constant*) intVal;
				}
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

	// delete context
	//LLVMContextDispose(context);

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


