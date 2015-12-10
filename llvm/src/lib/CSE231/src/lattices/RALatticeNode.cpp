#include "../../include/lattice/RALatticeNode.h"

LatticeNode* RALatticeNode::join(LatticeNode *in) {
    
    if(in->isbottom) return this;
    if(this->isbottom) return in;

    RALatticeNode *RAin = dyn_cast<RALatticeNode>(in);
    map<Value*, Value*> joinnode;
    map<Value*, Value*> node1 = this->node;
    map<Value*, Value*> node2 = RAin->node;
    
    for(map<Value*, Value*>::iterator it = node1.begin(); it != node1.end(); it++) {
        if(node2.count(it->first) > 0 && it->second == node2[it->first]) {
            joinnode[it->first] = it->second;
        }
    }

    RALatticeNode* res = new RALatticeNode(false, false, joinnode);
    return res;
}

bool RALatticeNode::equal(LatticeNode *in) {
    
    RALatticeNode* PAin =  dyn_cast<RALatticeNode>(in);
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