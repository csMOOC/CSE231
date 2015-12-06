file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > CPnotopt.bc
llvm-dis CPnotopt.bc > CPnotopt.ll

opt -load $LLVMLIB/part2.so -CPpass < CPnotopt.bc > CPopt.bc
llvm-dis CPopt.bc > CPopt.ll

rm *.bc
