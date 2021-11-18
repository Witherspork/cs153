; generated from: hw4programs/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4
@_const_of_global5828 = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_allocated_arg5794 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5794
  %_allocated_arg5796 = alloca i64
  store i64 %i, i64* %_allocated_arg5796
  %_allocated_arg5798 = alloca i64
  store i64 %j, i64* %_allocated_arg5798
  %_allocated_arg5800 = alloca i64
  store i64 %count, i64* %_allocated_arg5800
  %_exp_of_id5802 = load i64, i64* %_allocated_arg5796
  %_exp_of_bop5803 = icmp sge i64 %_exp_of_id5802, 0
  %_exp_of_id5804 = load i64, i64* %_allocated_arg5798
  %_exp_of_bop5805 = icmp sge i64 %_exp_of_id5804, 0
  %_exp_of_bop5806 = and i1 %_exp_of_bop5803, %_exp_of_bop5805
  %_exp_of_id5807 = load i64, i64* %_allocated_arg5796
  %_exp_of_id5808 = load i64, i64* @len
  %_exp_of_bop5809 = icmp slt i64 %_exp_of_id5807, %_exp_of_id5808
  %_exp_of_bop5810 = and i1 %_exp_of_bop5806, %_exp_of_bop5809
  %_exp_of_id5811 = load i64, i64* %_allocated_arg5798
  %_exp_of_id5812 = load i64, i64* @len
  %_exp_of_bop5813 = icmp slt i64 %_exp_of_id5811, %_exp_of_id5812
  %_exp_of_bop5814 = and i1 %_exp_of_bop5810, %_exp_of_bop5813
  br i1 %_exp_of_bop5814, label %_branch_of_eq5826, label %_branch_of_neq5827
_branch_of_eq5826:
  %_exp_of_id5815 = load i64, i64* %_allocated_arg5800
  %_exp_of_id5820 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5794
  %_exp_of_id5821 = load i64, i64* %_allocated_arg5796
  %_id_of_index5818 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5820, i32 0, i32 1, i64 %_exp_of_id5821
  %_id_of_load5819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index5818
  %_exp_of_id5822 = load i64, i64* %_allocated_arg5798
  %_id_of_index5816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load5819, i32 0, i32 1, i64 %_exp_of_id5822
  %_id_of_load5817 = load i64, i64* %_id_of_index5816
  %_exp_of_bop5823 = add i64 %_exp_of_id5815, %_id_of_load5817
  ret i64 %_exp_of_bop5823
_branch_of_neq5827:
  %_exp_of_id5824 = load i64, i64* %_allocated_arg5800
  ret i64 %_exp_of_id5824
_merge5825:
  ret i64 0
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_id_of_decl5703 = alloca i64
  %_id_of_decl5712 = alloca i64
  %_allocated_arg5697 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_allocated_arg5699 = alloca i64
  store i64 %i, i64* %_allocated_arg5699
  %_allocated_arg5701 = alloca i64
  store i64 %j, i64* %_allocated_arg5701
  %_exp_of_id5708 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5709 = load i64, i64* %_allocated_arg5699
  %_id_of_index5706 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5708, i32 0, i32 1, i64 %_exp_of_id5709
  %_id_of_load5707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index5706
  %_exp_of_id5710 = load i64, i64* %_allocated_arg5701
  %_id_of_index5704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load5707, i32 0, i32 1, i64 %_exp_of_id5710
  %_id_of_load5705 = load i64, i64* %_id_of_index5704
  store i64 %_id_of_load5705, i64* %_id_of_decl5703
  store i64 0, i64* %_id_of_decl5712
  %_exp_of_id5715 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5716 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5717 = sub i64 %_exp_of_id5716, 1
  %_exp_of_id5718 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5719 = sub i64 %_exp_of_id5718, 1
  %_exp_of_id5720 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5714 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5715, i64 %_exp_of_bop5717, i64 %_exp_of_bop5719, i64 %_exp_of_id5720)
  store i64 %_exp_of_call5714, i64* %_id_of_decl5712
  %_exp_of_id5723 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5724 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5725 = sub i64 %_exp_of_id5724, 1
  %_exp_of_id5726 = load i64, i64* %_allocated_arg5701
  %_exp_of_id5727 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5722 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5723, i64 %_exp_of_bop5725, i64 %_exp_of_id5726, i64 %_exp_of_id5727)
  store i64 %_exp_of_call5722, i64* %_id_of_decl5712
  %_exp_of_id5730 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5731 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5732 = sub i64 %_exp_of_id5731, 1
  %_exp_of_id5733 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5734 = add i64 %_exp_of_id5733, 1
  %_exp_of_id5735 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5729 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5730, i64 %_exp_of_bop5732, i64 %_exp_of_bop5734, i64 %_exp_of_id5735)
  store i64 %_exp_of_call5729, i64* %_id_of_decl5712
  %_exp_of_id5738 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5739 = load i64, i64* %_allocated_arg5699
  %_exp_of_id5740 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5741 = sub i64 %_exp_of_id5740, 1
  %_exp_of_id5742 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5737 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5738, i64 %_exp_of_id5739, i64 %_exp_of_bop5741, i64 %_exp_of_id5742)
  store i64 %_exp_of_call5737, i64* %_id_of_decl5712
  %_exp_of_id5745 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5746 = load i64, i64* %_allocated_arg5699
  %_exp_of_id5747 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5748 = add i64 %_exp_of_id5747, 1
  %_exp_of_id5749 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5744 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5745, i64 %_exp_of_id5746, i64 %_exp_of_bop5748, i64 %_exp_of_id5749)
  store i64 %_exp_of_call5744, i64* %_id_of_decl5712
  %_exp_of_id5752 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5753 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5754 = add i64 %_exp_of_id5753, 1
  %_exp_of_id5755 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5756 = sub i64 %_exp_of_id5755, 1
  %_exp_of_id5757 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5751 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5752, i64 %_exp_of_bop5754, i64 %_exp_of_bop5756, i64 %_exp_of_id5757)
  store i64 %_exp_of_call5751, i64* %_id_of_decl5712
  %_exp_of_id5760 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5761 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5762 = add i64 %_exp_of_id5761, 1
  %_exp_of_id5763 = load i64, i64* %_allocated_arg5701
  %_exp_of_id5764 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5759 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5760, i64 %_exp_of_bop5762, i64 %_exp_of_id5763, i64 %_exp_of_id5764)
  store i64 %_exp_of_call5759, i64* %_id_of_decl5712
  %_exp_of_id5767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg5697
  %_exp_of_id5768 = load i64, i64* %_allocated_arg5699
  %_exp_of_bop5769 = add i64 %_exp_of_id5768, 1
  %_exp_of_id5770 = load i64, i64* %_allocated_arg5701
  %_exp_of_bop5771 = add i64 %_exp_of_id5770, 1
  %_exp_of_id5772 = load i64, i64* %_id_of_decl5712
  %_exp_of_call5766 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5767, i64 %_exp_of_bop5769, i64 %_exp_of_bop5771, i64 %_exp_of_id5772)
  store i64 %_exp_of_call5766, i64* %_id_of_decl5712
  %_exp_of_id5774 = load i64, i64* %_id_of_decl5703
  %_exp_of_bop5775 = icmp eq i64 %_exp_of_id5774, 1
  br i1 %_exp_of_bop5775, label %_branch_of_eq5787, label %_branch_of_neq5788
_branch_of_eq5787:
  %_exp_of_id5776 = load i64, i64* %_id_of_decl5712
  %_exp_of_bop5777 = icmp slt i64 %_exp_of_id5776, 2
  br i1 %_exp_of_bop5777, label %_branch_of_eq5784, label %_branch_of_neq5785
_branch_of_eq5784:
  ret i64 0
_branch_of_neq5785:
  %_exp_of_id5778 = load i64, i64* %_id_of_decl5712
  %_exp_of_bop5779 = icmp slt i64 %_exp_of_id5778, 4
  br i1 %_exp_of_bop5779, label %_branch_of_eq5781, label %_branch_of_neq5782
_branch_of_eq5781:
  ret i64 1
_branch_of_neq5782:
  br label %_merge5780
_merge5780:
  br label %_merge5783
_merge5783:
  ret i64 0
_branch_of_neq5788:
  br label %_merge5786
_merge5786:
  %_exp_of_id5789 = load i64, i64* %_id_of_decl5712
  %_exp_of_bop5790 = icmp eq i64 %_exp_of_id5789, 3
  br i1 %_exp_of_bop5790, label %_branch_of_eq5792, label %_branch_of_neq5793
_branch_of_eq5792:
  ret i64 1
_branch_of_neq5793:
  ret i64 0
_merge5791:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5526 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl5578 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5630 = alloca i64
  %_j5640 = alloca i64
  %_i5667 = alloca i64
  %_j5672 = alloca i64
  %_allocated_arg5522 = alloca i64
  store i64 %argc, i64* %_allocated_arg5522
  %_allocated_arg5524 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5524
  %_raw_array5527 = call i64* @oat_alloc_array(i64 4)
  %_array5528 = bitcast i64* %_raw_array5527 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5529 = call i64* @oat_alloc_array(i64 4)
  %_array5530 = bitcast i64* %_raw_array5529 to { i64, [0 x i64] }*
  %_id_of_gep5531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5530, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5531
  %_id_of_gep5533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5530, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5533
  %_id_of_gep5535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5530, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5535
  %_id_of_gep5537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5530, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5537
  %_raw_array5539 = call i64* @oat_alloc_array(i64 4)
  %_array5540 = bitcast i64* %_raw_array5539 to { i64, [0 x i64] }*
  %_id_of_gep5541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5540, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5541
  %_id_of_gep5543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5540, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep5543
  %_id_of_gep5545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5540, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep5545
  %_id_of_gep5547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5540, i32 0, i32 1, i32 3
  store i64 1, i64* %_id_of_gep5547
  %_raw_array5549 = call i64* @oat_alloc_array(i64 4)
  %_array5550 = bitcast i64* %_raw_array5549 to { i64, [0 x i64] }*
  %_id_of_gep5551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5550, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep5551
  %_id_of_gep5553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5550, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep5553
  %_id_of_gep5555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5550, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep5555
  %_id_of_gep5557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5550, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5557
  %_raw_array5559 = call i64* @oat_alloc_array(i64 4)
  %_array5560 = bitcast i64* %_raw_array5559 to { i64, [0 x i64] }*
  %_id_of_gep5561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5561
  %_id_of_gep5563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5563
  %_id_of_gep5565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5565
  %_id_of_gep5567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5567
  %_id_of_gep5569 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5528, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5530, { i64, [0 x i64] }** %_id_of_gep5569
  %_id_of_gep5571 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5528, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5540, { i64, [0 x i64] }** %_id_of_gep5571
  %_id_of_gep5573 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5528, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5550, { i64, [0 x i64] }** %_id_of_gep5573
  %_id_of_gep5575 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5528, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5560, { i64, [0 x i64] }** %_id_of_gep5575
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5528, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5526
  %_raw_array5579 = call i64* @oat_alloc_array(i64 4)
  %_array5580 = bitcast i64* %_raw_array5579 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5581 = call i64* @oat_alloc_array(i64 4)
  %_array5582 = bitcast i64* %_raw_array5581 to { i64, [0 x i64] }*
  %_id_of_gep5583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5582, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5583
  %_id_of_gep5585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5582, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5585
  %_id_of_gep5587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5582, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5587
  %_id_of_gep5589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5582, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5589
  %_raw_array5591 = call i64* @oat_alloc_array(i64 4)
  %_array5592 = bitcast i64* %_raw_array5591 to { i64, [0 x i64] }*
  %_id_of_gep5593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5592, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5593
  %_id_of_gep5595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5592, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5595
  %_id_of_gep5597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5592, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5597
  %_id_of_gep5599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5592, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5599
  %_raw_array5601 = call i64* @oat_alloc_array(i64 4)
  %_array5602 = bitcast i64* %_raw_array5601 to { i64, [0 x i64] }*
  %_id_of_gep5603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5602, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5603
  %_id_of_gep5605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5602, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5605
  %_id_of_gep5607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5602, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5607
  %_id_of_gep5609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5602, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5609
  %_raw_array5611 = call i64* @oat_alloc_array(i64 4)
  %_array5612 = bitcast i64* %_raw_array5611 to { i64, [0 x i64] }*
  %_id_of_gep5613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5612, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5613
  %_id_of_gep5615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5612, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep5615
  %_id_of_gep5617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5612, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep5617
  %_id_of_gep5619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5612, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep5619
  %_id_of_gep5621 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5580, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5582, { i64, [0 x i64] }** %_id_of_gep5621
  %_id_of_gep5623 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5580, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5592, { i64, [0 x i64] }** %_id_of_gep5623
  %_id_of_gep5625 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5580, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5602, { i64, [0 x i64] }** %_id_of_gep5625
  %_id_of_gep5627 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5580, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5612, { i64, [0 x i64] }** %_id_of_gep5627
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5580, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5578
  store i64 0, i64* %_i5630
  br label %_entry5664
_entry5664:
  %_exp_of_id5632 = load i64, i64* %_i5630
  %_exp_of_bop5633 = icmp slt i64 %_exp_of_id5632, 4
  br i1 %_exp_of_bop5633, label %_body5665, label %_exit5666
_body5665:
  %_raw_array5634 = call i64* @oat_alloc_array(i64 4)
  %_array5635 = bitcast i64* %_raw_array5634 to { i64, [0 x i64] }*
  %_exp_of_id5637 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5578
  %_exp_of_id5638 = load i64, i64* %_i5630
  %_id_of_gep_exp5639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5637, i32 0, i32 1, i64 %_exp_of_id5638
  store { i64, [0 x i64] }* %_array5635, { i64, [0 x i64] }** %_id_of_gep_exp5639
  store i64 0, i64* %_j5640
  br label %_entry5658
_entry5658:
  %_exp_of_id5642 = load i64, i64* %_j5640
  %_exp_of_bop5643 = icmp slt i64 %_exp_of_id5642, 4
  br i1 %_exp_of_bop5643, label %_body5659, label %_exit5660
_body5659:
  %_exp_of_id5645 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5526
  %_exp_of_id5646 = load i64, i64* %_i5630
  %_exp_of_id5647 = load i64, i64* %_j5640
  %_exp_of_call5644 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5645, i64 %_exp_of_id5646, i64 %_exp_of_id5647)
  %_exp_of_id5651 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5578
  %_exp_of_id5652 = load i64, i64* %_i5630
  %_id_of_index5649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5651, i32 0, i32 1, i64 %_exp_of_id5652
  %_id_of_load5650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index5649
  %_exp_of_id5653 = load i64, i64* %_j5640
  %_id_of_gep_exp5654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load5650, i32 0, i32 1, i64 %_exp_of_id5653
  store i64 %_exp_of_call5644, i64* %_id_of_gep_exp5654
  %_exp_of_id5655 = load i64, i64* %_j5640
  %_exp_of_bop5656 = add i64 %_exp_of_id5655, 1
  store i64 %_exp_of_bop5656, i64* %_j5640
  br label %_entry5658
_exit5660:
  %_exp_of_id5661 = load i64, i64* %_i5630
  %_exp_of_bop5662 = add i64 %_exp_of_id5661, 1
  store i64 %_exp_of_bop5662, i64* %_i5630
  br label %_entry5664
_exit5666:
  store i64 0, i64* %_i5667
  br label %_entry5694
_entry5694:
  %_exp_of_id5669 = load i64, i64* %_i5667
  %_exp_of_id5670 = load i64, i64* @len
  %_exp_of_bop5671 = icmp slt i64 %_exp_of_id5669, %_exp_of_id5670
  br i1 %_exp_of_bop5671, label %_body5695, label %_exit5696
_body5695:
  store i64 0, i64* %_j5672
  br label %_entry5688
_entry5688:
  %_exp_of_id5674 = load i64, i64* %_j5672
  %_exp_of_id5675 = load i64, i64* @len
  %_exp_of_bop5676 = icmp slt i64 %_exp_of_id5674, %_exp_of_id5675
  br i1 %_exp_of_bop5676, label %_body5689, label %_exit5690
_body5689:
  %_exp_of_id5682 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl5578
  %_exp_of_id5683 = load i64, i64* %_i5667
  %_id_of_index5680 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id5682, i32 0, i32 1, i64 %_exp_of_id5683
  %_id_of_load5681 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index5680
  %_exp_of_id5684 = load i64, i64* %_j5672
  %_id_of_index5678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load5681, i32 0, i32 1, i64 %_exp_of_id5684
  %_id_of_load5679 = load i64, i64* %_id_of_index5678
  call void @print_int(i64 %_id_of_load5679)
  %_exp_of_id5685 = load i64, i64* %_j5672
  %_exp_of_bop5686 = add i64 %_exp_of_id5685, 1
  store i64 %_exp_of_bop5686, i64* %_j5672
  br label %_entry5688
_exit5690:
  %_exp_of_id5691 = load i64, i64* %_i5667
  %_exp_of_bop5692 = add i64 %_exp_of_id5691, 1
  store i64 %_exp_of_bop5692, i64* %_i5667
  br label %_entry5694
_exit5696:
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
