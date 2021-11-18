; generated from: hw4programs/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2002 = alloca { i64, [0 x i64] }*
  %_allocated_arg1998 = alloca i64
  store i64 %argc, i64* %_allocated_arg1998
  %_allocated_arg2000 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2000
  %_raw_array2003 = call i64* @oat_alloc_array(i64 3)
  %_array2004 = bitcast i64* %_raw_array2003 to { i64, [0 x i64] }*
  %_id_of_gep2005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep2005
  %_id_of_gep2007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 1
  store i64 100, i64* %_id_of_gep2007
  %_id_of_gep2009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 2
  store i64 999, i64* %_id_of_gep2009
  store { i64, [0 x i64] }* %_array2004, { i64, [0 x i64] }** %_id_of_decl2002
  %_exp_of_id2014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2002
  %_id_of_index2012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2014, i32 0, i32 1, i32 2
  %_id_of_load2013 = load i64, i64* %_id_of_index2012
  ret i64 %_id_of_load2013
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
