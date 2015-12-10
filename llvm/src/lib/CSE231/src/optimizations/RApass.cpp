#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/User.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/Support/raw_ostream.h"
#include "../RangeAnalysis/RangeAnalysis.h"

using namespace llvm;

class ClientRA: public llvm::FunctionPass {
public:
        static char ID;
        ClientRA() : FunctionPass(ID){ }
        virtual ~ClientRA() { }
        virtual bool runOnFunction(Function &F){
                IntraProceduralRA<Cousot> &ra = getAnalysis<IntraProceduralRA<Cousot> >();

                errs() << "\nCousot Intra Procedural analysis (Values -> Ranges) of " << F.getName() << ":\n";
                for(Function::iterator bb = F.begin(), bbEnd = F.end(); bb != bbEnd; ++bb){
                        for(BasicBlock::iterator I = bb->begin(), IEnd = bb->end(); I != IEnd; ++I){
                                const Value *v = &(*I);
                                Range r = ra.getRange(v);
                                if(!r.isUnknown()){
                                        r.print(errs());
                                        I->dump();
                                }
                        }
                }
                return false;
        }

        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
                AU.setPreservesAll();
                AU.addRequired<IntraProceduralRA<Cousot> >();
        }
};

char ClientRA::ID = 0;
static RegisterPass<ClientRA> X("client-ra", "A client that uses RangeAnalysis", false, false);
