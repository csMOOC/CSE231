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

* BinaryOperator
* CmpInst
* CallInst
* BranchInst
* PHINode


## CSE

###Most east test case

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


###CSE Branch test case

	int main() {	
		int a = 1;
		int b = 2;
		int c = 3;
		int d = a+b;
		if(c > 0) {
			int f1 = a + b;
		} else {
			int f2 = a + b;
		}
		int e = b + c;
		d = b + c;
		return e;
	}

.ll

	entry:
 		%add = add nsw i32 1, 2
 		%cmp = icmp sgt i32 3, 0
 		br i1 %cmp, label %if.then, label %if.else
 
 	if.then:                                          ; preds = %entry
		%add1 = add nsw i32 1, 2
		br label %if.end
 
 	if.else:                                          ; preds = %entry
 		%add2 = add nsw i32 1, 2
 		br label %if.end
 
 	if.end:                                           ; preds = %if.else, %if.then
 		%add3 = add nsw i32 2, 3
 		%add4 = add nsw i32 2, 3
 		ret i32 %add3

Analysis result

	in main
	bottom : 1  top : 0
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
  		%add1 = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
  		%add2 = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
  		%add3 = add nsw i32 2, 3   	0x28247a0
	bottom : 0  top : 0
  		%add = add nsw i32 1, 2   	0x281e070
  		%add3 = add nsw i32 2, 3   	0x28247a0
		%add4 = add nsw i32 2, 3   	0x28247a0

Cases we did not handle

	int main() {
		int a = 1;
		int b = 2;
		int c = 3;
		if(c > 0) {
			int f1 = a + b;
		} else {
			int f2 = a + b;
		}
		return a + b;
	}

.ll

	entry:
  		%cmp = icmp sgt i32 3, 0
  		br i1 %cmp, label %if.then, label %if.else

	if.then:                                          ; preds = %entry
  		%add = add nsw i32 1, 2
  		br label %if.end

	if.else:                                          ; preds = %entry
  		%add1 = add nsw i32 1, 2
  		br label %if.end

	if.end:                                           ; preds = %if.else, %if.then
  		%add2 = add nsw i32 1, 2
  		ret i32 %add2

a+b is a common expression when **return a+b**. But we can not determine it is f1 or f2. Actually we can apply phinode in LLVM and change code like this

	if.end:
		%add2 = phi i32 [ %add, %if.then ], [ %add1, %if.else ]
However, when we have k branches, we will have k-1 phinodes, which will bring unnecessary transformations. Because calculating **1+2** is so cheap!!!  
