We first run mem2reg pass, we only deal with registers.
uage : opt -mem2reg phi.bc > phi2.bc


#LatticeNode

1. We use an abstract class latticenode and provide some interfaces.

2. CSE latttice node is a child of lattice node, and use map<Value*, Instruction*> to represent a lattice point.


#FlowFunction

1. We use an abstract class FlowFunction to design the interface.

2. We overload the () operator for flowfunction, because it is a function, () operator represent this.

3. We will also inherit InstVisitor class.

LLVM instruction type. 

* UnaryInstruction
* BinaryOperator
* CastInst
* CmpInst
 
