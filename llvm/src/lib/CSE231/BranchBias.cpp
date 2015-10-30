#define DEBUG_TYPE "countdynamicinstruction"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
using namespace llvm;

std::string FunName3 = "_Z17collectBranchInfoPcb";
std::string FunName4 = "_Z8dumpInfov";

namespace {
	
struct pbb : public ModulePass {
	
        static char ID;

        pbb() : ModulePass(ID) {
			
		}

        virtual bool runOnModule(Module &M) {
 			
			//generate function type
			std::vector<Type*>FuncTy_0_args;
 			PointerType* PointerTy_1 = PointerType::get(IntegerType::get(M.getContext(), 8), 0);
 			FuncTy_0_args.push_back(PointerTy_1);
 			FuncTy_0_args.push_back(IntegerType::get(M.getContext(), 1));
 			FunctionType* Func_CRI_Type = FunctionType::get(
  				/*Result=*/Type::getVoidTy(M.getContext()),
  				/*Params=*/FuncTy_0_args,
  				/*isVarArg=*/false);
			
			
			//generate function type
			std::vector<Type*>FuncTy_1_args;
 			FunctionType* Func_Dump_Type = FunctionType::get(
  				/*Result=*/Type::getVoidTy(M.getContext()),
  				/*Params=*/FuncTy_1_args,
  				/*isVarArg=*/false);


			for (Module::iterator F = M.begin(), e1 = M.end(); F != e1; ++F) {

				for (Function::iterator i = F->begin(), e2 = F->end(); i != e2; ++i) {
			
					std::map<std::string, int> basicmap;
					for (BasicBlock::iterator j = i->begin(), e3 = i->end(); j != e3; ++j) {
					    std::string Fname = std::string(j->getOpcodeName());
						
						if(Fname == "br") {
							unsigned no = j->getNumOperands();
							if(no <= 1) continue;
							//if(no > 1) errs() << j->getOperand(0)->getName() << "   " <<  j->getOperand(1)->getName()
							//		<< "   " <<  j->getOperand(2)->getName()<< "\n";
							//BranchInst *bb = dynamic_cast<BranchInst*>(&(*j));
							Function *mycall = (Function*)(M.getOrInsertFunction(FunName3, Func_CRI_Type));
							IRBuilder<> Builder(j);
							Value *strPtr = Builder.CreateGlobalStringPtr(j->getParent()->getParent()->getName());
							std::vector<Value*> args1;
							args1.push_back(strPtr);
							args1.push_back(j->getOperand(0));
							ArrayRef<Value *> Args(args1);
							Builder.CreateCall(mycall, Args);
						}
						
						if(j->getParent()->getParent()->getName() == "main" && Fname == "ret") {
                        	Function *mycall = (Function*)(M.getOrInsertFunction(FunName4, Func_Dump_Type));
                        	IRBuilder<> Builder(j);
                        	Builder.CreateCall(mycall);
                        }

					}

				}
           	}
			
			return true;
        }

    };

}

char pbb::ID = 0;
static RegisterPass<pbb> X("pbb","profling branch bias");
