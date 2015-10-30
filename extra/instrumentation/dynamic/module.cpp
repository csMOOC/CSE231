#include <map>
#include <stdio.h>
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h" 
#include <map>
using namespace llvm;

std::map<std::string, int> mymap;

void collectRuntimeInfo(char* opname, int count) {
	std::string _name(opname);
	mymap[_name] += count;
}

void dumpInfo()
{
	int total = 0;
	int len = 20;
	for(std::map<std::string, int>::iterator it = mymap.begin();it != mymap.end();++it) {
		int remain = len - it->first.length();
		printf("%s", it->first.c_str());
		for(int j = 0;j < remain;j++) printf(" ");
		printf("%d\n", it->second);
		total += it->second;
	}
	printf("%s               ", "TOTAL");
	printf("%d\n", total);
}
