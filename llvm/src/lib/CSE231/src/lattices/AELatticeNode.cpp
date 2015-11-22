#include "../../include/lattice/AELatticeNode.h"

LatticeNode* AELatticeNode::join(LatticeNode *in) {
	
	if(in->isbottom) return this;
	if(this->isbottom) return in;

	AELatticeNode *AEin = dyn_cast<AELatticeNode>(in);
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

bool AELatticeNode::equal(LatticeNode *in) {
	
	AELatticeNode* AEin =  dyn_cast<AELatticeNode>(in);
	map<Value*, Instruction*> node1 = this->node;
 	map<Value*, Instruction*> node2 = AEin->node;

	if(node1.size() != node2.size()) return false;

	for(auto e : node1) {
		Value *v = e.first;
		Instruction *i = e.second;
		if(node2.count(v) < 1) return false;
		if(i != node2[v]) return false;
	}
	return true;
}

void AELatticeNode::PrintInfo() {
	errs() << "			Debug Info for AE Lattice Point" << "\n";
	errs() << "bottom : " << this->getIsBottom() << "  top : " << this->getIsTop() << "\n";
	for(map<Value*, Instruction*>::iterator it = node.begin(); it != node.end(); it++) {
		Value* v = it->first;
		Instruction* i = it->second;
		v->print(errs());
		errs() << v;
		errs() << "----->";
		i->print(errs());
		errs() << i;
		errs() << "\n";
	}
}
