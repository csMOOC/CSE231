file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

cp $path PAnotopt.bc
llvm-dis PAnotopt.bc > PAnotopt.ll

opt -load $LLVMLIB/part2.so -PApass < PAnotopt.bc > /dev/null

rm *.bc
