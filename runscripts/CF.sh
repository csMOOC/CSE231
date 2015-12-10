file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > CFnotopt.bc
llvm-dis CFnotopt.bc > CFnotopt.ll

opt -load $LLVMLIB/part2.so -CFpass < CFnotopt.bc > CFopt.bc
llvm-dis CFopt.bc > CFopt.ll

rm *.bc
