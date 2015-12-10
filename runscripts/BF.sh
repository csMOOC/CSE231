file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > BFnotopt.bc
llvm-dis BFnotopt.bc > BFnotopt.ll

opt -load $LLVMLIB/part2.so -BFpass < BFnotopt.bc > BFopt.bc
llvm-dis BFopt.bc > BFopt.ll

rm *.bc
