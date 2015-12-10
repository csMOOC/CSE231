.PHONY: all llvm extra

all: llvm extra

llvm:
	make -C llvm/build/lib/CSE231

extra:
	make -C extra


