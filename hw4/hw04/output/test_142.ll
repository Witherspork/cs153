; generated from: hw4programs/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl798 = alloca { i64, [0 x i64] }*
  %_allocated_arg794 = alloca i64
  store i64 %argc, i64* %_allocated_arg794
  %_allocated_arg796 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg796
  %_raw_array799 = call i64* @oat_alloc_array(i64 2)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x i64] }*
  %_id_of_gep801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array800, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep801
  %_id_of_gep803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array800, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep803
  store { i64, [0 x i64] }* %_array800, { i64, [0 x i64] }** %_id_of_decl798
  %_exp_of_id808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl798
  %_id_of_index806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id808, i32 0, i32 1, i32 1
  %_id_of_load807 = load i64, i64* %_id_of_index806
  ret i64 %_id_of_load807
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
