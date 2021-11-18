; generated from: hw4programs/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl621 = alloca { i64, [0 x i1] }*
  %_id_of_decl629 = alloca i64
  %_allocated_arg617 = alloca i64
  store i64 %argc, i64* %_allocated_arg617
  %_allocated_arg619 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg619
  %_raw_array622 = call i64* @oat_alloc_array(i64 2)
  %_array623 = bitcast i64* %_raw_array622 to { i64, [0 x i1] }*
  %_id_of_gep624 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array623, i32 0, i32 1, i32 0
  store i1 1, i1* %_id_of_gep624
  %_id_of_gep626 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array623, i32 0, i32 1, i32 1
  store i1 0, i1* %_id_of_gep626
  store { i64, [0 x i1] }* %_array623, { i64, [0 x i1] }** %_id_of_decl621
  store i64 0, i64* %_id_of_decl629
  %_exp_of_id633 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl621
  %_id_of_index631 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id633, i32 0, i32 1, i32 0
  %_id_of_load632 = load i1, i1* %_id_of_index631
  br i1 %_id_of_load632, label %_branch_of_eq636, label %_branch_of_neq637
_branch_of_eq636:
  store i64 1, i64* %_id_of_decl629
  br label %_merge635
_branch_of_neq637:
  br label %_merge635
_merge635:
  %_exp_of_id638 = load i64, i64* %_id_of_decl629
  ret i64 %_exp_of_id638
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
