file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > RAnotopt.bc
llvm-dis RAnotopt.bc > RAnotopt.ll

opt -load $LLVMLIB/part2.so -RApass < RAnotopt.bc > RAopt.bc
llvm-dis RAopt.bc > RAopt.ll
