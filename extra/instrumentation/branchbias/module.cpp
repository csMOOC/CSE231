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

std::map<std::string, int> Totalmap;
std::map<std::string, int> Truemap;

void collectBranchInfo(char *fname, bool f) {
	std::string Fname = std::string(fname);
	Totalmap[Fname]++;
	if(f) Truemap[Fname]++;
}

void dumpInfo()
{
	printf("%-50s%-10s%-10s%-10s\n","Function",	"Bias", "Taken", "Total");
	for(std::map<std::string, int>::iterator it = Totalmap.begin(); it != Totalmap.end(); ++it) {
		int total = it->second;
		std::string fname = it->first;
		int taken = Truemap.count(fname) > 0 ? Truemap[fname] : 0; 
		float bias = taken * 1.0 / total;
		printf("%-50s%-10f%-10d%-10d\n", fname.c_str(),bias,taken,total );
	}
}
