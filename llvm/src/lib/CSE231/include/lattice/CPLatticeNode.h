#ifndef CP_LATTICE_NODE_H
#define CP_LATTICE_NODE_H

#include <map>

#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"

#include "./latticeNode.h"

using namespace std;
using namespace llvm;

class CPLatticeNode : public LatticeNode
{

public:

    // point in the lattice
    map<Value*, Constant*> node;	


    // define lattice node of CP type: default constructor
    CPLatticeNode() : LatticeNode(CP) {}

    // node constructor 
    CPLatticeNode(bool b, bool t) : LatticeNode(CP, b, t) {}

    // node constructor
    CPLatticeNode(bool b, bool t, map<Value*, Constant*> _node) : LatticeNode(CP, b, t) 
    {
        node = _node;
    }

    // copy constructor
    CPLatticeNode(const CPLatticeNode &copy) : LatticeNode(copy.lkind, copy.isbottom, copy.istop)
    {
        node = copy.node;
    }

    // whether the lattice node is a CP node
    static bool classof(const LatticeNode *L)
    {
        return L->lkind == CP;
    }

    // Join function
    LatticeNode* join(LatticeNode* in);

    // Equal function
    bool equal(LatticeNode* in);

    void PrintInfo();

};

#endif
