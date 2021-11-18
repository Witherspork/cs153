; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_allocated_arg377 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_allocated_arg377
  %_allocated_arg379 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_allocated_arg379
  %_allocated_arg381 = alloca i1
  store i1 %b, i1* %_allocated_arg381
  %_exp_of_id383 = load i1, i1* %_allocated_arg381
  br i1 %_exp_of_id383, label %_branch_of_eq387, label %_branch_of_neq388
_branch_of_eq387:
  %_exp_of_id384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg377
  ret { i64, [0 x i64] }* %_exp_of_id384
_branch_of_neq388:
  %_exp_of_id385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg379
  ret { i64, [0 x i64] }* %_exp_of_id385
_merge386:
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl330 = alloca { i64, [0 x i64] }*
  %_i334 = alloca i64
  %_id_of_decl349 = alloca { i64, [0 x i64] }*
  %_i353 = alloca i64
  %_allocated_arg326 = alloca i64
  store i64 %argc, i64* %_allocated_arg326
  %_allocated_arg328 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg328
  %_raw_array331 = call i64* @oat_alloc_array(i64 3)
  %_array332 = bitcast i64* %_raw_array331 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array332, { i64, [0 x i64] }** %_id_of_decl330
  store i64 0, i64* %_i334
  br label %_entry346
_entry346:
  %_exp_of_id336 = load i64, i64* %_i334
  %_exp_of_bop337 = icmp slt i64 %_exp_of_id336, 3
  br i1 %_exp_of_bop337, label %_body347, label %_exit348
_body347:
  %_exp_of_id338 = load i64, i64* %_i334
  %_exp_of_id340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl330
  %_exp_of_id341 = load i64, i64* %_i334
  %_id_of_gep_exp342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id340, i32 0, i32 1, i64 %_exp_of_id341
  store i64 %_exp_of_id338, i64* %_id_of_gep_exp342
  %_exp_of_id343 = load i64, i64* %_i334
  %_exp_of_bop344 = add i64 %_exp_of_id343, 1
  store i64 %_exp_of_bop344, i64* %_i334
  br label %_entry346
_exit348:
  %_raw_array350 = call i64* @oat_alloc_array(i64 3)
  %_array351 = bitcast i64* %_raw_array350 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array351, { i64, [0 x i64] }** %_id_of_decl349
  store i64 0, i64* %_i353
  br label %_entry366
_entry366:
  %_exp_of_id355 = load i64, i64* %_i353
  %_exp_of_bop356 = icmp slt i64 %_exp_of_id355, 3
  br i1 %_exp_of_bop356, label %_body367, label %_exit368
_body367:
  %_exp_of_id357 = load i64, i64* %_i353
  %_exp_of_bop358 = add i64 %_exp_of_id357, 3
  %_exp_of_id360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl349
  %_exp_of_id361 = load i64, i64* %_i353
  %_id_of_gep_exp362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id360, i32 0, i32 1, i64 %_exp_of_id361
  store i64 %_exp_of_bop358, i64* %_id_of_gep_exp362
  %_exp_of_id363 = load i64, i64* %_i353
  %_exp_of_bop364 = add i64 %_exp_of_id363, 1
  store i64 %_exp_of_bop364, i64* %_i353
  br label %_entry366
_exit368:
  %_exp_of_id371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl330
  %_exp_of_id372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl349
  %_exp_of_call370 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id371, { i64, [0 x i64] }* %_exp_of_id372, i1 1)
  %_id_of_gep_exp373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call370, i32 0, i32 1, i32 0
  store i64 17, i64* %_id_of_gep_exp373
  %_exp_of_id376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl330
  %_id_of_index374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id376, i32 0, i32 1, i32 0
  %_id_of_load375 = load i64, i64* %_id_of_index374
  ret i64 %_id_of_load375
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
