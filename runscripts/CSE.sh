file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > CSEnotopt.bc
llvm-dis CSEnotopt.bc > CSEnotopt.ll

opt -load $LLVMLIB/part2.so -CSEpass < CSEnotopt.ll > CSEopt.bc
llvm-dis CSEopt.bc > CSEopt.ll

rm *.bc
