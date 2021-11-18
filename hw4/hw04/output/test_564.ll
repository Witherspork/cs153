; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_allocated_arg449 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_allocated_arg449
  %_allocated_arg451 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_allocated_arg451
  %_allocated_arg453 = alloca i1
  store i1 %b, i1* %_allocated_arg453
  %_exp_of_id455 = load i1, i1* %_allocated_arg453
  br i1 %_exp_of_id455, label %_branch_of_eq459, label %_branch_of_neq460
_branch_of_eq459:
  %_exp_of_id456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg449
  ret { i64, [0 x i64] }* %_exp_of_id456
_branch_of_neq460:
  %_exp_of_id457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg451
  ret { i64, [0 x i64] }* %_exp_of_id457
_merge458:
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl433 = alloca { i64, [0 x i64] }*
  %_id_of_decl437 = alloca { i64, [0 x i64] }*
  %_allocated_arg429 = alloca i64
  store i64 %argc, i64* %_allocated_arg429
  %_allocated_arg431 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg431
  %_raw_array434 = call i64* @oat_alloc_array(i64 3)
  %_array435 = bitcast i64* %_raw_array434 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array435, { i64, [0 x i64] }** %_id_of_decl433
  %_raw_array438 = call i64* @oat_alloc_array(i64 3)
  %_array439 = bitcast i64* %_raw_array438 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array439, { i64, [0 x i64] }** %_id_of_decl437
  %_exp_of_id443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl433
  %_exp_of_id444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl437
  %_exp_of_call442 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id443, { i64, [0 x i64] }* %_exp_of_id444, i1 1)
  %_id_of_gep_exp445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call442, i32 0, i32 1, i32 0
  store i64 17, i64* %_id_of_gep_exp445
  %_exp_of_id448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl433
  %_id_of_index446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id448, i32 0, i32 1, i32 0
  %_id_of_load447 = load i64, i64* %_id_of_index446
  ret i64 %_id_of_load447
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
