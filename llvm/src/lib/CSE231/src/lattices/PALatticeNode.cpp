#include "../../include/lattice/PALatticeNode.h"

LatticeNode* PALatticeNode::join(LatticeNode *in) {
	
	if(in->isbottom) return this;
	if(this->isbottom) return in;

	PALatticeNode *PAin = dyn_cast<PALatticeNode>(in);
	map<Value*, Value*> joinnode;
	map<Value*, Value*> node1 = this->node;
	map<Value*, Value*> node2 = PAin->node;
	
	for(map<Value*, Value*>::iterator it = node1.begin(); it != node1.end(); it++) {
		if(node2.count(it->first) > 0 && it->second == node2[it->first]) {
			joinnode[it->first] = it->second;
		}
	}

	PALatticeNode* res = new PALatticeNode(false, false, joinnode);
	return res;
}

bool PALatticeNode::equal(LatticeNode *in) {
	
	PALatticeNode* PAin =  dyn_cast<PALatticeNode>(in);
	map<Value*, Value*> node1 = this->node;
 	map<Value*, Value*> node2 = PAin->node;

	if(node1.size() != node2.size()) return false;

	for(auto e : node1) {
		Value *v1 = e.first;
		Value *v2 = e.second;
		if(node2.count(v1) < 1) return false;
		if(v2 != node2[v1]) return false;
	}
	return true;
}

void PALatticeNode::PrintInfo() {
	errs() << "			Debug Info for PA Lattice Point		" << "\n";
	errs() << "bottom : " << this->getIsBottom() << "  top : " << this->getIsTop() << " size: " << node.size() << "\n";
	for(map<Value*, Value*>::iterator it = node.begin(); it != node.end(); it++) {
		Value* v1 = it->first;
		Value* v2 = it->second;
		//if(v2 == 0) continue;
		errs() << ((Value*)v1)->getName() << "->";
		if(isa<Constant>(v2)) {
			Constant *c = dyn_cast<Constant>(v2);
			errs() << c->getUniqueInteger() << "\n";
		} else {
			errs() << ((Value*)v2)->getName() << "\n";
		}
	}
}

bool PALatticeNode::isTempReg(Value* v) {
	string name = v->getName();
	for(char c : name)
		if(!isdigit(c))
			return false;
	return true;
}
