all: compression

compression: miniz.c compression.c
	clang -O0 -emit-llvm -c compression.c -o compression.bc
	llvm-dis compression.bc

clean:
	rm -f ./*.bc ./*.ll ./out.dat ./*.o ./*.exe

