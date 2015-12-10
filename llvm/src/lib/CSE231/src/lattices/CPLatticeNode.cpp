#include "../../include/lattice/CPLatticeNode.h"

/*
 * Join function for CPLatticeNode.
 */
LatticeNode* CPLatticeNode::join(LatticeNode *in) 
{
	
	if(in->isbottom) return this;
	if(this->isbottom) return in;

	CPLatticeNode *CPIn = dyn_cast<CPLatticeNode>(in);
	map<Value*, Constant*> joinnode;
	map<Value*, Constant*> node1 = this->node;
	map<Value*, Constant*> node2 = CPIn->node;

	for(map<Value*, Constant*>::iterator it = node1.begin(); it != node1.end(); it++)
	{
		if(node2.count(it->first) > 0 && it->second == node2[it->first]) 
		{
			joinnode[it->first] = it->second;
		}
	}

	CPLatticeNode* result = new CPLatticeNode(false, false, joinnode);
	
	return result;

}


/*
 * Equal function for CPLatticeNode.
 */
bool CPLatticeNode::equal(LatticeNode *in) 
{

	CPLatticeNode* CPin = dyn_cast<CPLatticeNode>(in);
	map<Value*, Constant*> node1 = this->node;
	map<Value*, Constant*> node2 = CPin->node;

	// if node sizes aren't equal nodes can't be equal
	if(node1.size() != node2.size()) 
	{
		return false;
	}

	for(auto e : node1)
	{
		Value *v = e.first;
		Constant *c = e.second;
	
		if(node2.count(v) < 1)
		{
			return false;
		}

		if(c != node2[v])
		{
			return false;
		}

	}

	// otherwise, nodes are equal
	return true;

}


/*
 * Prints the info about the lattice point.
 */
void CPLatticeNode::PrintInfo()
{

	errs() << "                       Debug info for CP Lattice Point" << "\n";
	errs() << "bottom: " << this->getIsBottom() << " top: " << this->getIsTop() << "\n";

	for(map<Value*, Constant*>::iterator it = node.begin(); it != node.end(); it++)
	{
		Value* v = it->first;
		Constant* c = it->second;

		v->print(errs());
		errs() << "     " << c;
		errs() << "\n"; 

	}


}
