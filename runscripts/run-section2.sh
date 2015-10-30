#opt -load $LLVMLIB/CSE231.so -csi < $BENCHMARKS/welcome/welcome.bc > /dev/null -analyze

CPPFLAGS=`llvm-config --cppflags`
LLVMLIBS=`llvm-config --libs`
LDFLAGS=`llvm-config --ldflags`

file=$1
benchname=${file##*/}
path=$1/$benchname
path=$path.bc

opt -load $LLVMLIB/CSE231.so -cdi < $path > temp.bc

## compile the instrumentation module to bitcode
clang $CPPFLAGS -O0 -emit-llvm -c $INSTRUMENTATION/dynamic/module.cpp -o module.bc

## link instrumentation module
llvm-link temp.bc module.bc -o temp.linked.bc

## compile to native object file
llc -filetype=obj temp.linked.bc -o=temp.o

## generate native executable
g++ temp.o $LLVMLIBS $LDFLAGS -o run.exe

./run.exe


#rm *.bc
#rm *.o
#rm *.exe
