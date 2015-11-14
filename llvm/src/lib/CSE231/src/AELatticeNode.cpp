#include "lattices/AELatticeNode.h"

LatticeNode* AELatticeNode::join(LatticeNode *in) {
	
	if(in->getIsBottom()) return this;
	if(this.isbottom) return in;

	AELatticeNode *AEin = dyn_cast<AELatticeNode*>(in);
	map<Value*, Instruction*> joinnode;
	map<Value*, Instruction*> node1 = this->node;
	map<Value*, Instruction*> node2 = AEin->node;
	
	for(map<Value*, Instruction*>::iterator it = node1.begin(); it != node1.end(); it++) {
		if(node2.count(it->first) > 0 && it->second == node2[it->first]) {
			joinnode[it->first] = it->second;
		}
	}

	AELatticeNode* res = new AELatticeNode(false, false, joinnode);
	return res;
}

void AELatticeNode::PrintInfo() {
	errs() << "			Debug Info for AE Lattice Point" << endl;
	errs() << "bottom : " << this->getIsBottom() << "  top : " << this->getIsTop() << endl;
	for(map<Value*, Instruction*>::iterator it = node.begin(); it != node.end(); it++) {
		Valut* v = it->first;
		Instruction* i = it->second;
		v->print(errs());
		errs() << val;
		errs() << "----->";
		i->print(errs());
		errs() << i;
		errs() << endl;
	}
}
