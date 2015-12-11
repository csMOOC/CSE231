; ModuleID = 'hadamard.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"out.dat\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"diff -w out.dat out.gold.dat\00", align 1
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [47 x i8] c"*********************************************\0A\00", align 1
@.str5 = private unnamed_addr constant [47 x i8] c"FAIL: Output DOES NOT match the golden output\0A\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c"*******************************************\0A\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c"PASS: The output matches the golden output!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fastWalshTransform(i16* %h_Output, i16* %h_Input, i16 zeroext %log2N) #0 {
entry:
  %h_Output.addr = alloca i16*, align 8
  %h_Input.addr = alloca i16*, align 8
  %log2N.addr = alloca i16, align 2
  %N = alloca i16, align 2
  %pos = alloca i16, align 2
  %stride = alloca i16, align 2
  %base = alloca i16, align 2
  %j = alloca i16, align 2
  %i0 = alloca i16, align 2
  %i1 = alloca i16, align 2
  %T1 = alloca i16, align 2
  %T2 = alloca i16, align 2
  store i16* %h_Output, i16** %h_Output.addr, align 8
  store i16* %h_Input, i16** %h_Input.addr, align 8
  store i16 %log2N, i16* %log2N.addr, align 2
  %0 = load i16* %log2N.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 1, %conv
  %conv1 = trunc i32 %shl to i16
  store i16 %conv1, i16* %N, align 2
  store i16 0, i16* %pos, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16* %pos, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i16* %N, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv2, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16* %pos, align 2
  %idxprom = zext i16 %3 to i64
  %4 = load i16** %h_Input.addr, align 8
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom
  %5 = load i16* %arrayidx, align 2
  %6 = load i16* %pos, align 2
  %idxprom5 = zext i16 %6 to i64
  %7 = load i16** %h_Output.addr, align 8
  %arrayidx6 = getelementptr inbounds i16* %7, i64 %idxprom5
  store i16 %5, i16* %arrayidx6, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i16* %pos, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %pos, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16* %N, align 2
  %conv7 = zext i16 %9 to i32
  %shr = ashr i32 %conv7, 1
  %conv8 = trunc i32 %shr to i16
  store i16 %conv8, i16* %stride, align 2
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc61, %for.end
  %10 = load i16* %stride, align 2
  %conv10 = zext i16 %10 to i32
  %cmp11 = icmp sge i32 %conv10, 1
  br i1 %cmp11, label %for.body13, label %for.end65

for.body13:                                       ; preds = %for.cond9
  store i16 0, i16* %base, align 2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc54, %for.body13
  %11 = load i16* %base, align 2
  %conv15 = zext i16 %11 to i32
  %12 = load i16* %N, align 2
  %conv16 = zext i16 %12 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %for.body19, label %for.end60

for.body19:                                       ; preds = %for.cond14
  store i16 0, i16* %j, align 2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc51, %for.body19
  %13 = load i16* %j, align 2
  %conv21 = zext i16 %13 to i32
  %14 = load i16* %stride, align 2
  %conv22 = zext i16 %14 to i32
  %cmp23 = icmp slt i32 %conv21, %conv22
  br i1 %cmp23, label %for.body25, label %for.end53

for.body25:                                       ; preds = %for.cond20
  %15 = load i16* %base, align 2
  %conv26 = zext i16 %15 to i32
  %16 = load i16* %j, align 2
  %conv27 = zext i16 %16 to i32
  %add = add nsw i32 %conv26, %conv27
  %add28 = add nsw i32 %add, 0
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, i16* %i0, align 2
  %17 = load i16* %base, align 2
  %conv30 = zext i16 %17 to i32
  %18 = load i16* %j, align 2
  %conv31 = zext i16 %18 to i32
  %add32 = add nsw i32 %conv30, %conv31
  %19 = load i16* %stride, align 2
  %conv33 = zext i16 %19 to i32
  %add34 = add nsw i32 %add32, %conv33
  %conv35 = trunc i32 %add34 to i16
  store i16 %conv35, i16* %i1, align 2
  %20 = load i16* %i0, align 2
  %idxprom36 = zext i16 %20 to i64
  %21 = load i16** %h_Output.addr, align 8
  %arrayidx37 = getelementptr inbounds i16* %21, i64 %idxprom36
  %22 = load i16* %arrayidx37, align 2
  store i16 %22, i16* %T1, align 2
  %23 = load i16* %i1, align 2
  %idxprom38 = zext i16 %23 to i64
  %24 = load i16** %h_Output.addr, align 8
  %arrayidx39 = getelementptr inbounds i16* %24, i64 %idxprom38
  %25 = load i16* %arrayidx39, align 2
  store i16 %25, i16* %T2, align 2
  %26 = load i16* %T1, align 2
  %conv40 = zext i16 %26 to i32
  %27 = load i16* %T2, align 2
  %conv41 = zext i16 %27 to i32
  %sub = sub nsw i32 %conv40, %conv41
  %conv42 = trunc i32 %sub to i16
  %28 = load i16* %i1, align 2
  %idxprom43 = zext i16 %28 to i64
  %29 = load i16** %h_Output.addr, align 8
  %arrayidx44 = getelementptr inbounds i16* %29, i64 %idxprom43
  store i16 %conv42, i16* %arrayidx44, align 2
  %30 = load i16* %T1, align 2
  %conv45 = zext i16 %30 to i32
  %31 = load i16* %T2, align 2
  %conv46 = zext i16 %31 to i32
  %add47 = add nsw i32 %conv45, %conv46
  %conv48 = trunc i32 %add47 to i16
  %32 = load i16* %i0, align 2
  %idxprom49 = zext i16 %32 to i64
  %33 = load i16** %h_Output.addr, align 8
  %arrayidx50 = getelementptr inbounds i16* %33, i64 %idxprom49
  store i16 %conv48, i16* %arrayidx50, align 2
  br label %for.inc51

for.inc51:                                        ; preds = %for.body25
  %34 = load i16* %j, align 2
  %inc52 = add i16 %34, 1
  store i16 %inc52, i16* %j, align 2
  br label %for.cond20

for.end53:                                        ; preds = %for.cond20
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %35 = load i16* %stride, align 2
  %conv55 = zext i16 %35 to i32
  %shl56 = shl i32 %conv55, 1
  %36 = load i16* %base, align 2
  %conv57 = zext i16 %36 to i32
  %add58 = add nsw i32 %conv57, %shl56
  %conv59 = trunc i32 %add58 to i16
  store i16 %conv59, i16* %base, align 2
  br label %for.cond14

for.end60:                                        ; preds = %for.cond14
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %37 = load i16* %stride, align 2
  %conv62 = zext i16 %37 to i32
  %shr63 = ashr i32 %conv62, 1
  %conv64 = trunc i32 %shr63 to i16
  store i16 %conv64, i16* %stride, align 2
  br label %for.cond9

for.end65:                                        ; preds = %for.cond9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %input = alloca [128 x i16], align 16
  %i = alloca i32, align 4
  %output = alloca [128 x i16], align 16
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i16]* %input, i32 0, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i16]* %output, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [128 x i16]* %input, i32 0, i32 0
  %call2 = call i32 @fastWalshTransform(i16* %arraydecay, i16* %arraydecay1, i16 zeroext 7)
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %4 = load i32* %j, align 4
  %cmp4 = icmp slt i32 %4, 128
  br i1 %cmp4, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond3
  %5 = load %struct._IO_FILE** %fp, align 8
  %6 = load i32* %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [128 x i16]* %output, i32 0, i64 %idxprom7
  %7 = load i16* %arrayidx8, align 2
  %conv9 = zext i16 %7 to i32
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32 %conv9)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6
  %8 = load i32* %j, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond3

for.end13:                                        ; preds = %for.cond3
  %9 = load %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %9)
  %call15 = call i32 @system(i8* getelementptr inbounds ([29 x i8]* @.str3, i32 0, i32 0))
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end13
  %10 = load %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8]* @.str4, i32 0, i32 0))
  %11 = load %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8]* @.str5, i32 0, i32 0))
  %12 = load %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8]* @.str4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end13
  %13 = load %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0))
  %14 = load %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([45 x i8]* @.str7, i32 0, i32 0))
  %15 = load %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i32* %retval
  ret i32 %16
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @system(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
