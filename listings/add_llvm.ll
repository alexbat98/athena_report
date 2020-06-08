; ModuleID = 'cloned module buffer'
source_filename = "LLVMDialectModule"

@fadd = private global [4 x i8] c"fadd"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @ath_allocate(i8*, i8*, { i64, i32, i64, i64* }*)

declare void @ath_release(i8*, i8*, { i64, i32, i64, i64* }*, i8*)

declare void @ath_lock(i8*, i8*, { i64, i32, i64, i64* }*, i32)

declare i8* @ath_device_select(i8*, i64)

declare void @ath_load(i8*, i64, { i64, i32, i64, i64* }*)

declare void @ath_barrier(i64, i8**)

declare i8* @ath_launch(i8*, i8*, i8*, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }*)

define i8* @inp1(i8* %0) {
  %2 = alloca { i64, i32, i64, i64* }, align 8
  %3 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 0
  store i64 1, i64* %3, align 4
  %4 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 2
  store i64 1, i64* %5, align 4
  %6 = alloca i64, align 16
  %7 = getelementptr i64, i64* %6, i32 0
  store i64 32, i64* %7, align 4
  %8 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 3
  store i64* %6, i64** %8, align 8
  %9 = call i8* @ath_device_select(i8* %0, i64 3)
  call void @ath_allocate(i8* %0, i8* %9, { i64, i32, i64, i64* }* %2)
  %10 = call i8* @ath_device_select(i8* %0, i64 3)
  call void @ath_lock(i8* %0, i8* %10, { i64, i32, i64, i64* }* %2, i32 1)
  call void @ath_load(i8* %0, i64 3, { i64, i32, i64, i64* }* %2)
  %11 = call i8* @ath_device_select(i8* %0, i64 3)
  call void @ath_release(i8* %0, i8* %11, { i64, i32, i64, i64* }* %2, i8* null)
  ret i8* null
}

define i8* @inp2(i8* %0) {
  %2 = alloca { i64, i32, i64, i64* }, align 8
  %3 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 0
  store i64 129, i64* %3, align 4
  %4 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 2
  store i64 1, i64* %5, align 4
  %6 = alloca i64, align 16
  %7 = getelementptr i64, i64* %6, i32 0
  store i64 32, i64* %7, align 4
  %8 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 3
  store i64* %6, i64** %8, align 8
  %9 = call i8* @ath_device_select(i8* %0, i64 5)
  call void @ath_allocate(i8* %0, i8* %9, { i64, i32, i64, i64* }* %2)
  %10 = call i8* @ath_device_select(i8* %0, i64 5)
  call void @ath_lock(i8* %0, i8* %10, { i64, i32, i64, i64* }* %2, i32 1)
  call void @ath_load(i8* %0, i64 5, { i64, i32, i64, i64* }* %2)
  %11 = call i8* @ath_device_select(i8* %0, i64 5)
  call void @ath_release(i8* %0, i8* %11, { i64, i32, i64, i64* }* %2, i8* null)
  ret i8* null
}

define i8* @add(i8* %0) {
  %2 = alloca { i64, i32, i64, i64* }, align 8
  %3 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 0
  store i64 129, i64* %3, align 4
  %4 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 2
  store i64 1, i64* %5, align 4
  %6 = alloca i64, align 16
  %7 = getelementptr i64, i64* %6, i32 0
  store i64 32, i64* %7, align 4
  %8 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %2, i32 0, i32 3
  store i64* %6, i64** %8, align 8
  %9 = alloca { i64, i32, i64, i64* }, align 8
  %10 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %9, i32 0, i32 0
  store i64 1, i64* %10, align 4
  %11 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %9, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %9, i32 0, i32 2
  store i64 1, i64* %12, align 4
  %13 = alloca i64, align 16
  %14 = getelementptr i64, i64* %13, i32 0
  store i64 32, i64* %14, align 4
  %15 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %9, i32 0, i32 3
  store i64* %13, i64** %15, align 8
  %16 = alloca { i64, i32, i64, i64* }, align 8
  %17 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %16, i32 0, i32 0
  store i64 257, i64* %17, align 4
  %18 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %16, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %16, i32 0, i32 2
  store i64 1, i64* %19, align 4
  %20 = alloca i64, align 16
  %21 = getelementptr i64, i64* %20, i32 0
  store i64 32, i64* %21, align 4
  %22 = getelementptr { i64, i32, i64, i64* }, { i64, i32, i64, i64* }* %16, i32 0, i32 3
  store i64* %20, i64** %22, align 8
  %23 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_allocate(i8* %0, i8* %23, { i64, i32, i64, i64* }* %16)
  %24 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_lock(i8* %0, i8* %24, { i64, i32, i64, i64* }* %9, i32 0)
  %25 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_lock(i8* %0, i8* %25, { i64, i32, i64, i64* }* %2, i32 0)
  %26 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_lock(i8* %0, i8* %26, { i64, i32, i64, i64* }* %16, i32 1)
  %27 = call i8* @ath_device_select(i8* %0, i64 8)
  %28 = alloca { i64, i8*, i32 }, i32 5, align 16
  %29 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %28, i64 0
  %30 = bitcast { i64, i32, i64, i64* }* %9 to i8*
  %31 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %29, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %29, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %28, i64 1
  %34 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %33, i32 0, i32 0
  store i64 4, i64* %34, align 4
  %35 = alloca float, i64 1, align 8
  store float 1.000000e+00, float* %35, align 4
  %36 = bitcast float* %35 to i8*
  %37 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %33, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %33, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %28, i64 2
  %40 = bitcast { i64, i32, i64, i64* }* %2 to i8*
  %41 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %39, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %39, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %28, i64 3
  %44 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %43, i32 0, i32 0
  store i64 4, i64* %44, align 4
  %45 = alloca float, i64 1, align 8
  store float 1.000000e+00, float* %45, align 4
  %46 = bitcast float* %45 to i8*
  %47 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %43, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %43, i32 0, i32 2
  store i32 1, i32* %48, align 4
  %49 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %28, i64 4
  %50 = bitcast { i64, i32, i64, i64* }* %16 to i8*
  %51 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %49, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = getelementptr { i64, i8*, i32 }, { i64, i8*, i32 }* %49, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = alloca { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, align 8
  %54 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fadd, i32 0, i32 0), i8** %54, align 8
  %55 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 1
  store i64 5, i64* %55, align 4
  %56 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 2
  store { i64, i8*, i32 }* %28, { i64, i8*, i32 }** %56, align 8
  %57 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 3
  store i64 1, i64* %57, align 4
  %58 = alloca i64, align 16
  %59 = getelementptr i64, i64* %58, i32 0
  store i64 32, i64* %59, align 4
  %60 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 4
  store i64* %58, i64** %60, align 8
  %61 = alloca i64, align 16
  %62 = getelementptr i64, i64* %61, i32 0
  store i64 0, i64* %62, align 4
  %63 = getelementptr { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53, i32 0, i32 5
  store i64* %61, i64** %63, align 8
  %64 = call i8* @ath_launch(i8* %0, i8* %27, i8* null, { i8*, i64, { i64, i8*, i32 }*, i64, i64*, i64* }* %53)
  %65 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_release(i8* %0, i8* %65, { i64, i32, i64, i64* }* %16, i8* %64)
  %66 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_release(i8* %0, i8* %66, { i64, i32, i64, i64* }* %2, i8* %64)
  %67 = call i8* @ath_device_select(i8* %0, i64 8)
  call void @ath_release(i8* %0, i8* %67, { i64, i32, i64, i64* }* %9, i8* %64)
  ret i8* %64
}

define void @mainGraph(i8* %0) {
  %2 = call i8* @inp1(i8* %0)
  %3 = call i8* @inp2(i8* %0)
  %4 = alloca i8*, i32 2, align 16
  %5 = getelementptr i8*, i8** %4, i32 0
  store i8* %2, i8** %5, align 8
  %6 = getelementptr i8*, i8** %4, i32 1
  store i8* %3, i8** %6, align 8
  call void @ath_barrier(i64 2, i8** %4)
  %7 = call i8* @add(i8* %0)
  %8 = alloca i8*, align 16
  %9 = getelementptr i8*, i8** %8, i32 0
  store i8* %7, i8** %9, align 8
  call void @ath_barrier(i64 1, i8** %8)
  %10 = alloca i8*, i32 0, align 16
  call void @ath_barrier(i64 0, i8** %10)
  ret void
}
