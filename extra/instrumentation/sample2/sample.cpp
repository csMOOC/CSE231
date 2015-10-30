#define DEBUG_TYPE "countdynamicinstruction"
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

std::string FunName1 = "_Z18collectRuntimeInfoSsi";

namespace {
	
struct cdi : public ModulePass {
	
        static char ID;

        cdi() : ModulePass(ID) {
		}

        virtual bool runOnModule(Module &M) {
 			
			//generate function type
			std::vector<Type*>FuncTy_0_args;
 			PointerType* PointerTy_1 = PointerType::get(IntegerType::get(mod->getContext(), 8), 0);
 			FuncTy_0_args.push_back(PointerTy_1);
 			FuncTy_0_args.push_back(IntegerType::get(mod->getContext(), 32));
 			FunctionType* Func_CRI_Type = FunctionType::get(
  				/*Result=*/Type::getVoidTy(mod->getContext()),
  				/*Params=*/FuncTy_0_args,
  				/*isVarArg=*/false);
			
			for (Module::iterator F = M.begin(), e1 = M.end(); F != e1; ++F) {

				for (Function::iterator i = F->begin(), e2 = F->end(); i != e2; ++i) {
			
					std::map<std::string, int> basicmap;
					for (BasicBlock::iterator j = i->begin(), e3 = i->end(); j != e3; ++j) {
						std::string Fname = j->getOpcodeName();
						if(Fname == "jump" || Fname == "ret") {
							
							for(std::map<std::string>::iterator it = basicmap.begin(); it != basicmap.end(); it++) {
								IRBuilder<> Builder(j);
								Function *mycall = M.getOrInsertFunction(FunName1, Func_CRI);
								CallInst* CRIcall = Builder.CreateCall(mycall);
							}
							IRBuilder<> Builder(j);
							Function *mycall = M.getOrInsertFunction(FunName1, Func_CRI);
							CallInst* CRIcall = Builder.CreateCall(mycall);
							
						} else {
							std::string Str = std::string(j->getOpcodeName());
							basicmap[Str]++;
						}
					}
				}
           }
			
			return true;
        }

    };

}

char cdi::ID = 0;
static RegisterPass<cdi> X("cdi","count static instruction pass");
