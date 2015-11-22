We first run mem2reg pass, we only deal with registers.
uage : opt -mem2reg phi.bc > phi2.bc


#LatticeNode

1. We use an class named latticenode and provide some interfaces.

2. CSE latttice node is a child of lattice node, and use map<Value*, Instruction*> to represent a lattice point.


#FlowFunction

1. We use an abstract class FlowFunction to design the interface.

2. We overload the () operator for flowfunction, because it is a function, () operator represent this.

3. We will also inherit InstVisitor class.

LLVM instruction type. 

* UnaryInstruction
* BinaryOperator
* CmpInst
* CallInst
* BranchInst
* PHINode




## CSE

sample code

int main() {	
	int a = 1;
	int b = 2;
	int d = a + b;
	int e = a + b;   %add = add nsw i32 1, 2   	    0x30ccf30
  					 %add1 = add nsw i32 1, 2   	0x30ccf30    point to same instruction address. works.
	return e;
}

.ll

%add = add nsw i32 1, 2
%add1 = add nsw i32 1, 2
ret i32 %add1


