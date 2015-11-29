#ifndef PA_LATTICE_NODE_H
#define PA_LATTICE_NODE_H

#include<map>

#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"

#include "./latticeNode.h"

using namespace std;
using namespace llvm;

class PALatticeNode : public LatticeNode {

public:
	
	//a lattice point, must point-to analysis
	map<Value*, Value*> node;	



	PALatticeNode() : LatticeNode(PA) {}

	PALatticeNode(bool b, bool t) : LatticeNode(PA, b, t) {
	}

	PALatticeNode(bool b, bool t, map<Value*, Value*> _node) : LatticeNode(PA, b, t) {
		node = _node;
	}

	PALatticeNode(const PALatticeNode &copy) : LatticeNode(copy.lkind, copy.isbottom, copy.istop) {
		node = copy.node;
	}

	static bool classof(const LatticeNode *L) {
    	return L->lkind == PA;
  	}

	LatticeNode* join(LatticeNode* in);

	bool equal(LatticeNode* in);

	void PrintInfo();

	bool isTempReg(Value*);
};

#endif
