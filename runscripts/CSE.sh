file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

echo $path

opt -mem2reg $path > temp.bc
llvm-dis temp.bc > temp.ll

opt -load $LLVMLIB/part2.so -CSEpass temp.ll > /dev/null
