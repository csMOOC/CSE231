; ModuleID = 'sample.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.llvm::RegisterPass" = type { %"class.llvm::PassInfo" }
%"class.llvm::PassInfo" = type { i8*, i8*, i8*, i8, i8, i8, %"class.std::vector", %"class.llvm::Pass"* ()* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl" }
%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl" = type { %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"** }
%"class.llvm::Pass" = type { i32 (...)**, %"class.llvm::AnalysisResolver"*, i8*, i32 }
%"class.llvm::AnalysisResolver" = type { %"class.std::vector.6", %"class.llvm::PMDataManager"* }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *> > >::_Vector_impl" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"struct.std::pair" = type { i8*, %"class.llvm::Pass"* }
%"class.llvm::PMDataManager" = type opaque
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair.68" = type { %"class.std::basic_string", i32 }
%"class.llvm::PassRegistry" = type { i8* }
%"struct.<anonymous namespace>::cdi" = type { %"class.llvm::ModulePass" }
%"class.llvm::ModulePass" = type { %"class.llvm::Pass" }
%"class.std::allocator.3" = type { i8 }
%"class.__gnu_cxx::new_allocator.4" = type { i8 }
%"class.llvm::Module" = type { %"class.llvm::LLVMContext"*, %"class.llvm::iplist", %"class.llvm::iplist.11", %"class.llvm::iplist.20", %"struct.llvm::ilist", %"class.std::basic_string", %"class.llvm::ValueSymbolTable"*, %"class.llvm::OwningPtr", %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", i8* }
%"class.llvm::LLVMContext" = type opaque
%"class.llvm::iplist" = type { %"struct.llvm::ilist_traits", %"class.llvm::GlobalVariable"* }
%"struct.llvm::ilist_traits" = type { %"class.llvm::ilist_node" }
%"class.llvm::ilist_node" = type { %"class.llvm::ilist_half_node", %"class.llvm::GlobalVariable"* }
%"class.llvm::ilist_half_node" = type { %"class.llvm::GlobalVariable"* }
%"class.llvm::GlobalVariable" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node", i8 }
%"class.llvm::GlobalValue" = type { [52 x i8], [4 x i8], %"class.llvm::Module"*, %"class.std::basic_string" }
%"class.llvm::iplist.11" = type { %"struct.llvm::ilist_traits.12", %"class.llvm::Function"* }
%"struct.llvm::ilist_traits.12" = type { %"class.llvm::ilist_node.18" }
%"class.llvm::ilist_node.18" = type { %"class.llvm::ilist_half_node.19", %"class.llvm::Function"* }
%"class.llvm::ilist_half_node.19" = type { %"class.llvm::Function"* }
%"class.llvm::Function" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node.18", %"class.llvm::iplist.37", %"class.llvm::iplist.45", %"class.llvm::ValueSymbolTable"*, %"class.llvm::AttributeSet" }
%"class.llvm::iplist.37" = type { %"struct.llvm::ilist_traits.38", %"class.llvm::BasicBlock"* }
%"struct.llvm::ilist_traits.38" = type { %"class.llvm::ilist_half_node.44" }
%"class.llvm::ilist_half_node.44" = type { %"class.llvm::BasicBlock"* }
%"class.llvm::BasicBlock" = type { %"class.llvm::Value", %"class.llvm::ilist_node.54", %"class.llvm::iplist.55", %"class.llvm::Function"* }
%"class.llvm::Value" = type { i32 (...)**, i8, i8, i16, %"class.llvm::Type"*, %"class.llvm::Use"*, %"class.llvm::StringMapEntry"* }
%"class.llvm::Type" = type { %"class.llvm::LLVMContext"*, i32, i32, %"class.llvm::Type"** }
%"class.llvm::Use" = type { %"class.llvm::Value"*, %"class.llvm::Use"*, %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { i64 }
%"class.llvm::StringMapEntry" = type opaque
%"class.llvm::ilist_node.54" = type { %"class.llvm::ilist_half_node.44", %"class.llvm::BasicBlock"* }
%"class.llvm::iplist.55" = type { %"struct.llvm::ilist_traits.56", %"class.llvm::Instruction"* }
%"struct.llvm::ilist_traits.56" = type { %"class.llvm::ilist_half_node.62" }
%"class.llvm::ilist_half_node.62" = type { %"class.llvm::Instruction"* }
%"class.llvm::Instruction" = type { %"class.llvm::User", %"class.llvm::ilist_node.63", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc" }
%"class.llvm::User" = type { %"class.llvm::Value", %"class.llvm::Use"*, i32 }
%"class.llvm::ilist_node.63" = type { %"class.llvm::ilist_half_node.62", %"class.llvm::Instruction"* }
%"class.llvm::DebugLoc" = type { i32, i32 }
%"class.llvm::iplist.45" = type { %"struct.llvm::ilist_traits.46", %"class.llvm::Argument"* }
%"struct.llvm::ilist_traits.46" = type { %"class.llvm::ilist_half_node.52" }
%"class.llvm::ilist_half_node.52" = type { %"class.llvm::Argument"* }
%"class.llvm::Argument" = type { %"class.llvm::Value", %"class.llvm::ilist_node.53", %"class.llvm::Function"* }
%"class.llvm::ilist_node.53" = type { %"class.llvm::ilist_half_node.52", %"class.llvm::Argument"* }
%"class.llvm::AttributeSet" = type { %"class.llvm::AttributeSetImpl"* }
%"class.llvm::AttributeSetImpl" = type opaque
%"class.llvm::iplist.20" = type { %"struct.llvm::ilist_traits.21", %"class.llvm::GlobalAlias"* }
%"struct.llvm::ilist_traits.21" = type { %"class.llvm::ilist_node.27" }
%"class.llvm::ilist_node.27" = type { %"class.llvm::ilist_half_node.28", %"class.llvm::GlobalAlias"* }
%"class.llvm::ilist_half_node.28" = type { %"class.llvm::GlobalAlias"* }
%"class.llvm::GlobalAlias" = type { %"class.llvm::GlobalValue", %"class.llvm::ilist_node.27" }
%"struct.llvm::ilist" = type { %"class.llvm::iplist.29" }
%"class.llvm::iplist.29" = type { %"struct.llvm::ilist_traits.30", %"class.llvm::NamedMDNode"* }
%"struct.llvm::ilist_traits.30" = type { %"class.llvm::ilist_node.35" }
%"class.llvm::ilist_node.35" = type { %"class.llvm::ilist_half_node.36", %"class.llvm::NamedMDNode"* }
%"class.llvm::ilist_half_node.36" = type { %"class.llvm::NamedMDNode"* }
%"class.llvm::NamedMDNode" = type { %"class.llvm::ilist_node.35", %"class.std::basic_string", %"class.llvm::Module"*, i8* }
%"class.llvm::ValueSymbolTable" = type opaque
%"class.llvm::OwningPtr" = type { %"class.llvm::GVMaterializer"* }
%"class.llvm::GVMaterializer" = type opaque
%"class.llvm::raw_ostream" = type { i32 (...)**, i8*, i8*, i8*, i32 }
%"class.llvm::PMStack" = type opaque
%"class.llvm::AnalysisUsage" = type { %"class.llvm::SmallVector", %"class.llvm::SmallVector", %"class.llvm::SmallVector", i8 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase", %"struct.llvm::AlignedCharArrayUnion" }
%"class.llvm::SmallVectorBase" = type { i8*, i8*, i8* }
%"struct.llvm::AlignedCharArrayUnion" = type { %"struct.llvm::AlignedCharArray" }
%"struct.llvm::AlignedCharArray" = type { [8 x i8] }
%"struct.llvm::SmallVectorStorage" = type { [31 x %"struct.llvm::AlignedCharArrayUnion"] }
%"class.llvm::ImmutablePass" = type { %"class.llvm::ModulePass" }
%"class.llvm::ilist_iterator" = type { %"class.llvm::Function"* }
%"class.llvm::ilist_iterator.64" = type { %"class.llvm::BasicBlock"* }
%"class.llvm::ilist_iterator.66" = type { %"class.llvm::Instruction"* }
%"class.std::allocator.0" = type { i8 }
%"struct.std::iterator.67" = type { i8 }
%"struct.std::iterator.65" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair.68" }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair.69" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Select1st" = type { i8 }
%"class.std::allocator.70" = type { i8 }
%"class.__gnu_cxx::new_allocator.71" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZN4llvmL9huge_valfE = internal constant float 0x7FF0000000000000, align 4
@mymap = global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external unnamed_addr global i8
@_ZL1X = internal global %"struct.llvm::RegisterPass" zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"cdi\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"count static instruction pass\00", align 1
@_ZN12_GLOBAL__N_13cdi2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_13cdiE = internal unnamed_addr constant [20 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12_GLOBAL__N_13cdiE to i8*), i8* bitcast (void (%"struct.<anonymous namespace>::cdi"*)* @_ZN12_GLOBAL__N_13cdiD2Ev to i8*), i8* bitcast (void (%"struct.<anonymous namespace>::cdi"*)* @_ZN12_GLOBAL__N_13cdiD0Ev to i8*), i8* bitcast (i8* (%"class.llvm::Pass"*)* @_ZNK4llvm4Pass11getPassNameEv to i8*), i8* bitcast (i1 (%"class.llvm::Pass"*, %"class.llvm::Module"*)* @_ZN4llvm4Pass16doInitializationERNS_6ModuleE to i8*), i8* bitcast (i1 (%"class.llvm::Pass"*, %"class.llvm::Module"*)* @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE to i8*), i8* bitcast (void (%"class.llvm::Pass"*, %"class.llvm::raw_ostream"*, %"class.llvm::Module"*)* @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE to i8*), i8* bitcast (%"class.llvm::Pass"* (%"class.llvm::ModulePass"*, %"class.llvm::raw_ostream"*, %"class.std::basic_string"*)* @_ZNK4llvm10ModulePass17createPrinterPassERNS_11raw_ostreamERKSs to i8*), i8* bitcast (void (%"class.llvm::ModulePass"*, %"class.llvm::PMStack"*, i32)* @_ZN4llvm10ModulePass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE to i8*), i8* bitcast (void (%"class.llvm::Pass"*, %"class.llvm::PMStack"*)* @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE to i8*), i8* bitcast (i32 (%"class.llvm::ModulePass"*)* @_ZNK4llvm10ModulePass27getPotentialPassManagerTypeEv to i8*), i8* bitcast (void (%"class.llvm::Pass"*, %"class.llvm::AnalysisUsage"*)* @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE to i8*), i8* bitcast (void (%"class.llvm::Pass"*)* @_ZN4llvm4Pass13releaseMemoryEv to i8*), i8* bitcast (i8* (%"class.llvm::Pass"*, i8*)* @_ZN4llvm4Pass26getAdjustedAnalysisPointerEPKv to i8*), i8* bitcast (%"class.llvm::ImmutablePass"* (%"class.llvm::Pass"*)* @_ZN4llvm4Pass18getAsImmutablePassEv to i8*), i8* bitcast (%"class.llvm::PMDataManager"* (%"class.llvm::Pass"*)* @_ZN4llvm4Pass18getAsPMDataManagerEv to i8*), i8* bitcast (void (%"class.llvm::Pass"*)* @_ZNK4llvm4Pass14verifyAnalysisEv to i8*), i8* bitcast (void (%"class.llvm::Pass"*, i32)* @_ZN4llvm4Pass17dumpPassStructureEj to i8*), i8* bitcast (i1 (%"struct.<anonymous namespace>::cdi"*, %"class.llvm::Module"*)* @_ZN12_GLOBAL__N_13cdi11runOnModuleERN4llvm6ModuleE to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN12_GLOBAL__N_13cdiE = internal constant [21 x i8] c"N12_GLOBAL__N_13cdiE\00"
@_ZTIN4llvm10ModulePassE = external constant i8*
@_ZTIN12_GLOBAL__N_13cdiE = internal unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([21 x i8]* @_ZTSN12_GLOBAL__N_13cdiE, i32 0, i32 0), i8* bitcast (i8** @_ZTIN4llvm10ModulePassE to i8*) }
@_ZTVN4llvm10ModulePassE = external unnamed_addr constant [20 x i8*]
@_ZTVN4llvm4PassE = external unnamed_addr constant [19 x i8*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEC2Ev(%"class.std::map"* @mymap)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::map"*)* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::map"* @mymap, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEC2Ev(%"class.std::map"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev(%"class.std::map"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: uwtable
define void @_Z18collectRuntimeInfoSsi(%"class.std::basic_string"* %opname, i32 %count) #0 {
entry:
  %count.addr = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32* %count.addr, align 4
  %call = call i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* @mymap, %"class.std::basic_string"* %opname)
  %1 = load i32* %call
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %call
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* %this, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %ref.tmp7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp8 = alloca %"struct.std::pair.68", align 8
  %ref.tmp9 = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %0 = load %"class.std::basic_string"** %__k.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE11lower_boundERS3_(%"class.std::map"* %this1, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* %this1)
  %coerce.dive3 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %coerce.dive3
  %call4 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %__i, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE8key_compEv(%"class.std::map"* %this1)
  %1 = load %"class.std::basic_string"** %__k.addr, align 8
  %call5 = call %"struct.std::pair.68"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %first = getelementptr inbounds %"struct.std::pair.68"* %call5, i32 0, i32 0
  %call6 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %undef.agg.tmp, %"class.std::basic_string"* %1, %"class.std::basic_string"* %first)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  store i32 0, i32* %ref.tmp9
  call void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair.68"* %ref.tmp8, %"class.std::basic_string"* %4, i32* %ref.tmp9)
  %coerce.dive10 = getelementptr %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive10
  %call11 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this1, %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::pair.68"* %ref.tmp8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %coerce.dive12 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call11, %"struct.std::_Rb_tree_node_base"** %coerce.dive12
  %6 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair.68"* %ref.tmp8)
  br label %if.end

lpad:                                             ; preds = %if.then
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  invoke void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair.68"* %ref.tmp8)
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont, %lor.lhs.false
  %call14 = call %"struct.std::pair.68"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %second = getelementptr inbounds %"struct.std::pair.68"* %call14, i32 0, i32 1
  ret i32* %second

eh.resume:                                        ; preds = %invoke.cont13
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #12
  unreachable
}

define internal void @__cxx_global_var_init1() section ".text.startup" {
entry:
  call void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_13cdiEEC2EPKcS5_bb(%"struct.llvm::RegisterPass"* @_ZL1X, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i32 0, i32 0), i1 zeroext false, i1 zeroext false)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"struct.llvm::RegisterPass"*)* @_ZN4llvm12RegisterPassIN12_GLOBAL__N_13cdiEED2Ev to void (i8*)*), i8* bitcast (%"struct.llvm::RegisterPass"* @_ZL1X to i8*), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_13cdiEEC2EPKcS5_bb(%"struct.llvm::RegisterPass"* %this, i8* %PassArg, i8* %Name, i1 zeroext %CFGOnly, i1 zeroext %is_analysis) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::RegisterPass"*, align 8
  %PassArg.addr = alloca i8*, align 8
  %Name.addr = alloca i8*, align 8
  %CFGOnly.addr = alloca i8, align 1
  %is_analysis.addr = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.llvm::RegisterPass"* %this, %"struct.llvm::RegisterPass"** %this.addr, align 8
  store i8* %PassArg, i8** %PassArg.addr, align 8
  store i8* %Name, i8** %Name.addr, align 8
  %frombool = zext i1 %CFGOnly to i8
  store i8 %frombool, i8* %CFGOnly.addr, align 1
  %frombool1 = zext i1 %is_analysis to i8
  store i8 %frombool1, i8* %is_analysis.addr, align 1
  %this2 = load %"struct.llvm::RegisterPass"** %this.addr
  %0 = bitcast %"struct.llvm::RegisterPass"* %this2 to %"class.llvm::PassInfo"*
  %1 = load i8** %Name.addr, align 8
  %2 = load i8** %PassArg.addr, align 8
  %3 = load i8* %CFGOnly.addr, align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i8* %is_analysis.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  call void @_ZN4llvm8PassInfoC2EPKcS2_PKvPFPNS_4PassEvEbb(%"class.llvm::PassInfo"* %0, i8* %1, i8* %2, i8* @_ZN12_GLOBAL__N_13cdi2IDE, %"class.llvm::Pass"* ()* @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_13cdiEEEPNS_4PassEv, i1 zeroext %tobool, i1 zeroext %tobool3)
  %call = invoke %"class.llvm::PassRegistry"* @_ZN4llvm12PassRegistry15getPassRegistryEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"struct.llvm::RegisterPass"* %this2 to %"class.llvm::PassInfo"*
  invoke void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(%"class.llvm::PassRegistry"* %call, %"class.llvm::PassInfo"* %5, i1 zeroext false)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"struct.llvm::RegisterPass"* %this2 to %"class.llvm::PassInfo"*
  invoke void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* %9)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont5
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_13cdiEED2Ev(%"struct.llvm::RegisterPass"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::RegisterPass"*, align 8
  store %"struct.llvm::RegisterPass"* %this, %"struct.llvm::RegisterPass"** %this.addr, align 8
  %this1 = load %"struct.llvm::RegisterPass"** %this.addr
  %0 = bitcast %"struct.llvm::RegisterPass"* %this1 to %"class.llvm::PassInfo"*
  call void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm8PassInfoC2EPKcS2_PKvPFPNS_4PassEvEbb(%"class.llvm::PassInfo"* %this, i8* %name, i8* %arg, i8* %pi, %"class.llvm::Pass"* ()* %normal, i1 zeroext %isCFGOnly, i1 zeroext %is_analysis) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PassInfo"*, align 8
  %name.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %pi.addr = alloca i8*, align 8
  %normal.addr = alloca %"class.llvm::Pass"* ()*, align 8
  %isCFGOnly.addr = alloca i8, align 1
  %is_analysis.addr = alloca i8, align 1
  store %"class.llvm::PassInfo"* %this, %"class.llvm::PassInfo"** %this.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8* %pi, i8** %pi.addr, align 8
  store %"class.llvm::Pass"* ()* %normal, %"class.llvm::Pass"* ()** %normal.addr, align 8
  %frombool = zext i1 %isCFGOnly to i8
  store i8 %frombool, i8* %isCFGOnly.addr, align 1
  %frombool1 = zext i1 %is_analysis to i8
  store i8 %frombool1, i8* %is_analysis.addr, align 1
  %this2 = load %"class.llvm::PassInfo"** %this.addr
  %PassName = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 0
  %0 = load i8** %name.addr, align 8
  store i8* %0, i8** %PassName, align 8
  %PassArgument = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 1
  %1 = load i8** %arg.addr, align 8
  store i8* %1, i8** %PassArgument, align 8
  %PassID = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 2
  %2 = load i8** %pi.addr, align 8
  store i8* %2, i8** %PassID, align 8
  %IsCFGOnlyPass = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 3
  %3 = load i8* %isCFGOnly.addr, align 1
  %tobool = trunc i8 %3 to i1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, i8* %IsCFGOnlyPass, align 1
  %IsAnalysis = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 4
  %4 = load i8* %is_analysis.addr, align 1
  %tobool4 = trunc i8 %4 to i1
  %frombool5 = zext i1 %tobool4 to i8
  store i8 %frombool5, i8* %IsAnalysis, align 1
  %IsAnalysisGroup = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 5
  store i8 0, i8* %IsAnalysisGroup, align 1
  %ItfImpl = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 6
  call void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"class.std::vector"* %ItfImpl)
  %NormalCtor = getelementptr inbounds %"class.llvm::PassInfo"* %this2, i32 0, i32 7
  %5 = load %"class.llvm::Pass"* ()** %normal.addr, align 8
  store %"class.llvm::Pass"* ()* %5, %"class.llvm::Pass"* ()** %NormalCtor, align 8
  ret void
}

; Function Attrs: uwtable
define internal %"class.llvm::Pass"* @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_13cdiEEEPNS_4PassEv() #0 {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %call = call noalias i8* @_Znwm(i64 32) #13
  %0 = bitcast i8* %call to %"struct.<anonymous namespace>::cdi"*
  invoke void @_ZN12_GLOBAL__N_13cdiC2Ev(%"struct.<anonymous namespace>::cdi"* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"struct.<anonymous namespace>::cdi"* %0 to %"class.llvm::Pass"*
  ret %"class.llvm::Pass"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  call void @_ZdlPv(i8* %call) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

declare %"class.llvm::PassRegistry"* @_ZN4llvm12PassRegistry15getPassRegistryEv() #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(%"class.llvm::PassRegistry"*, %"class.llvm::PassInfo"*, i1 zeroext) #3

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"class.llvm::PassInfo"*, align 8
  store %"class.llvm::PassInfo"* %this, %"class.llvm::PassInfo"** %this.addr, align 8
  %this1 = load %"class.llvm::PassInfo"** %this.addr
  %ItfImpl = getelementptr inbounds %"class.llvm::PassInfo"* %this1, i32 0, i32 6
  call void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EED2Ev(%"class.std::vector"* %ItfImpl)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.llvm::PassInfo"*** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.llvm::PassInfo"*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke %"class.std::allocator.3"* @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPPKN4llvm8PassInfoES3_EvT_S5_RSaIT0_E(%"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"** %3, %"class.std::allocator.3"* %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPKN4llvm8PassInfoES3_EvT_S5_RSaIT0_E(%"class.llvm::PassInfo"** %__first, %"class.llvm::PassInfo"** %__last, %"class.std::allocator.3"*) #1 {
entry:
  %__first.addr = alloca %"class.llvm::PassInfo"**, align 8
  %__last.addr = alloca %"class.llvm::PassInfo"**, align 8
  %.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.llvm::PassInfo"** %__first, %"class.llvm::PassInfo"*** %__first.addr, align 8
  store %"class.llvm::PassInfo"** %__last, %"class.llvm::PassInfo"*** %__last.addr, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %.addr, align 8
  %1 = load %"class.llvm::PassInfo"*** %__first.addr, align 8
  %2 = load %"class.llvm::PassInfo"*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPPKN4llvm8PassInfoEEvT_S5_(%"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"** %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.3"* @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  ret %"class.std::allocator.3"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.llvm::PassInfo"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.llvm::PassInfo"*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.llvm::PassInfo"*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.llvm::PassInfo"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.llvm::PassInfo"** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* %this1, %"class.llvm::PassInfo"** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* %this, %"class.llvm::PassInfo"** %__p, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %"class.llvm::PassInfo"**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"class.llvm::PassInfo"** %__p, %"class.llvm::PassInfo"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %0 = load %"class.llvm::PassInfo"*** %__p.addr, align 8
  %tobool = icmp ne %"class.llvm::PassInfo"** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator.4"*
  %2 = load %"class.llvm::PassInfo"*** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.4"* %1, %"class.llvm::PassInfo"** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this1 to %"class.std::allocator.3"*
  call void @_ZNSaIPKN4llvm8PassInfoEED2Ev(%"class.std::allocator.3"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPKN4llvm8PassInfoEED2Ev(%"class.std::allocator.3"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %this, %"class.std::allocator.3"** %this.addr, align 8
  %this1 = load %"class.std::allocator.3"** %this.addr
  %0 = bitcast %"class.std::allocator.3"* %this1 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEED2Ev(%"class.__gnu_cxx::new_allocator.4"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEED2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.4"* %this, %"class.llvm::PassInfo"** %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %__p.addr = alloca %"class.llvm::PassInfo"**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  store %"class.llvm::PassInfo"** %__p, %"class.llvm::PassInfo"*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"** %this.addr
  %1 = load %"class.llvm::PassInfo"*** %__p.addr, align 8
  %2 = bitcast %"class.llvm::PassInfo"** %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPKN4llvm8PassInfoEEvT_S5_(%"class.llvm::PassInfo"** %__first, %"class.llvm::PassInfo"** %__last) #1 {
entry:
  %__first.addr = alloca %"class.llvm::PassInfo"**, align 8
  %__last.addr = alloca %"class.llvm::PassInfo"**, align 8
  store %"class.llvm::PassInfo"** %__first, %"class.llvm::PassInfo"*** %__first.addr, align 8
  store %"class.llvm::PassInfo"** %__last, %"class.llvm::PassInfo"*** %__last.addr, align 8
  %0 = load %"class.llvm::PassInfo"*** %__first.addr, align 8
  %1 = load %"class.llvm::PassInfo"*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKN4llvm8PassInfoEEEvT_S7_(%"class.llvm::PassInfo"** %0, %"class.llvm::PassInfo"** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKN4llvm8PassInfoEEEvT_S7_(%"class.llvm::PassInfo"**, %"class.llvm::PassInfo"**) #5 align 2 {
entry:
  %.addr = alloca %"class.llvm::PassInfo"**, align 8
  %.addr1 = alloca %"class.llvm::PassInfo"**, align 8
  store %"class.llvm::PassInfo"** %0, %"class.llvm::PassInfo"*** %.addr, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %.addr1, align 8
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: uwtable
define internal void @_ZN12_GLOBAL__N_13cdiC2Ev(%"struct.<anonymous namespace>::cdi"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.<anonymous namespace>::cdi"*, align 8
  store %"struct.<anonymous namespace>::cdi"* %this, %"struct.<anonymous namespace>::cdi"** %this.addr, align 8
  %this1 = load %"struct.<anonymous namespace>::cdi"** %this.addr
  %0 = bitcast %"struct.<anonymous namespace>::cdi"* %this1 to %"class.llvm::ModulePass"*
  call void @_ZN4llvm10ModulePassC2ERc(%"class.llvm::ModulePass"* %0, i8* @_ZN12_GLOBAL__N_13cdi2IDE)
  %1 = bitcast %"struct.<anonymous namespace>::cdi"* %this1 to i8***
  store i8** getelementptr inbounds ([20 x i8*]* @_ZTVN12_GLOBAL__N_13cdiE, i64 0, i64 2), i8*** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4llvm10ModulePassC2ERc(%"class.llvm::ModulePass"* %this, i8* %pid) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ModulePass"*, align 8
  %pid.addr = alloca i8*, align 8
  store %"class.llvm::ModulePass"* %this, %"class.llvm::ModulePass"** %this.addr, align 8
  store i8* %pid, i8** %pid.addr, align 8
  %this1 = load %"class.llvm::ModulePass"** %this.addr
  %0 = bitcast %"class.llvm::ModulePass"* %this1 to %"class.llvm::Pass"*
  %1 = load i8** %pid.addr, align 8
  call void @_ZN4llvm4PassC2ENS_8PassKindERc(%"class.llvm::Pass"* %0, i32 5, i8* %1)
  %2 = bitcast %"class.llvm::ModulePass"* %this1 to i8***
  store i8** getelementptr inbounds ([20 x i8*]* @_ZTVN4llvm10ModulePassE, i64 0, i64 2), i8*** %2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN12_GLOBAL__N_13cdiD2Ev(%"struct.<anonymous namespace>::cdi"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.<anonymous namespace>::cdi"*, align 8
  store %"struct.<anonymous namespace>::cdi"* %this, %"struct.<anonymous namespace>::cdi"** %this.addr, align 8
  %this1 = load %"struct.<anonymous namespace>::cdi"** %this.addr
  %0 = bitcast %"struct.<anonymous namespace>::cdi"* %this1 to %"class.llvm::ModulePass"*
  call void @_ZN4llvm10ModulePassD2Ev(%"class.llvm::ModulePass"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN12_GLOBAL__N_13cdiD0Ev(%"struct.<anonymous namespace>::cdi"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.<anonymous namespace>::cdi"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.<anonymous namespace>::cdi"* %this, %"struct.<anonymous namespace>::cdi"** %this.addr, align 8
  %this1 = load %"struct.<anonymous namespace>::cdi"** %this.addr
  invoke void @_ZN12_GLOBAL__N_13cdiD2Ev(%"struct.<anonymous namespace>::cdi"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"struct.<anonymous namespace>::cdi"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  %4 = bitcast %"struct.<anonymous namespace>::cdi"* %this1 to i8*
  call void @_ZdlPv(i8* %4) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

declare i8* @_ZNK4llvm4Pass11getPassNameEv(%"class.llvm::Pass"*) #3

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(%"class.llvm::Pass"* %this, %"class.llvm::Module"*) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Pass"*, align 8
  %.addr = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Pass"* %this, %"class.llvm::Pass"** %this.addr, align 8
  store %"class.llvm::Module"* %0, %"class.llvm::Module"** %.addr, align 8
  %this1 = load %"class.llvm::Pass"** %this.addr
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(%"class.llvm::Pass"* %this, %"class.llvm::Module"*) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Pass"*, align 8
  %.addr = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Pass"* %this, %"class.llvm::Pass"** %this.addr, align 8
  store %"class.llvm::Module"* %0, %"class.llvm::Module"** %.addr, align 8
  %this1 = load %"class.llvm::Pass"** %this.addr
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(%"class.llvm::Pass"*, %"class.llvm::raw_ostream"*, %"class.llvm::Module"*) #3

declare %"class.llvm::Pass"* @_ZNK4llvm10ModulePass17createPrinterPassERNS_11raw_ostreamERKSs(%"class.llvm::ModulePass"*, %"class.llvm::raw_ostream"*, %"class.std::basic_string"*) #3

declare void @_ZN4llvm10ModulePass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(%"class.llvm::ModulePass"*, %"class.llvm::PMStack"*, i32) #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(%"class.llvm::Pass"*, %"class.llvm::PMStack"*) #3

declare i32 @_ZNK4llvm10ModulePass27getPotentialPassManagerTypeEv(%"class.llvm::ModulePass"*) #3

declare void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(%"class.llvm::Pass"*, %"class.llvm::AnalysisUsage"*) #3

declare void @_ZN4llvm4Pass13releaseMemoryEv(%"class.llvm::Pass"*) #3

declare i8* @_ZN4llvm4Pass26getAdjustedAnalysisPointerEPKv(%"class.llvm::Pass"*, i8*) #3

declare %"class.llvm::ImmutablePass"* @_ZN4llvm4Pass18getAsImmutablePassEv(%"class.llvm::Pass"*) #3

declare %"class.llvm::PMDataManager"* @_ZN4llvm4Pass18getAsPMDataManagerEv(%"class.llvm::Pass"*) #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(%"class.llvm::Pass"*) #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(%"class.llvm::Pass"*, i32) #3

; Function Attrs: uwtable
define internal zeroext i1 @_ZN12_GLOBAL__N_13cdi11runOnModuleERN4llvm6ModuleE(%"struct.<anonymous namespace>::cdi"* %this, %"class.llvm::Module"* %M) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.<anonymous namespace>::cdi"*, align 8
  %M.addr = alloca %"class.llvm::Module"*, align 8
  %F = alloca %"class.llvm::ilist_iterator", align 8
  %e1 = alloca %"class.llvm::ilist_iterator", align 8
  %i = alloca %"class.llvm::ilist_iterator.64", align 8
  %e2 = alloca %"class.llvm::ilist_iterator.64", align 8
  %j = alloca %"class.llvm::ilist_iterator.66", align 8
  %e3 = alloca %"class.llvm::ilist_iterator.66", align 8
  %basicmap = alloca %"class.std::map", align 8
  %Str = alloca %"class.std::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store %"struct.<anonymous namespace>::cdi"* %this, %"struct.<anonymous namespace>::cdi"** %this.addr, align 8
  store %"class.llvm::Module"* %M, %"class.llvm::Module"** %M.addr, align 8
  %this1 = load %"struct.<anonymous namespace>::cdi"** %this.addr
  %0 = load %"class.llvm::Module"** %M.addr, align 8
  %call = call %"class.llvm::Function"* @_ZN4llvm6Module5beginEv(%"class.llvm::Module"* %0)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %F, i32 0, i32 0
  store %"class.llvm::Function"* %call, %"class.llvm::Function"** %coerce.dive
  %1 = load %"class.llvm::Module"** %M.addr, align 8
  %call2 = call %"class.llvm::Function"* @_ZN4llvm6Module3endEv(%"class.llvm::Module"* %1)
  %coerce.dive3 = getelementptr %"class.llvm::ilist_iterator"* %e1, i32 0, i32 0
  store %"class.llvm::Function"* %call2, %"class.llvm::Function"** %coerce.dive3
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %call4 = call zeroext i1 @_ZNK4llvm14ilist_iteratorINS_8FunctionEEneERKS2_(%"class.llvm::ilist_iterator"* %F, %"class.llvm::ilist_iterator"* %e1)
  br i1 %call4, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %call5 = call %"class.llvm::Function"* @_ZNK4llvm14ilist_iteratorINS_8FunctionEEptEv(%"class.llvm::ilist_iterator"* %F)
  %call6 = call %"class.llvm::BasicBlock"* @_ZN4llvm8Function5beginEv(%"class.llvm::Function"* %call5)
  %coerce.dive7 = getelementptr %"class.llvm::ilist_iterator.64"* %i, i32 0, i32 0
  store %"class.llvm::BasicBlock"* %call6, %"class.llvm::BasicBlock"** %coerce.dive7
  %call8 = call %"class.llvm::Function"* @_ZNK4llvm14ilist_iteratorINS_8FunctionEEptEv(%"class.llvm::ilist_iterator"* %F)
  %call9 = call %"class.llvm::BasicBlock"* @_ZN4llvm8Function3endEv(%"class.llvm::Function"* %call8)
  %coerce.dive10 = getelementptr %"class.llvm::ilist_iterator.64"* %e2, i32 0, i32 0
  store %"class.llvm::BasicBlock"* %call9, %"class.llvm::BasicBlock"** %coerce.dive10
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc35, %for.body
  %call12 = call zeroext i1 @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEneERKS2_(%"class.llvm::ilist_iterator.64"* %i, %"class.llvm::ilist_iterator.64"* %e2)
  br i1 %call12, label %for.body13, label %for.end37

for.body13:                                       ; preds = %for.cond11
  %call14 = call %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEptEv(%"class.llvm::ilist_iterator.64"* %i)
  %call15 = call %"class.llvm::Instruction"* @_ZN4llvm10BasicBlock5beginEv(%"class.llvm::BasicBlock"* %call14)
  %coerce.dive16 = getelementptr %"class.llvm::ilist_iterator.66"* %j, i32 0, i32 0
  store %"class.llvm::Instruction"* %call15, %"class.llvm::Instruction"** %coerce.dive16
  %call17 = call %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEptEv(%"class.llvm::ilist_iterator.64"* %i)
  %call18 = call %"class.llvm::Instruction"* @_ZN4llvm10BasicBlock3endEv(%"class.llvm::BasicBlock"* %call17)
  %coerce.dive19 = getelementptr %"class.llvm::ilist_iterator.66"* %e3, i32 0, i32 0
  store %"class.llvm::Instruction"* %call18, %"class.llvm::Instruction"** %coerce.dive19
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body13
  %call21 = call zeroext i1 @_ZNK4llvm14ilist_iteratorINS_11InstructionEEneERKS2_(%"class.llvm::ilist_iterator.66"* %j, %"class.llvm::ilist_iterator.66"* %e3)
  br i1 %call21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  call void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEC2Ev(%"class.std::map"* %basicmap)
  %call23 = invoke %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_11InstructionEEptEv(%"class.llvm::ilist_iterator.66"* %j)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body22
  %call25 = invoke i8* @_ZNK4llvm11Instruction13getOpcodeNameEv(%"class.llvm::Instruction"* %call23)
          to label %invoke.cont24 unwind label %lpad

invoke.cont24:                                    ; preds = %invoke.cont
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %Str, i8* %call25, %"class.std::allocator.0"* %ref.tmp)
          to label %invoke.cont27 unwind label %lpad26

invoke.cont27:                                    ; preds = %invoke.cont24
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  %call30 = invoke i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* %basicmap, %"class.std::basic_string"* %Str)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %invoke.cont27
  %2 = load i32* %call30
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %call30
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %Str)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont29
  call void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev(%"class.std::map"* %basicmap)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont31
  %call34 = call %"class.llvm::ilist_iterator.66"* @_ZN4llvm14ilist_iteratorINS_11InstructionEEppEv(%"class.llvm::ilist_iterator.66"* %j)
  br label %for.cond20

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %for.body22
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  br label %ehcleanup

lpad26:                                           ; preds = %invoke.cont24
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  br label %ehcleanup

lpad28:                                           ; preds = %invoke.cont27
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %Str)
          to label %invoke.cont32 unwind label %terminate.lpad

invoke.cont32:                                    ; preds = %lpad28
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont32, %lpad26, %lpad
  invoke void @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEED2Ev(%"class.std::map"* %basicmap)
          to label %invoke.cont33 unwind label %terminate.lpad

invoke.cont33:                                    ; preds = %ehcleanup
  br label %eh.resume

for.end:                                          ; preds = %for.cond20
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %call36 = call %"class.llvm::ilist_iterator.64"* @_ZN4llvm14ilist_iteratorINS_10BasicBlockEEppEv(%"class.llvm::ilist_iterator.64"* %i)
  br label %for.cond11

for.end37:                                        ; preds = %for.cond11
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %call39 = call %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_8FunctionEEppEv(%"class.llvm::ilist_iterator"* %F)
  br label %for.cond

for.end40:                                        ; preds = %for.cond
  ret i1 true

eh.resume:                                        ; preds = %invoke.cont33
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val41 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val41

terminate.lpad:                                   ; preds = %ehcleanup, %lpad28
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm6Module5beginEv(%"class.llvm::Module"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Module"* %this, %"class.llvm::Module"** %this.addr, align 8
  %this1 = load %"class.llvm::Module"** %this.addr
  %FunctionList = getelementptr inbounds %"class.llvm::Module"* %this1, i32 0, i32 2
  %call = call %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.11"* %FunctionList)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  store %"class.llvm::Function"* %call, %"class.llvm::Function"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %coerce.dive2
  ret %"class.llvm::Function"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm6Module3endEv(%"class.llvm::Module"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Module"* %this, %"class.llvm::Module"** %this.addr, align 8
  %this1 = load %"class.llvm::Module"** %this.addr
  %FunctionList = getelementptr inbounds %"class.llvm::Module"* %this1, i32 0, i32 2
  %call = call %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.11"* %FunctionList)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  store %"class.llvm::Function"* %call, %"class.llvm::Function"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %coerce.dive2
  ret %"class.llvm::Function"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm14ilist_iteratorINS_8FunctionEEneERKS2_(%"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"* %RHS) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  %RHS.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  store %"class.llvm::ilist_iterator"* %RHS, %"class.llvm::ilist_iterator"** %RHS.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %NodePtr, align 8
  %1 = load %"class.llvm::ilist_iterator"** %RHS.addr, align 8
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator"* %1, i32 0, i32 0
  %2 = load %"class.llvm::Function"** %NodePtr2, align 8
  %cmp = icmp ne %"class.llvm::Function"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZNK4llvm14ilist_iteratorINS_8FunctionEEptEv(%"class.llvm::ilist_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %call = call %"class.llvm::Function"* @_ZNK4llvm14ilist_iteratorINS_8FunctionEEdeEv(%"class.llvm::ilist_iterator"* %this1)
  ret %"class.llvm::Function"* %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm8Function5beginEv(%"class.llvm::Function"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.64", align 8
  %this.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %this1 = load %"class.llvm::Function"** %this.addr
  %BasicBlocks = getelementptr inbounds %"class.llvm::Function"* %this1, i32 0, i32 2
  %call = call %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.37"* %BasicBlocks)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  store %"class.llvm::BasicBlock"* %call, %"class.llvm::BasicBlock"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %coerce.dive2
  ret %"class.llvm::BasicBlock"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm8Function3endEv(%"class.llvm::Function"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.64", align 8
  %this.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %this, %"class.llvm::Function"** %this.addr, align 8
  %this1 = load %"class.llvm::Function"** %this.addr
  %BasicBlocks = getelementptr inbounds %"class.llvm::Function"* %this1, i32 0, i32 2
  %call = call %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.37"* %BasicBlocks)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  store %"class.llvm::BasicBlock"* %call, %"class.llvm::BasicBlock"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %coerce.dive2
  ret %"class.llvm::BasicBlock"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEneERKS2_(%"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"* %RHS) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  %RHS.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  store %"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"** %this.addr, align 8
  store %"class.llvm::ilist_iterator.64"* %RHS, %"class.llvm::ilist_iterator.64"** %RHS.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.64"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %NodePtr, align 8
  %1 = load %"class.llvm::ilist_iterator.64"** %RHS.addr, align 8
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %1, i32 0, i32 0
  %2 = load %"class.llvm::BasicBlock"** %NodePtr2, align 8
  %cmp = icmp ne %"class.llvm::BasicBlock"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEptEv(%"class.llvm::ilist_iterator.64"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  store %"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.64"** %this.addr
  %call = call %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEdeEv(%"class.llvm::ilist_iterator.64"* %this1)
  ret %"class.llvm::BasicBlock"* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm10BasicBlock5beginEv(%"class.llvm::BasicBlock"* %this) #1 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.66", align 8
  %this.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::BasicBlock"* %this, %"class.llvm::BasicBlock"** %this.addr, align 8
  %this1 = load %"class.llvm::BasicBlock"** %this.addr
  %InstList = getelementptr inbounds %"class.llvm::BasicBlock"* %this1, i32 0, i32 2
  %call = call %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.55"* %InstList)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  store %"class.llvm::Instruction"* %call, %"class.llvm::Instruction"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %coerce.dive2
  ret %"class.llvm::Instruction"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm10BasicBlock3endEv(%"class.llvm::BasicBlock"* %this) #1 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.66", align 8
  %this.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::BasicBlock"* %this, %"class.llvm::BasicBlock"** %this.addr, align 8
  %this1 = load %"class.llvm::BasicBlock"** %this.addr
  %InstList = getelementptr inbounds %"class.llvm::BasicBlock"* %this1, i32 0, i32 2
  %call = call %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.55"* %InstList)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  store %"class.llvm::Instruction"* %call, %"class.llvm::Instruction"** %coerce.dive
  %coerce.dive2 = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %coerce.dive2
  ret %"class.llvm::Instruction"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK4llvm14ilist_iteratorINS_11InstructionEEneERKS2_(%"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"* %RHS) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  %RHS.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  store %"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"** %this.addr, align 8
  store %"class.llvm::ilist_iterator.66"* %RHS, %"class.llvm::ilist_iterator.66"** %RHS.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.66"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %NodePtr, align 8
  %1 = load %"class.llvm::ilist_iterator.66"** %RHS.addr, align 8
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %1, i32 0, i32 0
  %2 = load %"class.llvm::Instruction"** %NodePtr2, align 8
  %cmp = icmp ne %"class.llvm::Instruction"* %0, %2
  ret i1 %cmp
}

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator.0"*) #3

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_11InstructionEEptEv(%"class.llvm::ilist_iterator.66"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  store %"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.66"** %this.addr
  %call = call %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_11InstructionEEdeEv(%"class.llvm::ilist_iterator.66"* %this1)
  ret %"class.llvm::Instruction"* %call
}

; Function Attrs: uwtable
define linkonce_odr i8* @_ZNK4llvm11Instruction13getOpcodeNameEv(%"class.llvm::Instruction"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %call = call i32 @_ZNK4llvm11Instruction9getOpcodeEv(%"class.llvm::Instruction"* %this1)
  %call2 = call i8* @_ZN4llvm11Instruction13getOpcodeNameEj(i32 %call)
  ret i8* %call2
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) #9

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) #9

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #3

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::ilist_iterator.66"* @_ZN4llvm14ilist_iteratorINS_11InstructionEEppEv(%"class.llvm::ilist_iterator.66"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  store %"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.66"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %NodePtr, align 8
  %call = call %"class.llvm::Instruction"* @_ZN4llvm21ilist_nextprev_traitsINS_11InstructionEE7getNextEPS1_(%"class.llvm::Instruction"* %0)
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %this1, i32 0, i32 0
  store %"class.llvm::Instruction"* %call, %"class.llvm::Instruction"** %NodePtr2, align 8
  ret %"class.llvm::ilist_iterator.66"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::ilist_iterator.64"* @_ZN4llvm14ilist_iteratorINS_10BasicBlockEEppEv(%"class.llvm::ilist_iterator.64"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  store %"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.64"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %NodePtr, align 8
  %call = call %"class.llvm::BasicBlock"* @_ZN4llvm21ilist_nextprev_traitsINS_10BasicBlockEE7getNextEPS1_(%"class.llvm::BasicBlock"* %0)
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %this1, i32 0, i32 0
  store %"class.llvm::BasicBlock"* %call, %"class.llvm::BasicBlock"** %NodePtr2, align 8
  ret %"class.llvm::ilist_iterator.64"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_8FunctionEEppEv(%"class.llvm::ilist_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %NodePtr, align 8
  %call = call %"class.llvm::Function"* @_ZN4llvm21ilist_nextprev_traitsINS_8FunctionEE7getNextEPS1_(%"class.llvm::Function"* %0)
  %NodePtr2 = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  store %"class.llvm::Function"* %call, %"class.llvm::Function"** %NodePtr2, align 8
  ret %"class.llvm::ilist_iterator"* %this1
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm21ilist_nextprev_traitsINS_8FunctionEE7getNextEPS1_(%"class.llvm::Function"* %N) #0 align 2 {
entry:
  %N.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %N, %"class.llvm::Function"** %N.addr, align 8
  %0 = load %"class.llvm::Function"** %N.addr, align 8
  %1 = bitcast %"class.llvm::Function"* %0 to i8*
  %add.ptr = getelementptr inbounds i8* %1, i64 72
  %2 = bitcast i8* %add.ptr to %"class.llvm::ilist_node.18"*
  %call = call %"class.llvm::Function"* @_ZN4llvm10ilist_nodeINS_8FunctionEE7getNextEv(%"class.llvm::ilist_node.18"* %2)
  ret %"class.llvm::Function"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm10ilist_nodeINS_8FunctionEE7getNextEv(%"class.llvm::ilist_node.18"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_node.18"*, align 8
  store %"class.llvm::ilist_node.18"* %this, %"class.llvm::ilist_node.18"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_node.18"** %this.addr
  %Next = getelementptr inbounds %"class.llvm::ilist_node.18"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Function"** %Next, align 8
  ret %"class.llvm::Function"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm21ilist_nextprev_traitsINS_10BasicBlockEE7getNextEPS1_(%"class.llvm::BasicBlock"* %N) #0 align 2 {
entry:
  %N.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::BasicBlock"* %N, %"class.llvm::BasicBlock"** %N.addr, align 8
  %0 = load %"class.llvm::BasicBlock"** %N.addr, align 8
  %1 = bitcast %"class.llvm::BasicBlock"* %0 to i8*
  %add.ptr = getelementptr inbounds i8* %1, i64 40
  %2 = bitcast i8* %add.ptr to %"class.llvm::ilist_node.54"*
  %call = call %"class.llvm::BasicBlock"* @_ZN4llvm10ilist_nodeINS_10BasicBlockEE7getNextEv(%"class.llvm::ilist_node.54"* %2)
  ret %"class.llvm::BasicBlock"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm10ilist_nodeINS_10BasicBlockEE7getNextEv(%"class.llvm::ilist_node.54"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_node.54"*, align 8
  store %"class.llvm::ilist_node.54"* %this, %"class.llvm::ilist_node.54"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_node.54"** %this.addr
  %Next = getelementptr inbounds %"class.llvm::ilist_node.54"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::BasicBlock"** %Next, align 8
  ret %"class.llvm::BasicBlock"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm21ilist_nextprev_traitsINS_11InstructionEE7getNextEPS1_(%"class.llvm::Instruction"* %N) #0 align 2 {
entry:
  %N.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %N, %"class.llvm::Instruction"** %N.addr, align 8
  %0 = load %"class.llvm::Instruction"** %N.addr, align 8
  %1 = bitcast %"class.llvm::Instruction"* %0 to i8*
  %add.ptr = getelementptr inbounds i8* %1, i64 56
  %2 = bitcast i8* %add.ptr to %"class.llvm::ilist_node.63"*
  %call = call %"class.llvm::Instruction"* @_ZN4llvm10ilist_nodeINS_11InstructionEE7getNextEv(%"class.llvm::ilist_node.63"* %2)
  ret %"class.llvm::Instruction"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm10ilist_nodeINS_11InstructionEE7getNextEv(%"class.llvm::ilist_node.63"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_node.63"*, align 8
  store %"class.llvm::ilist_node.63"* %this, %"class.llvm::ilist_node.63"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_node.63"** %this.addr
  %Next = getelementptr inbounds %"class.llvm::ilist_node.63"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Instruction"** %Next, align 8
  ret %"class.llvm::Instruction"* %0
}

declare i8* @_ZN4llvm11Instruction13getOpcodeNameEj(i32) #3

; Function Attrs: uwtable
define linkonce_odr i32 @_ZNK4llvm11Instruction9getOpcodeEv(%"class.llvm::Instruction"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %this, %"class.llvm::Instruction"** %this.addr, align 8
  %this1 = load %"class.llvm::Instruction"** %this.addr
  %0 = bitcast %"class.llvm::Instruction"* %this1 to %"class.llvm::Value"*
  %call = call i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* %0)
  %sub = sub i32 %call, 22
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %this, %"class.llvm::Value"** %this.addr, align 8
  %this1 = load %"class.llvm::Value"** %this.addr
  %SubclassID = getelementptr inbounds %"class.llvm::Value"* %this1, i32 0, i32 1
  %0 = load i8* %SubclassID, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_11InstructionEEdeEv(%"class.llvm::ilist_iterator.66"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  store %"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.66"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %NodePtr, align 8
  ret %"class.llvm::Instruction"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.55"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.66", align 8
  %this.addr = alloca %"class.llvm::iplist.55"*, align 8
  store %"class.llvm::iplist.55"* %this, %"class.llvm::iplist.55"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.55"** %this.addr
  call void @_ZNK4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.55"* %this1)
  %call = call %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.55"* %this1)
  call void @_ZN4llvm14ilist_iteratorINS_11InstructionEEC2EPS1_(%"class.llvm::ilist_iterator.66"* %retval, %"class.llvm::Instruction"* %call)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Instruction"** %coerce.dive
  ret %"class.llvm::Instruction"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.55"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.55"*, align 8
  store %"class.llvm::iplist.55"* %this, %"class.llvm::iplist.55"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.55"** %this.addr
  %0 = bitcast %"class.llvm::iplist.55"* %this1 to %"struct.llvm::ilist_traits.56"*
  %Head = getelementptr inbounds %"class.llvm::iplist.55"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::Instruction"** %Head, align 8
  %call = call %"class.llvm::Instruction"* @_ZNK4llvm12ilist_traitsINS_11InstructionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.56"* %0, %"class.llvm::Instruction"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm14ilist_iteratorINS_11InstructionEEC2EPS1_(%"class.llvm::ilist_iterator.66"* %this, %"class.llvm::Instruction"* %NP) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.66"*, align 8
  %NP.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::ilist_iterator.66"* %this, %"class.llvm::ilist_iterator.66"** %this.addr, align 8
  store %"class.llvm::Instruction"* %NP, %"class.llvm::Instruction"** %NP.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.66"** %this.addr
  %0 = bitcast %"class.llvm::ilist_iterator.66"* %this1 to %"struct.std::iterator.67"*
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.66"* %this1, i32 0, i32 0
  %1 = load %"class.llvm::Instruction"** %NP.addr, align 8
  store %"class.llvm::Instruction"* %1, %"class.llvm::Instruction"** %NodePtr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.55"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.55"*, align 8
  store %"class.llvm::iplist.55"* %this, %"class.llvm::iplist.55"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.55"** %this.addr
  %0 = bitcast %"class.llvm::iplist.55"* %this1 to %"struct.llvm::ilist_traits.56"*
  %Head = getelementptr inbounds %"class.llvm::iplist.55"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::Instruction"** %Head, align 8
  %call = call %"class.llvm::Instruction"* @_ZNK4llvm12ilist_traitsINS_11InstructionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.56"* %0, %"class.llvm::Instruction"* %1)
  ret %"class.llvm::Instruction"* %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZNK4llvm12ilist_traitsINS_11InstructionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.56"* %this, %"class.llvm::Instruction"*) #0 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.56"*, align 8
  %.addr = alloca %"class.llvm::Instruction"*, align 8
  store %"struct.llvm::ilist_traits.56"* %this, %"struct.llvm::ilist_traits.56"** %this.addr, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.56"** %this.addr
  %call = call %"class.llvm::Instruction"* @_ZNK4llvm12ilist_traitsINS_11InstructionEE14createSentinelEv(%"struct.llvm::ilist_traits.56"* %this1)
  ret %"class.llvm::Instruction"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZNK4llvm12ilist_traitsINS_11InstructionEE14createSentinelEv(%"struct.llvm::ilist_traits.56"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.56"*, align 8
  store %"struct.llvm::ilist_traits.56"* %this, %"struct.llvm::ilist_traits.56"** %this.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.56"** %this.addr
  %Sentinel = getelementptr inbounds %"struct.llvm::ilist_traits.56"* %this1, i32 0, i32 0
  %0 = icmp eq %"class.llvm::ilist_half_node.62"* %Sentinel, null
  br i1 %0, label %cast.null, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %1 = bitcast %"class.llvm::ilist_half_node.62"* %Sentinel to i8*
  %sub.ptr = getelementptr i8* %1, i64 -56
  %2 = bitcast i8* %sub.ptr to %"class.llvm::Instruction"*
  br label %cast.end

cast.null:                                        ; preds = %entry
  br label %cast.end

cast.end:                                         ; preds = %cast.null, %cast.notnull
  %3 = phi %"class.llvm::Instruction"* [ %2, %cast.notnull ], [ null, %cast.null ]
  ret %"class.llvm::Instruction"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Instruction"* @_ZN4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.55"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.66", align 8
  %this.addr = alloca %"class.llvm::iplist.55"*, align 8
  store %"class.llvm::iplist.55"* %this, %"class.llvm::iplist.55"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.55"** %this.addr
  call void @_ZNK4llvm6iplistINS_11InstructionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.55"* %this1)
  %Head = getelementptr inbounds %"class.llvm::iplist.55"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Instruction"** %Head, align 8
  call void @_ZN4llvm14ilist_iteratorINS_11InstructionEEC2EPS1_(%"class.llvm::ilist_iterator.66"* %retval, %"class.llvm::Instruction"* %0)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.66"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Instruction"** %coerce.dive
  ret %"class.llvm::Instruction"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_10BasicBlockEEdeEv(%"class.llvm::ilist_iterator.64"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  store %"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.64"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %NodePtr, align 8
  ret %"class.llvm::BasicBlock"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.37"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.64", align 8
  %this.addr = alloca %"class.llvm::iplist.37"*, align 8
  store %"class.llvm::iplist.37"* %this, %"class.llvm::iplist.37"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.37"** %this.addr
  call void @_ZNK4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.37"* %this1)
  %call = call %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.37"* %this1)
  call void @_ZN4llvm14ilist_iteratorINS_10BasicBlockEEC2EPS1_(%"class.llvm::ilist_iterator.64"* %retval, %"class.llvm::BasicBlock"* %call)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::BasicBlock"** %coerce.dive
  ret %"class.llvm::BasicBlock"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.37"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.37"*, align 8
  store %"class.llvm::iplist.37"* %this, %"class.llvm::iplist.37"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.37"** %this.addr
  %0 = bitcast %"class.llvm::iplist.37"* %this1 to %"struct.llvm::ilist_traits.38"*
  %Head = getelementptr inbounds %"class.llvm::iplist.37"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::BasicBlock"** %Head, align 8
  %call = call %"class.llvm::BasicBlock"* @_ZNK4llvm12ilist_traitsINS_10BasicBlockEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.38"* %0, %"class.llvm::BasicBlock"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm14ilist_iteratorINS_10BasicBlockEEC2EPS1_(%"class.llvm::ilist_iterator.64"* %this, %"class.llvm::BasicBlock"* %NP) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator.64"*, align 8
  %NP.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::ilist_iterator.64"* %this, %"class.llvm::ilist_iterator.64"** %this.addr, align 8
  store %"class.llvm::BasicBlock"* %NP, %"class.llvm::BasicBlock"** %NP.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator.64"** %this.addr
  %0 = bitcast %"class.llvm::ilist_iterator.64"* %this1 to %"struct.std::iterator.65"*
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator.64"* %this1, i32 0, i32 0
  %1 = load %"class.llvm::BasicBlock"** %NP.addr, align 8
  store %"class.llvm::BasicBlock"* %1, %"class.llvm::BasicBlock"** %NodePtr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.37"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.37"*, align 8
  store %"class.llvm::iplist.37"* %this, %"class.llvm::iplist.37"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.37"** %this.addr
  %0 = bitcast %"class.llvm::iplist.37"* %this1 to %"struct.llvm::ilist_traits.38"*
  %Head = getelementptr inbounds %"class.llvm::iplist.37"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::BasicBlock"** %Head, align 8
  %call = call %"class.llvm::BasicBlock"* @_ZNK4llvm12ilist_traitsINS_10BasicBlockEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.38"* %0, %"class.llvm::BasicBlock"* %1)
  ret %"class.llvm::BasicBlock"* %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZNK4llvm12ilist_traitsINS_10BasicBlockEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.38"* %this, %"class.llvm::BasicBlock"*) #0 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.38"*, align 8
  %.addr = alloca %"class.llvm::BasicBlock"*, align 8
  store %"struct.llvm::ilist_traits.38"* %this, %"struct.llvm::ilist_traits.38"** %this.addr, align 8
  store %"class.llvm::BasicBlock"* %0, %"class.llvm::BasicBlock"** %.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.38"** %this.addr
  %call = call %"class.llvm::BasicBlock"* @_ZNK4llvm12ilist_traitsINS_10BasicBlockEE14createSentinelEv(%"struct.llvm::ilist_traits.38"* %this1)
  ret %"class.llvm::BasicBlock"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZNK4llvm12ilist_traitsINS_10BasicBlockEE14createSentinelEv(%"struct.llvm::ilist_traits.38"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.38"*, align 8
  store %"struct.llvm::ilist_traits.38"* %this, %"struct.llvm::ilist_traits.38"** %this.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.38"** %this.addr
  %Sentinel = getelementptr inbounds %"struct.llvm::ilist_traits.38"* %this1, i32 0, i32 0
  %0 = icmp eq %"class.llvm::ilist_half_node.44"* %Sentinel, null
  br i1 %0, label %cast.null, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %1 = bitcast %"class.llvm::ilist_half_node.44"* %Sentinel to i8*
  %sub.ptr = getelementptr i8* %1, i64 -40
  %2 = bitcast i8* %sub.ptr to %"class.llvm::BasicBlock"*
  br label %cast.end

cast.null:                                        ; preds = %entry
  br label %cast.end

cast.end:                                         ; preds = %cast.null, %cast.notnull
  %3 = phi %"class.llvm::BasicBlock"* [ %2, %cast.notnull ], [ null, %cast.null ]
  ret %"class.llvm::BasicBlock"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::BasicBlock"* @_ZN4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.37"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator.64", align 8
  %this.addr = alloca %"class.llvm::iplist.37"*, align 8
  store %"class.llvm::iplist.37"* %this, %"class.llvm::iplist.37"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.37"** %this.addr
  call void @_ZNK4llvm6iplistINS_10BasicBlockENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.37"* %this1)
  %Head = getelementptr inbounds %"class.llvm::iplist.37"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::BasicBlock"** %Head, align 8
  call void @_ZN4llvm14ilist_iteratorINS_10BasicBlockEEC2EPS1_(%"class.llvm::ilist_iterator.64"* %retval, %"class.llvm::BasicBlock"* %0)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator.64"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::BasicBlock"** %coerce.dive
  ret %"class.llvm::BasicBlock"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Function"* @_ZNK4llvm14ilist_iteratorINS_8FunctionEEdeEv(%"class.llvm::ilist_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %NodePtr, align 8
  ret %"class.llvm::Function"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE3endEv(%"class.llvm::iplist.11"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::iplist.11"*, align 8
  store %"class.llvm::iplist.11"* %this, %"class.llvm::iplist.11"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.11"** %this.addr
  call void @_ZNK4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.11"* %this1)
  %call = call %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.11"* %this1)
  call void @_ZN4llvm14ilist_iteratorINS_8FunctionEEC2EPS1_(%"class.llvm::ilist_iterator"* %retval, %"class.llvm::Function"* %call)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %0 = load %"class.llvm::Function"** %coerce.dive
  ret %"class.llvm::Function"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.11"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.11"*, align 8
  store %"class.llvm::iplist.11"* %this, %"class.llvm::iplist.11"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.11"** %this.addr
  %0 = bitcast %"class.llvm::iplist.11"* %this1 to %"struct.llvm::ilist_traits.12"*
  %Head = getelementptr inbounds %"class.llvm::iplist.11"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::Function"** %Head, align 8
  %call = call %"class.llvm::Function"* @_ZNK4llvm12ilist_traitsINS_8FunctionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.12"* %0, %"class.llvm::Function"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm14ilist_iteratorINS_8FunctionEEC2EPS1_(%"class.llvm::ilist_iterator"* %this, %"class.llvm::Function"* %NP) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::ilist_iterator"*, align 8
  %NP.addr = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::ilist_iterator"* %this, %"class.llvm::ilist_iterator"** %this.addr, align 8
  store %"class.llvm::Function"* %NP, %"class.llvm::Function"** %NP.addr, align 8
  %this1 = load %"class.llvm::ilist_iterator"** %this.addr
  %0 = bitcast %"class.llvm::ilist_iterator"* %this1 to %"struct.std::iterator"*
  %NodePtr = getelementptr inbounds %"class.llvm::ilist_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.llvm::Function"** %NP.addr, align 8
  store %"class.llvm::Function"* %1, %"class.llvm::Function"** %NodePtr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE7getTailEv(%"class.llvm::iplist.11"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.llvm::iplist.11"*, align 8
  store %"class.llvm::iplist.11"* %this, %"class.llvm::iplist.11"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.11"** %this.addr
  %0 = bitcast %"class.llvm::iplist.11"* %this1 to %"struct.llvm::ilist_traits.12"*
  %Head = getelementptr inbounds %"class.llvm::iplist.11"* %this1, i32 0, i32 1
  %1 = load %"class.llvm::Function"** %Head, align 8
  %call = call %"class.llvm::Function"* @_ZNK4llvm12ilist_traitsINS_8FunctionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.12"* %0, %"class.llvm::Function"* %1)
  ret %"class.llvm::Function"* %call
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZNK4llvm12ilist_traitsINS_8FunctionEE10ensureHeadEPS1_(%"struct.llvm::ilist_traits.12"* %this, %"class.llvm::Function"*) #0 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.12"*, align 8
  %.addr = alloca %"class.llvm::Function"*, align 8
  store %"struct.llvm::ilist_traits.12"* %this, %"struct.llvm::ilist_traits.12"** %this.addr, align 8
  store %"class.llvm::Function"* %0, %"class.llvm::Function"** %.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.12"** %this.addr
  %call = call %"class.llvm::Function"* @_ZNK4llvm12ilist_traitsINS_8FunctionEE14createSentinelEv(%"struct.llvm::ilist_traits.12"* %this1)
  ret %"class.llvm::Function"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.llvm::Function"* @_ZNK4llvm12ilist_traitsINS_8FunctionEE14createSentinelEv(%"struct.llvm::ilist_traits.12"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.llvm::ilist_traits.12"*, align 8
  store %"struct.llvm::ilist_traits.12"* %this, %"struct.llvm::ilist_traits.12"** %this.addr, align 8
  %this1 = load %"struct.llvm::ilist_traits.12"** %this.addr
  %Sentinel = getelementptr inbounds %"struct.llvm::ilist_traits.12"* %this1, i32 0, i32 0
  %0 = icmp eq %"class.llvm::ilist_node.18"* %Sentinel, null
  br i1 %0, label %cast.null, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %1 = bitcast %"class.llvm::ilist_node.18"* %Sentinel to i8*
  %sub.ptr = getelementptr i8* %1, i64 -72
  %2 = bitcast i8* %sub.ptr to %"class.llvm::Function"*
  br label %cast.end

cast.null:                                        ; preds = %entry
  br label %cast.end

cast.end:                                         ; preds = %cast.null, %cast.notnull
  %3 = phi %"class.llvm::Function"* [ %2, %cast.notnull ], [ null, %cast.null ]
  ret %"class.llvm::Function"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"class.llvm::Function"* @_ZN4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE5beginEv(%"class.llvm::iplist.11"* %this) #0 align 2 {
entry:
  %retval = alloca %"class.llvm::ilist_iterator", align 8
  %this.addr = alloca %"class.llvm::iplist.11"*, align 8
  store %"class.llvm::iplist.11"* %this, %"class.llvm::iplist.11"** %this.addr, align 8
  %this1 = load %"class.llvm::iplist.11"** %this.addr
  call void @_ZNK4llvm6iplistINS_8FunctionENS_12ilist_traitsIS1_EEE18CreateLazySentinelEv(%"class.llvm::iplist.11"* %this1)
  %Head = getelementptr inbounds %"class.llvm::iplist.11"* %this1, i32 0, i32 1
  %0 = load %"class.llvm::Function"** %Head, align 8
  call void @_ZN4llvm14ilist_iteratorINS_8FunctionEEC2EPS1_(%"class.llvm::ilist_iterator"* %retval, %"class.llvm::Function"* %0)
  %coerce.dive = getelementptr %"class.llvm::ilist_iterator"* %retval, i32 0, i32 0
  %1 = load %"class.llvm::Function"** %coerce.dive
  ret %"class.llvm::Function"* %1
}

declare void @_ZN4llvm10ModulePassD2Ev(%"class.llvm::ModulePass"*) #3

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4llvm4PassC2ENS_8PassKindERc(%"class.llvm::Pass"* %this, i32 %K, i8* %pid) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.llvm::Pass"*, align 8
  %K.addr = alloca i32, align 4
  %pid.addr = alloca i8*, align 8
  store %"class.llvm::Pass"* %this, %"class.llvm::Pass"** %this.addr, align 8
  store i32 %K, i32* %K.addr, align 4
  store i8* %pid, i8** %pid.addr, align 8
  %this1 = load %"class.llvm::Pass"** %this.addr
  %0 = bitcast %"class.llvm::Pass"* %this1 to i8***
  store i8** getelementptr inbounds ([19 x i8*]* @_ZTVN4llvm4PassE, i64 0, i64 2), i8*** %0
  %Resolver = getelementptr inbounds %"class.llvm::Pass"* %this1, i32 0, i32 1
  store %"class.llvm::AnalysisResolver"* null, %"class.llvm::AnalysisResolver"** %Resolver, align 8
  %PassID = getelementptr inbounds %"class.llvm::Pass"* %this1, i32 0, i32 2
  %1 = load i8** %pid.addr, align 8
  store i8* %1, i8** %PassID, align 8
  %Kind = getelementptr inbounds %"class.llvm::Pass"* %this1, i32 0, i32 3
  %2 = load i32* %K.addr, align 4
  store i32 %2, i32* %Kind, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this1 to %"class.std::allocator.3"*
  call void @_ZNSaIPKN4llvm8PassInfoEEC2Ev(%"class.std::allocator.3"* %0) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPKN4llvm8PassInfoEEC2Ev(%"class.std::allocator.3"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %this, %"class.std::allocator.3"** %this.addr, align 8
  %this1 = load %"class.std::allocator.3"** %this.addr
  %0 = bitcast %"class.std::allocator.3"* %this1 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPKN4llvm8PassInfoEEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE11lower_boundERS3_(%"class.std::map"* %this, %"class.std::basic_string"* %__x) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::basic_string"* %__x, %"class.std::basic_string"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %_M_t, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE8key_compEv(%"class.std::map"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::map"*, align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8key_compEv(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %this, %"class.std::basic_string"* %__x, %"class.std::basic_string"* %__y) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca %"class.std::basic_string"*, align 8
  %__y.addr = alloca %"class.std::basic_string"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"class.std::basic_string"* %__x, %"class.std::basic_string"** %__x.addr, align 8
  store %"class.std::basic_string"* %__y, %"class.std::basic_string"** %__y.addr, align 8
  %this1 = load %"struct.std::less"** %this.addr
  %0 = load %"class.std::basic_string"** %__x.addr, align 8
  %1 = load %"class.std::basic_string"** %__y.addr, align 8
  %call = call zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_(%"class.std::basic_string"* %0, %"class.std::basic_string"* %1)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair.68"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair.68"* %_M_value_field
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair.68"* %__x) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__x.addr = alloca %"struct.std::pair.68"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair.68"* %__x, %"struct.std::pair.68"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_iterator"* %__position)
  %0 = load %"struct.std::pair.68"** %__x.addr, align 8
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::pair.68"* %0)
  %coerce.dive3 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive3
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair.68"* %this, %"class.std::basic_string"* %__a, i32* %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.68"*, align 8
  %__a.addr = alloca %"class.std::basic_string"*, align 8
  %__b.addr = alloca i32*, align 8
  store %"struct.std::pair.68"* %this, %"struct.std::pair.68"** %this.addr, align 8
  store %"class.std::basic_string"* %__a, %"class.std::basic_string"** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %this1 = load %"struct.std::pair.68"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.68"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__a.addr, align 8
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %0)
  %second = getelementptr inbounds %"struct.std::pair.68"* %this1, i32 0, i32 1
  %1 = load i32** %__b.addr, align 8
  %2 = load i32* %1, align 4
  store i32 %2, i32* %second, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair.68"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.68"*, align 8
  store %"struct.std::pair.68"* %this, %"struct.std::pair.68"** %this.addr, align 8
  %this1 = load %"struct.std::pair.68"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.68"* %this1, i32 0, i32 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %first)
  ret void
}

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #3

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair.68"* %__v) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__v.addr = alloca %"struct.std::pair.68"*, align 8
  %__res = alloca %"struct.std::pair.69", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair.68"* %__v, %"struct.std::pair.68"** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load %"struct.std::pair.68"** %__v.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair.68"* %2)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, %"class.std::basic_string"* %call)
  %4 = bitcast %"struct.std::pair.69"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 1
  %7 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 1
  %second = getelementptr inbounds %"struct.std::pair.69"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair.69"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair.69"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load %"struct.std::pair.68"** %__v.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::pair.68"* %12)
  %coerce.dive6 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6
  br label %return

if.end:                                           ; preds = %entry
  %first7 = getelementptr inbounds %"struct.std::pair.69"* %__res, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %first7, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node_base"* %13 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive8 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %retval = alloca %"struct.std::pair.69", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp55 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp78 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %1 = bitcast %"struct.std::_Rb_tree_node"* %call3 to %"struct.std::_Rb_tree_node_base"*
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %1
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4sizeEv(%"class.std::_Rb_tree"* %this1)
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %call6 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %2 = load %"struct.std::_Rb_tree_node_base"** %call6
  %call7 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load %"class.std::basic_string"** %__k.addr, align 8
  %call8 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call7, %"class.std::basic_string"* %3)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp
  %call10 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp, %"struct.std::_Rb_tree_node_base"** %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %4)
  %5 = bitcast %"struct.std::pair.69"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 1
  %8 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 1
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl13, i32 0, i32 0
  %10 = load %"class.std::basic_string"** %__k.addr, align 8
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %11)
  %call17 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare14, %"class.std::basic_string"* %10, %"class.std::basic_string"* %call16)
  br i1 %call17, label %if.then18, label %if.else44

if.then18:                                        ; preds = %if.else12
  %12 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %13 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %15 = load %"struct.std::_Rb_tree_node_base"** %call20
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %14, %15
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %call24 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %call23, %"struct.std::_Rb_tree_node_base"** %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl26, i32 0, i32 0
  %call28 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__before)
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %call28, i32 0, i32 0
  %16 = load %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %16)
  %17 = load %"class.std::basic_string"** %__k.addr, align 8
  %call31 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare27, %"class.std::basic_string"* %call30, %"class.std::basic_string"* %17)
  br i1 %call31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %18)
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, %"struct.std::_Rb_tree_node_base"** %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node40, %"struct.std::_Rb_tree_node_base"** %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %19 = load %"class.std::basic_string"** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %19)
  %20 = bitcast %"struct.std::pair.69"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %21 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 0
  %22 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %21, align 1
  %23 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 1
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 1
  br label %return

if.else44:                                        ; preds = %if.else12
  %_M_impl45 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare46 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl45, i32 0, i32 0
  %_M_node47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"** %_M_node47, align 8
  %call48 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25)
  %26 = load %"class.std::basic_string"** %__k.addr, align 8
  %call49 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare46, %"class.std::basic_string"* %call48, %"class.std::basic_string"* %26)
  br i1 %call49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.else44
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %28 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %_M_node51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %29 = load %"struct.std::_Rb_tree_node_base"** %_M_node51, align 8
  %call52 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %30 = load %"struct.std::_Rb_tree_node_base"** %call52
  %cmp53 = icmp eq %"struct.std::_Rb_tree_node_base"* %29, %30
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then50
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp55
  %call56 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, %"struct.std::_Rb_tree_node_base"** %call56)
  br label %return

if.else57:                                        ; preds = %if.then50
  %_M_impl58 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare59 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl58, i32 0, i32 0
  %31 = load %"class.std::basic_string"** %__k.addr, align 8
  %call60 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %__after)
  %_M_node61 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %call60, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"** %_M_node61, align 8
  %call62 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %call63 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare59, %"class.std::basic_string"* %31, %"class.std::basic_string"* %call62)
  br i1 %call63, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.else57
  %_M_node65 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"** %_M_node65, align 8
  %call66 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33)
  %cmp67 = icmp eq %"struct.std::_Rb_tree_node"* %call66, null
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then64
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69
  %_M_node70 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, %"struct.std::_Rb_tree_node_base"** %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node72, %"struct.std::_Rb_tree_node_base"** %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %34 = load %"class.std::basic_string"** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %34)
  %35 = bitcast %"struct.std::pair.69"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 0
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %36, align 1
  %38 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 1
  %39 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 1
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %38, align 1
  br label %return

if.else76:                                        ; preds = %if.else44
  %_M_node77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp78
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node77, %"struct.std::_Rb_tree_node_base"** %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %40 = bitcast %"struct.std::pair.69"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %41 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %40, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %41
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %this, %"struct.std::pair.68"* %__x) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Select1st"*, align 8
  %__x.addr = alloca %"struct.std::pair.68"*, align 8
  store %"struct.std::_Select1st"* %this, %"struct.std::_Select1st"** %this.addr, align 8
  store %"struct.std::pair.68"* %__x, %"struct.std::pair.68"** %__x.addr, align 8
  %this1 = load %"struct.std::_Select1st"** %this.addr
  %0 = load %"struct.std::pair.68"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.68"* %0, i32 0, i32 0
  ret %"class.std::basic_string"* %first
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::pair.68"* %__v) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca %"struct.std::pair.68"*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"struct.std::_Select1st", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store %"struct.std::pair.68"* %__v, %"struct.std::pair.68"** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %2 = bitcast %"struct.std::_Rb_tree_node"* %call to %"struct.std::_Rb_tree_node_base"*
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %3 = load %"struct.std::pair.68"** %__v.addr, align 8
  %call3 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair.68"* %3)
  %4 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call3, %"class.std::basic_string"* %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::pair.68"** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::pair.68"* %6)
  store %"struct.std::_Rb_tree_node"* %call7, %"struct.std::_Rb_tree_node"** %__z, align 8
  %7 = load i8* %__insert_left, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl8, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %_M_header) #2
  %_M_impl9 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl9, i32 0, i32 2
  %11 = load i64* %_M_node_count, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %12 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %12)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node"* %0 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call %"struct.std::pair.68"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair.68"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::pair.68"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::pair.68"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.70", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair.68"* %__x, %"struct.std::pair.68"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.70"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"class.std::allocator.70"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.71"*
  %1 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call4 = invoke %"struct.std::pair.68"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair.68"* %_M_value_field)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load %"struct.std::pair.68"** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.71"* %0, %"struct.std::pair.68"* %call4, %"struct.std::pair.68"* %2)
          to label %invoke.cont5 unwind label %lpad2

invoke.cont5:                                     ; preds = %invoke.cont3
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.70"* %temp.lvalue) #2
  br label %try.cont

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  br label %catch

lpad2:                                            ; preds = %invoke.cont3, %invoke.cont
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.70"* %temp.lvalue) #2
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8** %exn.slot
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %10 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %10)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad6

lpad6:                                            ; preds = %invoke.cont7, %catch
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %lpad6
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont5
  %14 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %14

eh.resume:                                        ; preds = %invoke.cont8
  %exn9 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn9, 0
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val10

terminate.lpad:                                   ; preds = %lpad6
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #12
  unreachable

unreachable:                                      ; preds = %invoke.cont7
  unreachable
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #9

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 1, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.70"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.70"* %agg.result, %"class.std::allocator"* %call) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.71"* %this, %"struct.std::pair.68"* %__p, %"struct.std::pair.68"* %__val) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.71"*, align 8
  %__p.addr = alloca %"struct.std::pair.68"*, align 8
  %__val.addr = alloca %"struct.std::pair.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.71"* %this, %"class.__gnu_cxx::new_allocator.71"** %this.addr, align 8
  store %"struct.std::pair.68"* %__p, %"struct.std::pair.68"** %__p.addr, align 8
  store %"struct.std::pair.68"* %__val, %"struct.std::pair.68"** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.71"** %this.addr
  %0 = load %"struct.std::pair.68"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair.68"* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"struct.std::pair.68"*
  %3 = load %"struct.std::pair.68"** %__val.addr, align 8
  call void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair.68"* %2, %"struct.std::pair.68"* %3)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %4 = phi %"struct.std::pair.68"* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair.68"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair.68"* %__r) #6 {
entry:
  %__r.addr = alloca %"struct.std::pair.68"*, align 8
  store %"struct.std::pair.68"* %__r, %"struct.std::pair.68"** %__r.addr, align 8
  %0 = load %"struct.std::pair.68"** %__r.addr, align 8
  %1 = bitcast %"struct.std::pair.68"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair.68"*
  ret %"struct.std::pair.68"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.70"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.70"*, align 8
  store %"class.std::allocator.70"* %this, %"class.std::allocator.70"** %this.addr, align 8
  %this1 = load %"class.std::allocator.70"** %this.addr
  %0 = bitcast %"class.std::allocator.70"* %this1 to %"class.__gnu_cxx::new_allocator.71"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.71"* %0) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::_Rb_tree_node"* %2, i64 1)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.71"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.71"*, align 8
  store %"class.__gnu_cxx::new_allocator.71"* %this, %"class.__gnu_cxx::new_allocator.71"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.71"** %this.addr
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair.68"* %this, %"struct.std::pair.68"*) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.68"*, align 8
  %.addr = alloca %"struct.std::pair.68"*, align 8
  store %"struct.std::pair.68"* %this, %"struct.std::pair.68"** %this.addr, align 8
  store %"struct.std::pair.68"* %0, %"struct.std::pair.68"** %.addr, align 8
  %this1 = load %"struct.std::pair.68"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.68"* %this1, i32 0, i32 0
  %1 = load %"struct.std::pair.68"** %.addr, align 8
  %first2 = getelementptr inbounds %"struct.std::pair.68"* %1, i32 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %first2)
  %second = getelementptr inbounds %"struct.std::pair.68"* %this1, i32 0, i32 1
  %2 = load %"struct.std::pair.68"** %.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::pair.68"* %2, i32 0, i32 1
  %3 = load i32* %second3, align 4
  store i32 %3, i32* %second, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.70"* %this, %"class.std::allocator"*) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.70"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.70"* %this, %"class.std::allocator.70"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.70"** %this.addr
  %1 = bitcast %"class.std::allocator.70"* %this1 to %"class.__gnu_cxx::new_allocator.71"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.71"* %1) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.71"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.71"*, align 8
  store %"class.__gnu_cxx::new_allocator.71"* %this, %"class.__gnu_cxx::new_allocator.71"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.71"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 48
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 384307168202282325
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair.68"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair.68"* %_M_value_field
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4sizeEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 2
  %0 = load i64* %_M_node_count, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %_M_right
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %this, %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"** %__b) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.69"*, align 8
  %__a.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__b.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.69"* %this, %"struct.std::pair.69"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %this1 = load %"struct.std::pair.69"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.69"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node_base"** %0, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.69"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %retval = alloca %"struct.std::pair.69", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp12 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp20 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp21 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp24 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %__y, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %2 = load %"class.std::basic_string"** %__k.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %3)
  %call4 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %2, %"class.std::basic_string"* %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %4 = load i8* %__comp, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %6)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node"* %9)
  %10 = load i8* %__comp, align 1
  %tobool7 = trunc i8 %10 to i1
  br i1 %tobool7, label %if.then, label %if.end14

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %11 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %ref.tmp11
  %13 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %ref.tmp12
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp11, %"struct.std::_Rb_tree_node_base"** %ref.tmp12)
  br label %return

if.else:                                          ; preds = %if.then
  %call13 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__j)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.end
  %_M_impl15 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare16 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl15, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call17 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15)
  %16 = load %"class.std::basic_string"** %__k.addr, align 8
  %call18 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare16, %"class.std::basic_string"* %call17, %"class.std::basic_string"* %16)
  br i1 %call18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %18 = bitcast %"struct.std::_Rb_tree_node"* %17 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %ref.tmp20
  %19 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %ref.tmp21
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, %"struct.std::_Rb_tree_node_base"** %ref.tmp21)
  br label %return

if.end22:                                         ; preds = %if.end14
  %_M_node23 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp24
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.69"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node23, %"struct.std::_Rb_tree_node_base"** %ref.tmp24)
  br label %return

return:                                           ; preds = %if.end22, %if.then19, %if.then10
  %21 = bitcast %"struct.std::pair.69"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %22 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %21, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %_M_left
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #16
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #16
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #11

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #11

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %__x) #0 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"struct.std::pair.68"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair.68"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %1)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair.68"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %__x) #5 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %0, i32 0, i32 1
  ret %"struct.std::pair.68"* %_M_value_field
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_(%"class.std::basic_string"* %__lhs, %"class.std::basic_string"* %__rhs) #1 {
entry:
  %__lhs.addr = alloca %"class.std::basic_string"*, align 8
  %__rhs.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %__lhs, %"class.std::basic_string"** %__lhs.addr, align 8
  store %"class.std::basic_string"* %__rhs, %"class.std::basic_string"** %__rhs.addr, align 8
  %0 = load %"class.std::basic_string"** %__lhs.addr, align 8
  %1 = load %"class.std::basic_string"** %__rhs.addr, align 8
  %call = call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %0, %"class.std::basic_string"* %1)
  %cmp = icmp slt i32 %call, 0
  ret i1 %cmp
}

declare i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #3

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8key_compEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE3endEv(%"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"class.std::basic_string"** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"* %call2, %"class.std::basic_string"* %0)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__k.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  store %"class.std::basic_string"* %__k, %"class.std::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %1)
  %2 = load %"class.std::basic_string"** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call, %"class.std::basic_string"* %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5)
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node"* %8)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.std::allocator"* %0) #2
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  %5 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %5) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 0
  store i32 0, i32* %_M_color, align 4
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header4, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header3, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header6 = getelementptr inbounds %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %_M_header6, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header5, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl) #2
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  %_M_impl3 = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl3) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5)
  %6 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %0) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.70", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  call void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.70"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"class.std::allocator.70"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.71"*
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call = invoke %"struct.std::pair.68"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair.68"* %_M_value_field)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.71"* %0, %"struct.std::pair.68"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.70"* %temp.lvalue) #2
  %2 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %2)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.70"* %temp.lvalue) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.71"* %this, %"struct.std::pair.68"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.71"*, align 8
  %__p.addr = alloca %"struct.std::pair.68"*, align 8
  store %"class.__gnu_cxx::new_allocator.71"* %this, %"class.__gnu_cxx::new_allocator.71"** %this.addr, align 8
  store %"struct.std::pair.68"* %__p, %"struct.std::pair.68"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.71"** %this.addr
  %0 = load %"struct.std::pair.68"** %__p.addr, align 8
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair.68"* %0)
  ret void
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  ret void
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
