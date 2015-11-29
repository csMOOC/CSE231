#include "../../include/flowfunction/PAFlowFunction.h"

vector<LatticeNode*> PAFlowFunction::operator()(Instruction *ins, vector<LatticeNode*> in) {
	//errs() << "Enter AE flow function\n";
	ins->print(errs());
	errs() << "\n";

	Realin.clear();
	for(vector<LatticeNode*>::iterator it = in.begin(); it != in.end(); it++) {
		PALatticeNode* node = dyn_cast<PALatticeNode>(*it);
		Realin.push_back(node);
	}

	out.clear();

	this->visit(ins);

	//errs() << "Leave AE flow function\n";
	return out;
}

void PAFlowFunction::visitCallInst(CallInst &ci) {
	errs() << "Enter Call Instruction\n";
	PALatticeNode *ae = new PALatticeNode(true, false);
	out.push_back(ae);
	errs() << "Leave Call Instruction\n";
}

void PAFlowFunction::visitBranchInst(BranchInst &bi) {
	errs() << "Enter Branch Instruction\n";
	PALatticeNode *ae = new PALatticeNode(*(Realin.back()));
	out.push_back(ae);
	errs() << "Leave Branch Instruction\n";
}

void PAFlowFunction::visitCmpInst(CmpInst &ci) {
	errs() << "Enter cmp Instruction\n";
	PALatticeNode *ae = new PALatticeNode(*(Realin.back()));
	out.push_back(ae);
	errs() << "Leave cmp Instruction\n";
}

void PAFlowFunction::visitBinaryOperator(BinaryOperator &bo) {
	errs() << "Enter Binary Instruction\n";
	PALatticeNode *ae = new PALatticeNode(*(Realin.back()));
	out.push_back(ae);
	errs() << "Leave Binary Instruction\n";
}

void PAFlowFunction::visitPHINode(PHINode &phi) {
	errs() << "Enter PHI Node\n";
	
	//At first, out = in_1 join in_2 join ... join in_n
	while(Realin.size() > 1) {
		PALatticeNode *node1 = Realin.back();
		Realin.pop_back();
		PALatticeNode *node2 = Realin.back();
		Realin.pop_back();
		PALatticeNode *joinnode = dyn_cast<PALatticeNode>(node1->join(node2));
		Realin.push_back(joinnode);
	}

	PALatticeNode *ae = new PALatticeNode(*(Realin.back()));
	out.push_back(ae);
	errs() << "Leave PHI Node\n";
}

void PAFlowFunction::visitAllocaInst(AllocaInst &ai) {
	errs() << "Enter Alloca Instruction\n";
	PALatticeNode *ae = new PALatticeNode(*(Realin.back()));
	
	//Type* AllocatedType = ai.getAllocatedType();
	//if(isa<PointerType>(AllocatedType) && ae->node.count(&ai) == 0) {
	//	ae->node[&ai] = 0;
	//}
	out.push_back(ae);
	errs() << "Leave Alloca Instruction\n";
}

void PAFlowFunction::visitLoadInst(LoadInst &ai) {
	errs() << "Enter Load Instruction\n";
	PALatticeNode *pa = new PALatticeNode(*(Realin.back()));

	Value* v = ai.getPointerOperand();

	assert(v != 0);

	if(pa->isTempReg(v)) {
		pa->node[&ai] = pa->node[pa->node[v]];
	} else {
		pa->node[&ai] = pa->node[v];
	}

	out.push_back(pa);
	errs() << "Leave Load Instruction\n";
}

void PAFlowFunction::visitStoreInst(StoreInst &si) {
	errs() << "Enter Store Instruction\n";
	PALatticeNode *pa = new PALatticeNode(*(Realin.back()));
	

	Value *x = si.getPointerOperand();
	Value *y = si.getValueOperand();

	assert(x != 0 && y != 0);

	Value *key;
	Value *val;
	errs() << pa->node.size() << "\n";
	if(pa->isTempReg(x)) {
		key = pa->node[x];
	} else {
		key = x;
	}

	errs() << pa->node.size() << "\n";
	
	if(isa<ConstantInt>(y)) {
		val = y;
	} else if(pa->isTempReg(y)) {
		val = pa->node[y];
	} else {
		val = y;
	}

	errs() << pa->node.size() << "\n";
	/*
	if(pa->node.count(x) == 0) {
		out.push_back(pa);
		return;
	}*/

	/*
	 * AT first, we deal with *x = y
     * If y is a pointer and x points-to is a pointer, x -> a, y -> b, then a -> b
	 */
	//PointerType* type_of_x = dyn_cast<PointerType>(x->getType());
  	//Type* type_of_x_point_to = type_of_x->getPointerElementType();
  	//Type* type_of_y = y->getType();
 
	//If the types are OK, we add a -> b 
	//if (isa<PointerType>(type_of_x_point_to) && isa<PointerType>(type_of_y)) {
	//	if(pa->node.count(x) > 0 && pa->node.count(y) > 0) {		
	//		Value *x_point_to = pa->node[x];
	//		pa->node[x_point_to] = pa->node[y];
	//	}
	//}

	/*
	 * Then we deal with x = &y
	 */
	pa->node[key] = val;

	errs() << pa->node.size() << "\n";
	pa->istop = pa->isbottom = false;
	out.push_back(pa);
	errs() << "Leave Store Instruction\n";
}
