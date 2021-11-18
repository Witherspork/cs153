; generated from: hw4programs/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl813 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg809 = alloca i64
  store i64 %argc, i64* %_allocated_arg809
  %_allocated_arg811 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg811
  %_raw_array814 = call i64* @oat_alloc_array(i64 2)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array816 = call i64* @oat_alloc_array(i64 2)
  %_array817 = bitcast i64* %_raw_array816 to { i64, [0 x i64] }*
  %_id_of_gep818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array817, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep818
  %_id_of_gep820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array817, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep820
  %_raw_array822 = call i64* @oat_alloc_array(i64 2)
  %_array823 = bitcast i64* %_raw_array822 to { i64, [0 x i64] }*
  %_id_of_gep824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array823, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep824
  %_id_of_gep826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array823, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep826
  %_id_of_gep828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array815, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array817, { i64, [0 x i64] }** %_id_of_gep828
  %_id_of_gep830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array815, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array823, { i64, [0 x i64] }** %_id_of_gep830
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array815, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl813
  %_exp_of_id837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl813
  %_id_of_index835 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id837, i32 0, i32 1, i32 0
  %_id_of_load836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index835
  %_id_of_index833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load836, i32 0, i32 1, i32 1
  %_id_of_load834 = load i64, i64* %_id_of_index833
  ret i64 %_id_of_load834
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
