#define DEBUG_TYPE "countstaticinstruction"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
using namespace llvm;

namespace {
	
struct csi : public ModulePass {
	
        static char ID;
        csi() : ModulePass(ID) {}
		std::map<std::string, int> mymap;

        virtual bool runOnModule(Module &M) {
            //errs().write_escaped(F.getName()) << '\n';
 			
			for (Module::iterator F = M.begin(), e1 = M.end(); F != e1; ++F) {

				for (Function::iterator i = F->begin(), e2 = F->end(); i != e2; ++i) {
  					//errs() << "Basic block (name=" << i->getName() << ") has " << i->size() << " instructions.\n";
			
					for (BasicBlock::iterator j = i->begin(), e3 = i->end(); j != e3; ++j) {
   						// The next statement works since operator<<(ostream&,...)
   						// is overloaded for Instruction&
   						//errs() << *j << "\n";
						//errs() << j->getOpcodeName() << "\n";
						std::string Str = std::string(j->getOpcodeName());
						mymap[Str]++;
					}
				}
           }
			return false;
        }

		void print(raw_ostream &O, const Module *M) const {
	
			int total(0);
			int len = 20;
			for(std::map<std::string, int>::const_iterator it = mymap.begin(); it != mymap.end(); it++) {
				O << it->first;
				for(int i = it->first.length(); i < len;i++) O << " ";
				O << it->second << "\n";
				total += it->second;
			}

			O << "TOTAL               " << total << "\n";
		}

    };

}

char csi::ID = 0;
static RegisterPass<csi> X("csi","count static instruction pass");
