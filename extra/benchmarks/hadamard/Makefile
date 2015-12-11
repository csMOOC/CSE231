all: hadamard

hadamard: hadamard_test.c transform.c hadamard.h
	clang -O0 -emit-llvm -c hadamard_test.c -o hadamard_test.bc
	clang -O0 -emit-llvm -c transform.c -o transform.bc
	llvm-link transform.bc hadamard_test.bc -o hadamard.bc
	llvm-dis hadamard.bc

clean:
	rm -f ./*.bc ./*.ll ./out.dat ./*.o ./*.exe

