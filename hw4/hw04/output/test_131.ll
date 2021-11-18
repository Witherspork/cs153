; generated from: hw4programs/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl526 = alloca { i64, [0 x i64] }*
  %_allocated_arg522 = alloca i64
  store i64 %argc, i64* %_allocated_arg522
  %_allocated_arg524 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg524
  %_raw_array527 = call i64* @oat_alloc_array(i64 2)
  %_array528 = bitcast i64* %_raw_array527 to { i64, [0 x i64] }*
  %_id_of_gep529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep529
  %_id_of_gep531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep531
  store { i64, [0 x i64] }* %_array528, { i64, [0 x i64] }** %_id_of_decl526
  %_exp_of_id536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl526
  %_id_of_index534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id536, i32 0, i32 1, i32 0
  %_id_of_load535 = load i64, i64* %_id_of_index534
  ret i64 %_id_of_load535
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
