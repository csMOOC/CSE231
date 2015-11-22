opt -mem2reg test.bc > test2.bc
llvm-dis test2.bc > test2.ll
