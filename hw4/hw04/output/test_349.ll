; generated from: hw4programs/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_const_of_global321 to { i64, [0 x i64] }*)
@_const_of_global322 = global i64 1
@_const_of_global323 = global i64 2
@_const_of_global324 = global i64 3
@_const_of_global325 = global i64 4
@_const_of_global321 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_allocated_arg314 = alloca i64
  store i64 %argc, i64* %_allocated_arg314
  %_allocated_arg316 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_allocated_arg316
  %_exp_of_id320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_id_of_index318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id320, i32 0, i32 1, i32 2
  %_id_of_load319 = load i64, i64* %_id_of_index318
  ret i64 %_id_of_load319
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
