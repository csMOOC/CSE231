#opt -load $LLVMLIB/CSE231.so -csi < $BENCHMARKS/welcome/welcome.bc > /dev/null -analyze
file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc
opt -load $LLVMLIB/CSE231.so -csi < $path -analyze
