; generated from: hw4programs/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_id_of_decl4567 = alloca { i64, [0 x i1] }*
  %_i4572 = alloca i64
  %_i4593 = alloca i64
  %_j4604 = alloca i64
  %_id_of_decl4629 = alloca i64
  %_i4631 = alloca i64
  %_allocated_arg4565 = alloca i64
  store i64 %n, i64* %_allocated_arg4565
  %_exp_of_id4568 = load i64, i64* %_allocated_arg4565
  %_raw_array4569 = call i64* @oat_alloc_array(i64 %_exp_of_id4568)
  %_array4570 = bitcast i64* %_raw_array4569 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4570, { i64, [0 x i1] }** %_id_of_decl4567
  store i64 0, i64* %_i4572
  br label %_entry4584
_entry4584:
  %_exp_of_id4574 = load i64, i64* %_i4572
  %_exp_of_id4575 = load i64, i64* %_allocated_arg4565
  %_exp_of_bop4576 = icmp slt i64 %_exp_of_id4574, %_exp_of_id4575
  br i1 %_exp_of_bop4576, label %_body4585, label %_exit4586
_body4585:
  %_exp_of_id4578 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_exp_of_id4579 = load i64, i64* %_i4572
  %_id_of_gep_exp4580 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4578, i32 0, i32 1, i64 %_exp_of_id4579
  store i1 1, i1* %_id_of_gep_exp4580
  %_exp_of_id4581 = load i64, i64* %_i4572
  %_exp_of_bop4582 = add i64 %_exp_of_id4581, 1
  store i64 %_exp_of_bop4582, i64* %_i4572
  br label %_entry4584
_exit4586:
  %_exp_of_id4588 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_id_of_gep_exp4589 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4588, i32 0, i32 1, i32 0
  store i1 0, i1* %_id_of_gep_exp4589
  %_exp_of_id4591 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_id_of_gep_exp4592 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4591, i32 0, i32 1, i32 1
  store i1 0, i1* %_id_of_gep_exp4592
  store i64 0, i64* %_i4593
  br label %_entry4626
_entry4626:
  %_exp_of_id4595 = load i64, i64* %_i4593
  %_exp_of_id4596 = load i64, i64* %_allocated_arg4565
  %_exp_of_bop4597 = icmp slt i64 %_exp_of_id4595, %_exp_of_id4596
  br i1 %_exp_of_bop4597, label %_body4627, label %_exit4628
_body4627:
  %_exp_of_id4600 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_exp_of_id4601 = load i64, i64* %_i4593
  %_id_of_index4598 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4600, i32 0, i32 1, i64 %_exp_of_id4601
  %_id_of_load4599 = load i1, i1* %_id_of_index4598
  br i1 %_id_of_load4599, label %_branch_of_eq4621, label %_branch_of_neq4622
_branch_of_eq4621:
  %_exp_of_id4602 = load i64, i64* %_i4593
  %_exp_of_bop4603 = mul i64 %_exp_of_id4602, 2
  store i64 %_exp_of_bop4603, i64* %_j4604
  br label %_entry4617
_entry4617:
  %_exp_of_id4606 = load i64, i64* %_j4604
  %_exp_of_id4607 = load i64, i64* %_allocated_arg4565
  %_exp_of_bop4608 = icmp slt i64 %_exp_of_id4606, %_exp_of_id4607
  br i1 %_exp_of_bop4608, label %_body4618, label %_exit4619
_body4618:
  %_exp_of_id4610 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_exp_of_id4611 = load i64, i64* %_j4604
  %_id_of_gep_exp4612 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4610, i32 0, i32 1, i64 %_exp_of_id4611
  store i1 0, i1* %_id_of_gep_exp4612
  %_exp_of_id4613 = load i64, i64* %_j4604
  %_exp_of_id4614 = load i64, i64* %_i4593
  %_exp_of_bop4615 = add i64 %_exp_of_id4613, %_exp_of_id4614
  store i64 %_exp_of_bop4615, i64* %_j4604
  br label %_entry4617
_exit4619:
  br label %_merge4620
_branch_of_neq4622:
  br label %_merge4620
_merge4620:
  %_exp_of_id4623 = load i64, i64* %_i4593
  %_exp_of_bop4624 = add i64 %_exp_of_id4623, 1
  store i64 %_exp_of_bop4624, i64* %_i4593
  br label %_entry4626
_exit4628:
  store i64 0, i64* %_id_of_decl4629
  store i64 0, i64* %_i4631
  br label %_entry4649
_entry4649:
  %_exp_of_id4633 = load i64, i64* %_i4631
  %_exp_of_id4634 = load i64, i64* %_allocated_arg4565
  %_exp_of_bop4635 = icmp slt i64 %_exp_of_id4633, %_exp_of_id4634
  br i1 %_exp_of_bop4635, label %_body4650, label %_exit4651
_body4650:
  %_exp_of_id4638 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl4567
  %_exp_of_id4639 = load i64, i64* %_i4631
  %_id_of_index4636 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id4638, i32 0, i32 1, i64 %_exp_of_id4639
  %_id_of_load4637 = load i1, i1* %_id_of_index4636
  br i1 %_id_of_load4637, label %_branch_of_eq4644, label %_branch_of_neq4645
_branch_of_eq4644:
  %_exp_of_id4640 = load i64, i64* %_id_of_decl4629
  %_exp_of_bop4641 = add i64 %_exp_of_id4640, 1
  store i64 %_exp_of_bop4641, i64* %_id_of_decl4629
  br label %_merge4643
_branch_of_neq4645:
  br label %_merge4643
_merge4643:
  %_exp_of_id4646 = load i64, i64* %_i4631
  %_exp_of_bop4647 = add i64 %_exp_of_id4646, 1
  store i64 %_exp_of_bop4647, i64* %_i4631
  br label %_entry4649
_exit4651:
  %_exp_of_id4652 = load i64, i64* %_id_of_decl4629
  ret i64 %_exp_of_id4652
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4561 = alloca i64
  %_allocated_arg4557 = alloca i64
  store i64 %argc, i64* %_allocated_arg4557
  %_allocated_arg4559 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4559
  store i64 100, i64* %_id_of_decl4561
  %_exp_of_id4564 = load i64, i64* %_id_of_decl4561
  %_exp_of_call4563 = call i64 @sieve(i64 %_exp_of_id4564)
  ret i64 %_exp_of_call4563
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
