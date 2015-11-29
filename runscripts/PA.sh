file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

cp $path CSEnotopt.bc
llvm-dis CSEnotopt.bc > CSEnotopt.ll

opt -load $LLVMLIB/part2.so -PApass < CSEnotopt.bc > /dev/null

rm *.bc
