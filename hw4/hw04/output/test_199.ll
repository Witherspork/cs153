; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string4500 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_allocated_arg4545 = alloca i64
  store i64 %x, i64* %_allocated_arg4545
  %_allocated_arg4547 = alloca i64
  store i64 %y, i64* %_allocated_arg4547
  %_exp_of_id4549 = load i64, i64* %_allocated_arg4545
  %_exp_of_id4550 = load i64, i64* %_allocated_arg4547
  %_exp_of_bop4551 = and i64 %_exp_of_id4549, %_exp_of_id4550
  %_id_of_uop4552 = xor i64 %_exp_of_bop4551, -1
  %_exp_of_id4553 = load i64, i64* %_allocated_arg4545
  %_exp_of_id4554 = load i64, i64* %_allocated_arg4547
  %_exp_of_bop4555 = or i64 %_exp_of_id4553, %_exp_of_id4554
  %_exp_of_bop4556 = and i64 %_id_of_uop4552, %_exp_of_bop4555
  ret i64 %_exp_of_bop4556
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_id_of_decl4507 = alloca i64
  %_id_of_decl4512 = alloca i64
  %_allocated_arg4505 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_allocated_arg4505
  %_exp_of_id4510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4505
  %_id_of_index4508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4510, i32 0, i32 1, i32 0
  %_id_of_load4509 = load i64, i64* %_id_of_index4508
  store i64 %_id_of_load4509, i64* %_id_of_decl4507
  %_exp_of_id4515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4505
  %_id_of_index4513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4515, i32 0, i32 1, i32 1
  %_id_of_load4514 = load i64, i64* %_id_of_index4513
  store i64 %_id_of_load4514, i64* %_id_of_decl4512
  %_exp_of_id4517 = load i64, i64* %_id_of_decl4512
  %_exp_of_id4519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4505
  %_id_of_gep_exp4520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4519, i32 0, i32 1, i32 0
  store i64 %_exp_of_id4517, i64* %_id_of_gep_exp4520
  %_exp_of_id4522 = load i64, i64* %_id_of_decl4507
  %_exp_of_id4523 = load i64, i64* %_id_of_decl4507
  %_exp_of_bop4524 = shl i64 %_exp_of_id4523, 23
  %_exp_of_call4521 = call i64 @xor(i64 %_exp_of_id4522, i64 %_exp_of_bop4524)
  store i64 %_exp_of_call4521, i64* %_id_of_decl4507
  %_exp_of_id4527 = load i64, i64* %_id_of_decl4507
  %_exp_of_id4528 = load i64, i64* %_id_of_decl4507
  %_exp_of_bop4529 = lshr i64 %_exp_of_id4528, 17
  %_exp_of_call4526 = call i64 @xor(i64 %_exp_of_id4527, i64 %_exp_of_bop4529)
  store i64 %_exp_of_call4526, i64* %_id_of_decl4507
  %_exp_of_id4532 = load i64, i64* %_id_of_decl4507
  %_exp_of_id4534 = load i64, i64* %_id_of_decl4512
  %_exp_of_id4535 = load i64, i64* %_id_of_decl4512
  %_exp_of_bop4536 = lshr i64 %_exp_of_id4535, 26
  %_exp_of_call4533 = call i64 @xor(i64 %_exp_of_id4534, i64 %_exp_of_bop4536)
  %_exp_of_call4531 = call i64 @xor(i64 %_exp_of_id4532, i64 %_exp_of_call4533)
  store i64 %_exp_of_call4531, i64* %_id_of_decl4507
  %_exp_of_id4538 = load i64, i64* %_id_of_decl4507
  %_exp_of_id4540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4505
  %_id_of_gep_exp4541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4540, i32 0, i32 1, i32 1
  store i64 %_exp_of_id4538, i64* %_id_of_gep_exp4541
  %_exp_of_id4542 = load i64, i64* %_id_of_decl4507
  %_exp_of_id4543 = load i64, i64* %_id_of_decl4512
  %_exp_of_bop4544 = add i64 %_exp_of_id4542, %_exp_of_id4543
  ret i64 %_exp_of_bop4544
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4475 = alloca { i64, [0 x i64] }*
  %_i4479 = alloca i64
  %_allocated_arg4471 = alloca i64
  store i64 %argc, i64* %_allocated_arg4471
  %_allocated_arg4473 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4473
  %_raw_array4476 = call i64* @oat_alloc_array(i64 2)
  %_array4477 = bitcast i64* %_raw_array4476 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4477, { i64, [0 x i64] }** %_id_of_decl4475
  store i64 0, i64* %_i4479
  br label %_entry4493
_entry4493:
  %_exp_of_id4481 = load i64, i64* %_i4479
  %_exp_of_bop4482 = icmp slt i64 %_exp_of_id4481, 2
  br i1 %_exp_of_bop4482, label %_body4494, label %_exit4495
_body4494:
  %_exp_of_id4483 = load i64, i64* %_i4479
  %_exp_of_bop4484 = add i64 %_exp_of_id4483, 1
  %_exp_of_bop4485 = mul i64 100, %_exp_of_bop4484
  %_exp_of_id4487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4475
  %_exp_of_id4488 = load i64, i64* %_i4479
  %_id_of_gep_exp4489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4487, i32 0, i32 1, i64 %_exp_of_id4488
  store i64 %_exp_of_bop4485, i64* %_id_of_gep_exp4489
  %_exp_of_id4490 = load i64, i64* %_i4479
  %_exp_of_bop4491 = add i64 %_exp_of_id4490, 1
  store i64 %_exp_of_bop4491, i64* %_i4479
  br label %_entry4493
_exit4495:
  %_exp_of_id4498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4475
  %_exp_of_call4497 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_exp_of_id4498)
  call void @print_int(i64 %_exp_of_call4497)
  %_exp_of_bit4501 = bitcast [2 x i8]* @_exp_of_string4500 to i8*
  call void @print_string(i8* %_exp_of_bit4501)
  %_exp_of_id4504 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4475
  %_exp_of_call4503 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_exp_of_id4504)
  call void @print_int(i64 %_exp_of_call4503)
  ret i64 0
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
