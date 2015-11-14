#ifndef AE_LATTICE_NODE_H
#define AE_LATTICE_NODE_H

#include<map>

#include "llvm/IR/Module.h""
#include "llvm/IR/Instructions.h"

#include "LatticeNode.h"

using namespace std;
using namespace llvm;

class AELatticeNode : public LatticeNode {

public:
	
	//a lattice point
	map<Value*, Instruction*> node;	



	AELatticeNode() : LatticeNode(AE) {}

	AELatticeNode(bool b, bool t, map<Value*, Instruction*> _node) {
		isbottom = b;
		istop = t;
		node = _node;
	}

	AELatticeNode(const AELatticeNode &copy) {
		isbottom = copy.getIsBottom();
		istop = copy.getIsTop();
		lkind = copy.getKind();
		node = copy.node;
	}

	LatticeNode* join(LatticeNode* in);
	void PrintInfo();
};

#endif
