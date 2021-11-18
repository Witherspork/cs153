; generated from: hw4programs/count_sort.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string4685 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_id_of_decl4837 = alloca i64
  %_i4842 = alloca i64
  %_allocated_arg4833 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg4833
  %_allocated_arg4835 = alloca i64
  store i64 %len, i64* %_allocated_arg4835
  %_exp_of_id4840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4833
  %_id_of_index4838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4840, i32 0, i32 1, i32 0
  %_id_of_load4839 = load i64, i64* %_id_of_index4838
  store i64 %_id_of_load4839, i64* %_id_of_decl4837
  store i64 0, i64* %_i4842
  br label %_entry4864
_entry4864:
  %_exp_of_id4844 = load i64, i64* %_i4842
  %_exp_of_id4845 = load i64, i64* %_allocated_arg4835
  %_exp_of_bop4846 = icmp slt i64 %_exp_of_id4844, %_exp_of_id4845
  br i1 %_exp_of_bop4846, label %_body4865, label %_exit4866
_body4865:
  %_exp_of_id4849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4833
  %_exp_of_id4850 = load i64, i64* %_i4842
  %_id_of_index4847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4849, i32 0, i32 1, i64 %_exp_of_id4850
  %_id_of_load4848 = load i64, i64* %_id_of_index4847
  %_exp_of_id4851 = load i64, i64* %_id_of_decl4837
  %_exp_of_bop4852 = icmp slt i64 %_id_of_load4848, %_exp_of_id4851
  br i1 %_exp_of_bop4852, label %_branch_of_eq4859, label %_branch_of_neq4860
_branch_of_eq4859:
  %_exp_of_id4855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4833
  %_exp_of_id4856 = load i64, i64* %_i4842
  %_id_of_index4853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4855, i32 0, i32 1, i64 %_exp_of_id4856
  %_id_of_load4854 = load i64, i64* %_id_of_index4853
  store i64 %_id_of_load4854, i64* %_id_of_decl4837
  br label %_merge4858
_branch_of_neq4860:
  br label %_merge4858
_merge4858:
  %_exp_of_id4861 = load i64, i64* %_i4842
  %_exp_of_bop4862 = add i64 %_exp_of_id4861, 1
  store i64 %_exp_of_bop4862, i64* %_i4842
  br label %_entry4864
_exit4866:
  %_exp_of_id4867 = load i64, i64* %_id_of_decl4837
  ret i64 %_exp_of_id4867
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_id_of_decl4802 = alloca i64
  %_i4807 = alloca i64
  %_allocated_arg4798 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg4798
  %_allocated_arg4800 = alloca i64
  store i64 %len, i64* %_allocated_arg4800
  %_exp_of_id4805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4798
  %_id_of_index4803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4805, i32 0, i32 1, i32 0
  %_id_of_load4804 = load i64, i64* %_id_of_index4803
  store i64 %_id_of_load4804, i64* %_id_of_decl4802
  store i64 0, i64* %_i4807
  br label %_entry4829
_entry4829:
  %_exp_of_id4809 = load i64, i64* %_i4807
  %_exp_of_id4810 = load i64, i64* %_allocated_arg4800
  %_exp_of_bop4811 = icmp slt i64 %_exp_of_id4809, %_exp_of_id4810
  br i1 %_exp_of_bop4811, label %_body4830, label %_exit4831
_body4830:
  %_exp_of_id4814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4798
  %_exp_of_id4815 = load i64, i64* %_i4807
  %_id_of_index4812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4814, i32 0, i32 1, i64 %_exp_of_id4815
  %_id_of_load4813 = load i64, i64* %_id_of_index4812
  %_exp_of_id4816 = load i64, i64* %_id_of_decl4802
  %_exp_of_bop4817 = icmp sgt i64 %_id_of_load4813, %_exp_of_id4816
  br i1 %_exp_of_bop4817, label %_branch_of_eq4824, label %_branch_of_neq4825
_branch_of_eq4824:
  %_exp_of_id4820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4798
  %_exp_of_id4821 = load i64, i64* %_i4807
  %_id_of_index4818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4820, i32 0, i32 1, i64 %_exp_of_id4821
  %_id_of_load4819 = load i64, i64* %_id_of_index4818
  store i64 %_id_of_load4819, i64* %_id_of_decl4802
  br label %_merge4823
_branch_of_neq4825:
  br label %_merge4823
_merge4823:
  %_exp_of_id4826 = load i64, i64* %_i4807
  %_exp_of_bop4827 = add i64 %_exp_of_id4826, 1
  store i64 %_exp_of_bop4827, i64* %_i4807
  br label %_entry4829
_exit4831:
  %_exp_of_id4832 = load i64, i64* %_id_of_decl4802
  ret i64 %_exp_of_id4832
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_id_of_decl4699 = alloca i64
  %_id_of_decl4704 = alloca i64
  %_id_of_decl4709 = alloca { i64, [0 x i64] }*
  %_i4717 = alloca i64
  %_id_of_decl4747 = alloca i64
  %_id_of_decl4750 = alloca i64
  %_id_of_decl4752 = alloca { i64, [0 x i64] }*
  %_allocated_arg4695 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg4695
  %_allocated_arg4697 = alloca i64
  store i64 %len, i64* %_allocated_arg4697
  %_exp_of_id4701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4695
  %_exp_of_id4702 = load i64, i64* %_allocated_arg4697
  %_exp_of_call4700 = call i64 @min({ i64, [0 x i64] }* %_exp_of_id4701, i64 %_exp_of_id4702)
  store i64 %_exp_of_call4700, i64* %_id_of_decl4699
  %_exp_of_id4706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4695
  %_exp_of_id4707 = load i64, i64* %_allocated_arg4697
  %_exp_of_call4705 = call i64 @max({ i64, [0 x i64] }* %_exp_of_id4706, i64 %_exp_of_id4707)
  store i64 %_exp_of_call4705, i64* %_id_of_decl4704
  %_exp_of_id4710 = load i64, i64* %_id_of_decl4704
  %_exp_of_id4711 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4712 = sub i64 %_exp_of_id4710, %_exp_of_id4711
  %_exp_of_bop4713 = add i64 %_exp_of_bop4712, 1
  %_raw_array4714 = call i64* @oat_alloc_array(i64 %_exp_of_bop4713)
  %_array4715 = bitcast i64* %_raw_array4714 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4715, { i64, [0 x i64] }** %_id_of_decl4709
  store i64 0, i64* %_i4717
  br label %_entry4744
_entry4744:
  %_exp_of_id4719 = load i64, i64* %_i4717
  %_exp_of_id4720 = load i64, i64* %_allocated_arg4697
  %_exp_of_bop4721 = icmp slt i64 %_exp_of_id4719, %_exp_of_id4720
  br i1 %_exp_of_bop4721, label %_body4745, label %_exit4746
_body4745:
  %_exp_of_id4724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4709
  %_exp_of_id4727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4695
  %_exp_of_id4728 = load i64, i64* %_i4717
  %_id_of_index4725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4727, i32 0, i32 1, i64 %_exp_of_id4728
  %_id_of_load4726 = load i64, i64* %_id_of_index4725
  %_exp_of_id4729 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4730 = sub i64 %_id_of_load4726, %_exp_of_id4729
  %_id_of_index4722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4724, i32 0, i32 1, i64 %_exp_of_bop4730
  %_id_of_load4723 = load i64, i64* %_id_of_index4722
  %_exp_of_bop4731 = add i64 %_id_of_load4723, 1
  %_exp_of_id4733 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4709
  %_exp_of_id4736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4695
  %_exp_of_id4737 = load i64, i64* %_i4717
  %_id_of_index4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4736, i32 0, i32 1, i64 %_exp_of_id4737
  %_id_of_load4735 = load i64, i64* %_id_of_index4734
  %_exp_of_id4738 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4739 = sub i64 %_id_of_load4735, %_exp_of_id4738
  %_id_of_gep_exp4740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4733, i32 0, i32 1, i64 %_exp_of_bop4739
  store i64 %_exp_of_bop4731, i64* %_id_of_gep_exp4740
  %_exp_of_id4741 = load i64, i64* %_i4717
  %_exp_of_bop4742 = add i64 %_exp_of_id4741, 1
  store i64 %_exp_of_bop4742, i64* %_i4717
  br label %_entry4744
_exit4746:
  %_exp_of_id4748 = load i64, i64* %_id_of_decl4699
  store i64 %_exp_of_id4748, i64* %_id_of_decl4747
  store i64 0, i64* %_id_of_decl4750
  %_exp_of_id4753 = load i64, i64* %_allocated_arg4697
  %_raw_array4754 = call i64* @oat_alloc_array(i64 %_exp_of_id4753)
  %_array4755 = bitcast i64* %_raw_array4754 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4755, { i64, [0 x i64] }** %_id_of_decl4752
  br label %_entry4794
_entry4794:
  %_exp_of_id4757 = load i64, i64* %_id_of_decl4747
  %_exp_of_id4758 = load i64, i64* %_id_of_decl4704
  %_exp_of_bop4759 = icmp sle i64 %_exp_of_id4757, %_exp_of_id4758
  br i1 %_exp_of_bop4759, label %_body4795, label %_exit4796
_body4795:
  %_exp_of_id4762 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4709
  %_exp_of_id4763 = load i64, i64* %_id_of_decl4747
  %_exp_of_id4764 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4765 = sub i64 %_exp_of_id4763, %_exp_of_id4764
  %_id_of_index4760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4762, i32 0, i32 1, i64 %_exp_of_bop4765
  %_id_of_load4761 = load i64, i64* %_id_of_index4760
  %_exp_of_bop4766 = icmp sgt i64 %_id_of_load4761, 0
  br i1 %_exp_of_bop4766, label %_branch_of_eq4792, label %_branch_of_neq4793
_branch_of_eq4792:
  %_exp_of_id4767 = load i64, i64* %_id_of_decl4747
  %_exp_of_id4769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4752
  %_exp_of_id4770 = load i64, i64* %_id_of_decl4750
  %_id_of_gep_exp4771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4769, i32 0, i32 1, i64 %_exp_of_id4770
  store i64 %_exp_of_id4767, i64* %_id_of_gep_exp4771
  %_exp_of_id4774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4709
  %_exp_of_id4775 = load i64, i64* %_id_of_decl4747
  %_exp_of_id4776 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4777 = sub i64 %_exp_of_id4775, %_exp_of_id4776
  %_id_of_index4772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4774, i32 0, i32 1, i64 %_exp_of_bop4777
  %_id_of_load4773 = load i64, i64* %_id_of_index4772
  %_exp_of_bop4778 = sub i64 %_id_of_load4773, 1
  %_exp_of_id4780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4709
  %_exp_of_id4781 = load i64, i64* %_id_of_decl4747
  %_exp_of_id4782 = load i64, i64* %_id_of_decl4699
  %_exp_of_bop4783 = sub i64 %_exp_of_id4781, %_exp_of_id4782
  %_id_of_gep_exp4784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4780, i32 0, i32 1, i64 %_exp_of_bop4783
  store i64 %_exp_of_bop4778, i64* %_id_of_gep_exp4784
  %_exp_of_id4785 = load i64, i64* %_id_of_decl4750
  %_exp_of_bop4786 = add i64 %_exp_of_id4785, 1
  store i64 %_exp_of_bop4786, i64* %_id_of_decl4750
  br label %_merge4791
_branch_of_neq4793:
  %_exp_of_id4788 = load i64, i64* %_id_of_decl4747
  %_exp_of_bop4789 = add i64 %_exp_of_id4788, 1
  store i64 %_exp_of_bop4789, i64* %_id_of_decl4747
  br label %_merge4791
_merge4791:
  br label %_entry4794
_exit4796:
  %_exp_of_id4797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4752
  ret { i64, [0 x i64] }* %_exp_of_id4797
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4657 = alloca { i64, [0 x i64] }*
  %_id_of_decl4679 = alloca i64
  %_id_of_decl4687 = alloca { i64, [0 x i64] }*
  %_allocated_arg4653 = alloca i64
  store i64 %argc, i64* %_allocated_arg4653
  %_allocated_arg4655 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4655
  %_raw_array4658 = call i64* @oat_alloc_array(i64 9)
  %_array4659 = bitcast i64* %_raw_array4658 to { i64, [0 x i64] }*
  %_id_of_gep4660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 0
  store i64 65, i64* %_id_of_gep4660
  %_id_of_gep4662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 1
  store i64 70, i64* %_id_of_gep4662
  %_id_of_gep4664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 2
  store i64 72, i64* %_id_of_gep4664
  %_id_of_gep4666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 3
  store i64 90, i64* %_id_of_gep4666
  %_id_of_gep4668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 4
  store i64 65, i64* %_id_of_gep4668
  %_id_of_gep4670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 5
  store i64 65, i64* %_id_of_gep4670
  %_id_of_gep4672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 6
  store i64 69, i64* %_id_of_gep4672
  %_id_of_gep4674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 7
  store i64 89, i64* %_id_of_gep4674
  %_id_of_gep4676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4659, i32 0, i32 1, i32 8
  store i64 67, i64* %_id_of_gep4676
  store { i64, [0 x i64] }* %_array4659, { i64, [0 x i64] }** %_id_of_decl4657
  store i64 9, i64* %_id_of_decl4679
  %_exp_of_id4683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4657
  %_exp_of_call4682 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id4683)
  call void @print_string(i8* %_exp_of_call4682)
  %_exp_of_bit4686 = bitcast [2 x i8]* @_exp_of_string4685 to i8*
  call void @print_string(i8* %_exp_of_bit4686)
  %_exp_of_id4689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4657
  %_exp_of_id4690 = load i64, i64* %_id_of_decl4679
  %_exp_of_call4688 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_exp_of_id4689, i64 %_exp_of_id4690)
  store { i64, [0 x i64] }* %_exp_of_call4688, { i64, [0 x i64] }** %_id_of_decl4687
  %_exp_of_id4694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4687
  %_exp_of_call4693 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id4694)
  call void @print_string(i8* %_exp_of_call4693)
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
