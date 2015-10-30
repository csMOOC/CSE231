; ModuleID = 'module.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator.0" = type { i8 }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair" = type { %"class.std::basic_string", i32 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair" }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair.3" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Select1st" = type { i8 }
%"class.std::allocator.4" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZN4llvmL9huge_valfE = internal constant float 0x7FF0000000000000, align 4
@mymap = global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external global i8
@.str = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"10%s\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"TOTAL\00", align 1
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
define void @_Z18collectRuntimeInfoPci(i8* %opname, i32 %count) #0 {
entry:
  %opname.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %_name = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %opname, i8** %opname.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i8** %opname.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %_name, i8* %0, %"class.std::allocator.0"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  %1 = load i32* %count.addr, align 4
  %call = invoke i32* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixERS3_(%"class.std::map"* @mymap, %"class.std::basic_string"* %_name)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %2 = load i32* %call
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %call
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %_name)
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #2
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %_name)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3, %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %lpad1
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #12
  unreachable
}

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator.0"*) #3

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) #4

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
  %ref.tmp8 = alloca %"struct.std::pair", align 8
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
  %call5 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %first = getelementptr inbounds %"struct.std::pair"* %call5, i32 0, i32 0
  %call6 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %undef.agg.tmp, %"class.std::basic_string"* %1, %"class.std::basic_string"* %first)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  store i32 0, i32* %ref.tmp9
  call void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair"* %ref.tmp8, %"class.std::basic_string"* %4, i32* %ref.tmp9)
  %coerce.dive10 = getelementptr %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive10
  %call11 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this1, %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::pair"* %ref.tmp8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %coerce.dive12 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call11, %"struct.std::_Rb_tree_node_base"** %coerce.dive12
  %6 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %ref.tmp8)
  br label %if.end

lpad:                                             ; preds = %if.then
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  invoke void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %ref.tmp8)
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont, %lor.lhs.false
  %call14 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %second = getelementptr inbounds %"struct.std::pair"* %call14, i32 0, i32 1
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

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #3

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #5 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define void @_Z8dumpInfov() #0 {
entry:
  %total = alloca i32, align 4
  %it = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  store i32 0, i32* %total, align 4
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5beginEv(%"class.std::map"* @mymap)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %it, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call1 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE3endEv(%"class.std::map"* @mymap)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call1, %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call3 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEneERKS3_(%"struct.std::_Rb_tree_iterator"* %it, %"struct.std::_Rb_tree_iterator"* %ref.tmp)
  br i1 %call3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %it)
  %first = getelementptr inbounds %"struct.std::pair"* %call4, i32 0, i32 0
  %call5 = call i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %first)
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* %call5)
  %call7 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %it)
  %second = getelementptr inbounds %"struct.std::pair"* %call7, i32 0, i32 1
  %0 = load i32* %second, align 4
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %0)
  %call9 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %it)
  %second10 = getelementptr inbounds %"struct.std::pair"* %call9, i32 0, i32 1
  %1 = load i32* %second10, align 4
  %2 = load i32* %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %it)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %3 = load i32* %total, align 4
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE5beginEv(%"class.std::map"* %this) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE5beginEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEneERKS3_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #6 align 2 {
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
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, %2
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

declare i32 @printf(i8*, ...) #3

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEptEv(%"struct.std::_Rb_tree_iterator"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call = call %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
  ret %"struct.std::pair"* %call
}

declare i8* @_ZNKSs5c_strEv(%"class.std::basic_string"*) #3

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %__r) #7 {
entry:
  %__r.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %__r, %"struct.std::pair"** %__r.addr, align 8
  %0 = load %"struct.std::pair"** %__r.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  ret %"struct.std::pair"* %2
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEC2EPSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #6 align 2 {
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
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEeqERKS3_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #6 align 2 {
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
define linkonce_odr %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsiEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_(%"class.std::map"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair"* %__x) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::map"** %this.addr
  %_M_t = getelementptr inbounds %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_iterator"* %__position)
  %0 = load %"struct.std::pair"** %__x.addr, align 8
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::pair"* %0)
  %coerce.dive3 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive3
  %coerce.dive4 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive4
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERS0_RKi(%"struct.std::pair"* %this, %"class.std::basic_string"* %__a, i32* %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__a.addr = alloca %"class.std::basic_string"*, align 8
  %__b.addr = alloca i32*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"class.std::basic_string"* %__a, %"class.std::basic_string"** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"** %__a.addr, align 8
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %0)
  %second = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 1
  %1 = load i32** %__b.addr, align 8
  %2 = load i32* %1, align 4
  store i32 %2, i32* %second, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %first)
  ret void
}

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #3

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair"* %__v) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__v.addr = alloca %"struct.std::pair"*, align 8
  %__res = alloca %"struct.std::pair.3", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %tmp = alloca %"struct.std::_Select1st", align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %coerce.dive = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive
  store %"struct.std::pair"* %__v, %"struct.std::pair"** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load %"struct.std::pair"** %__v.addr, align 8
  %call = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %2)
  %coerce.dive2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"** %coerce.dive2
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, %"class.std::basic_string"* %call)
  %4 = bitcast %"struct.std::pair.3"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 1
  %7 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 1
  %second = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load %"struct.std::pair"** %__v.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::pair"* %12)
  %coerce.dive6 = getelementptr %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6
  br label %return

if.end:                                           ; preds = %entry
  %first7 = getelementptr inbounds %"struct.std::pair.3"* %__res, i32 0, i32 0
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
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsiEEC2ERKSt17_Rb_tree_iteratorIS2_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #6 align 2 {
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
  %retval = alloca %"struct.std::pair.3", align 8
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp, %"struct.std::_Rb_tree_node_base"** %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load %"class.std::basic_string"** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %4)
  %5 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %call23, %"struct.std::_Rb_tree_node_base"** %call24)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, %"struct.std::_Rb_tree_node_base"** %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node40, %"struct.std::_Rb_tree_node_base"** %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %19 = load %"class.std::basic_string"** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %19)
  %20 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, %"struct.std::_Rb_tree_node_base"** %call56)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, %"struct.std::_Rb_tree_node_base"** %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node72, %"struct.std::_Rb_tree_node_base"** %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %34 = load %"class.std::basic_string"** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this1, %"class.std::basic_string"* %34)
  %35 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node77, %"struct.std::_Rb_tree_node_base"** %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %40 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %41 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %40, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %41
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %this, %"struct.std::pair"* %__x) #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Select1st"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Select1st"* %this, %"struct.std::_Select1st"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"struct.std::_Select1st"** %this.addr
  %0 = load %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair"* %0, i32 0, i32 0
  ret %"class.std::basic_string"* %first
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_EPSt18_Rb_tree_node_baseSA_RKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::pair"* %__v) #0 align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca %"struct.std::pair"*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"struct.std::_Select1st", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store %"struct.std::pair"* %__v, %"struct.std::pair"** %__v.addr, align 8
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
  %3 = load %"struct.std::pair"** %__v.addr, align 8
  %call3 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %3)
  %4 = load %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call %"class.std::basic_string"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessISsEclERKSsS2_(%"struct.std::less"* %_M_key_compare, %"class.std::basic_string"* %call3, %"class.std::basic_string"* %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::pair"** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this1, %"struct.std::pair"* %6)
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
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
  %call = call %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeERKS2_(%"class.std::_Rb_tree"* %this, %"struct.std::pair"* %__x) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call4 = invoke %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load %"struct.std::pair"** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.5"* %0, %"struct.std::pair"* %call4, %"struct.std::pair"* %2)
          to label %invoke.cont5 unwind label %lpad2

invoke.cont5:                                     ; preds = %invoke.cont3
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
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
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8** %exn.slot
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %10 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %10)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
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
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #4

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
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %call = call %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.4"* %agg.result, %"class.std::allocator"* %call) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::pair"* %__p, %"struct.std::pair"* %__val) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__val.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::pair"** %__val.addr, align 8
  call void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair"* %2, %"struct.std::pair"* %3)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %4 = phi %"struct.std::pair"* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #2
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #6 align 2 {
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #9

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt4pairIKSsiEC2ERKS1_(%"struct.std::pair"* %this, %"struct.std::pair"*) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %.addr, align 8
  %this1 = load %"struct.std::pair"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load %"struct.std::pair"** %.addr, align 8
  %first2 = getelementptr inbounds %"struct.std::pair"* %1, i32 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %first, %"class.std::basic_string"* %first2)
  %second = getelementptr inbounds %"struct.std::pair"* %this1, i32 0, i32 1
  %2 = load %"struct.std::pair"** %.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::pair"* %2, i32 0, i32 1
  %3 = load i32* %second3, align 4
  store i32 %3, i32* %second, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKSsiEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E(%"class.std::allocator.4"* %this, %"class.std::allocator"*) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.4"** %this.addr
  %1 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %1) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
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
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 48
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 384307168202282325
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #11

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #6 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
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
define linkonce_odr i64 @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4sizeEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %this, %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"** %__b) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.3"*, align 8
  %__a.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__b.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.3"* %this, %"struct.std::pair.3"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %this1 = load %"struct.std::pair.3"** %this.addr
  %first = getelementptr inbounds %"struct.std::pair.3"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node_base"** %0, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.3"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %__k) #0 align 2 {
entry:
  %retval = alloca %"struct.std::pair.3", align 8
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp11, %"struct.std::_Rb_tree_node_base"** %ref.tmp12)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, %"struct.std::_Rb_tree_node_base"** %ref.tmp21)
  br label %return

if.end22:                                         ; preds = %if.end14
  %_M_node23 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp24
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.3"* %retval, %"struct.std::_Rb_tree_node_base"** %_M_node23, %"struct.std::_Rb_tree_node_base"** %ref.tmp24)
  br label %return

return:                                           ; preds = %if.end22, %if.then19, %if.then10
  %21 = bitcast %"struct.std::pair.3"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %22 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %21, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKSsiEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"** %this.addr
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #6 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
  %call = call %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call %"class.std::basic_string"* @_ZNKSt10_Select1stISt4pairIKSsiEEclERKS2_(%"struct.std::_Select1st"* %tmp, %"struct.std::pair"* %call)
  ret %"class.std::basic_string"* %call1
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #6 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E(%"struct.std::_Rb_tree_node"* %__x) #6 align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %0, i32 0, i32 1
  ret %"struct.std::pair"* %_M_value_field
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
define linkonce_odr void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8key_compEv(%"class.std::_Rb_tree"* %this) #6 align 2 {
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
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #6 align 2 {
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
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) #6 align 2 {
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
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.std::allocator"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 align 2 {
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
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb0EED2Ev(%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl"* %this) unnamed_addr #7 align 2 {
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
  %temp.lvalue = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"** %this.addr
  call void @_ZNKSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13get_allocatorEv(%"class.std::allocator.4"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"class.std::allocator.4"* %temp.lvalue to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node"* %1, i32 0, i32 1
  %call = invoke %"struct.std::pair"* @_ZSt11__addressofISt4pairIKSsiEEPT_RS3_(%"struct.std::pair"* %_M_value_field)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.5"* %0, %"struct.std::pair"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
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
  call void @_ZNSaISt4pairIKSsiEED2Ev(%"class.std::allocator.4"* %temp.lvalue) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsiEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::pair"* %__p) #0 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::pair"** %__p.addr, align 8
  call void @_ZNSt4pairIKSsiED2Ev(%"struct.std::pair"* %0)
  ret void
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
