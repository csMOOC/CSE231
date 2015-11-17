#ifndef AE_LATTICE_NODE_H
#define AE_LATTICE_NODE_H

#include<map>

#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"

#include "./latticeNode.h"

using namespace std;
using namespace llvm;

class AELatticeNode : public LatticeNode {

public:
	
	//a lattice point
	map<Value*, Instruction*> node;	



	AELatticeNode() : LatticeNode(AE) {}

	AELatticeNode(bool b, bool t, map<Value*, Instruction*> _node) : LatticeNode(AE, b, t) {
		node = _node;
	}

	AELatticeNode(const AELatticeNode &copy) : LatticeNode(copy.lkind, copy.isbottom, copy.istop) {
		node = copy.node;
	}

	AELatticeNode(const AELatticeNode *copy) : LatticeNode(copy->lkind, copy->isbottom, copy->istop) {
		node = copy->node;
	}

	static bool classof(const LatticeNode *L) {
    	return L->lkind == AE;
  	}

	LatticeNode* join(LatticeNode* in);
	void PrintInfo();
};

#endif
