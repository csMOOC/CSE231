#include "../../include/flowfunction/CPFlowFunction.h"

vector<LatticeNode*> CPFlowFunction::operator()(Instruction *ins, vector<LatticeNode*> in)
{

	ins->print(errs());
	errs() << "\n";

	Realin.clear();
	for(vector<LatticeNode*>::iterator it = in.begin(); it != in.end(); it++) {
		AELatticeNode* node = dyn_cast<AELatticeNode>(*it);
		Realin.push_back(node);
	}

	out.clear();

	this->visit(ins);

	return out;
}

void CPFlowFunction::visitCallInst(CallInst &ci) 
{
	errs() << "Enter Call Instruction\n";
	CPLatticeNode *ae = new CPLatticeNode(true, false);
	out.push_back(ae);
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
	map<Value*, Constant*> node = Realin.back() -> node;
	if(node.count(&bo) > 0) {
		//While , For will trigger second and more visiting.
		errs() << "AE Binary Operator, redefined\n";
		CPLatticeNode *cp = new CPLatticeNode(*(Realin.back()));
		out.push_back(cp);
		return;
	}

	//continue process
	Value* key = &bo;
	Instruction* value;
	bool found = false;
	string opname = bo.getOpcodeName();

	for(map<Value*, Constant*>::iterator it = node.begin(); it != node.end(); ++it) {
		Constant* cache_instruction = it->second;
		if(cache_instruction->isIdenticalToWhenDefined(&bo)) {
			found = true;
			value = cache_instruction;
			break;
		}

		/* 
		 * special case
		 * handle case like 1+2 / 2+1
		 */
		if(opname == "add") {
			bo.swapOperands();
			if(cache_instruction->isIdenticalToWhenDefined(&bo)) {
				found = true;
				value = cache_instruction;
				bo.swapOperands();
				break;
			}
			bo.swapOperands();
		}
	}

	if(found) {
		node[key] = value;
	} else {
		node[key] = dyn_cast<Instruction>(key);
	}

	CPLatticeNode *cp = new CPLatticeNode(false, false, node);
 	out.push_back(cp);
	errs() << "Leave Binary Operator\n";
}

void CPFlowFunction::visitPHINode(PHINode &phi) 
{
	errs() << "Enter PHI Node\n";

	//At first, out = in_1 join in_2 join ... join in_n
	while(Realin.size() > 1) {
		CPLatticeNode *node1 = Realin.back();
		Realin.pop_back();
		CPLatticeNode *node2 = Realin.back();
		Realin.pop_back();
		CPLatticeNode *joinnode = dyn_cast<CPLatticeNode>(node1->join(node2));
		Realin.push_back(joinnode);
	}

	CPLatticeNode *ae = new CPLatticeNode(*(Realin.back()));
	out.push_back(ae);
	errs() << "Leave PHI Node\n";
}


