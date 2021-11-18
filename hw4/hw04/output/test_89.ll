; generated from: hw4programs/msort2.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string3884 = global [2 x i8] c" \00"
@_exp_of_string3890 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3852 = alloca { i64, [0 x i64] }*
  %_id_of_decl3876 = alloca i64
  %_allocated_arg3848 = alloca i64
  store i64 %argc, i64* %_allocated_arg3848
  %_allocated_arg3850 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3850
  %_raw_array3853 = call i64* @oat_alloc_array(i64 10)
  %_array3854 = bitcast i64* %_raw_array3853 to { i64, [0 x i64] }*
  %_id_of_gep3855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 0
  store i64 126, i64* %_id_of_gep3855
  %_id_of_gep3857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 1
  store i64 125, i64* %_id_of_gep3857
  %_id_of_gep3859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 2
  store i64 124, i64* %_id_of_gep3859
  %_id_of_gep3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 3
  store i64 123, i64* %_id_of_gep3861
  %_id_of_gep3863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 4
  store i64 122, i64* %_id_of_gep3863
  %_id_of_gep3865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 5
  store i64 121, i64* %_id_of_gep3865
  %_id_of_gep3867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 6
  store i64 120, i64* %_id_of_gep3867
  %_id_of_gep3869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 7
  store i64 119, i64* %_id_of_gep3869
  %_id_of_gep3871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 8
  store i64 118, i64* %_id_of_gep3871
  %_id_of_gep3873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3854, i32 0, i32 1, i32 9
  store i64 117, i64* %_id_of_gep3873
  store { i64, [0 x i64] }* %_array3854, { i64, [0 x i64] }** %_id_of_decl3852
  store i64 0, i64* %_id_of_decl3876
  %_exp_of_id3880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3852
  %_exp_of_call3879 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3880)
  call void @print_string(i8* %_exp_of_call3879)
  %_exp_of_id3882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3852
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3882, i64 0, i64 9)
  %_exp_of_bit3885 = bitcast [2 x i8]* @_exp_of_string3884 to i8*
  call void @print_string(i8* %_exp_of_bit3885)
  %_exp_of_id3888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3852
  %_exp_of_call3887 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3888)
  call void @print_string(i8* %_exp_of_call3887)
  %_exp_of_bit3891 = bitcast [2 x i8]* @_exp_of_string3890 to i8*
  call void @print_string(i8* %_exp_of_bit3891)
  %_exp_of_id3892 = load i64, i64* %_id_of_decl3876
  ret i64 %_exp_of_id3892
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_id_of_decl3821 = alloca i64
  %_allocated_arg3815 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3815
  %_allocated_arg3817 = alloca i64
  store i64 %low, i64* %_allocated_arg3817
  %_allocated_arg3819 = alloca i64
  store i64 %high, i64* %_allocated_arg3819
  store i64 0, i64* %_id_of_decl3821
  %_exp_of_id3823 = load i64, i64* %_allocated_arg3817
  %_exp_of_id3824 = load i64, i64* %_allocated_arg3819
  %_exp_of_bop3825 = icmp slt i64 %_exp_of_id3823, %_exp_of_id3824
  br i1 %_exp_of_bop3825, label %_branch_of_eq3846, label %_branch_of_neq3847
_branch_of_eq3846:
  %_exp_of_id3826 = load i64, i64* %_allocated_arg3817
  %_exp_of_id3827 = load i64, i64* %_allocated_arg3819
  %_exp_of_bop3828 = add i64 %_exp_of_id3826, %_exp_of_id3827
  %_exp_of_bop3829 = lshr i64 %_exp_of_bop3828, 1
  store i64 %_exp_of_bop3829, i64* %_id_of_decl3821
  %_exp_of_id3832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3815
  %_exp_of_id3833 = load i64, i64* %_allocated_arg3817
  %_exp_of_id3834 = load i64, i64* %_id_of_decl3821
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3832, i64 %_exp_of_id3833, i64 %_exp_of_id3834)
  %_exp_of_id3836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3815
  %_exp_of_id3837 = load i64, i64* %_id_of_decl3821
  %_exp_of_bop3838 = add i64 %_exp_of_id3837, 1
  %_exp_of_id3839 = load i64, i64* %_allocated_arg3819
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3836, i64 %_exp_of_bop3838, i64 %_exp_of_id3839)
  %_exp_of_id3841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3815
  %_exp_of_id3842 = load i64, i64* %_allocated_arg3817
  %_exp_of_id3843 = load i64, i64* %_allocated_arg3819
  %_exp_of_id3844 = load i64, i64* %_id_of_decl3821
  call void @merge({ i64, [0 x i64] }* %_exp_of_id3841, i64 %_exp_of_id3842, i64 %_exp_of_id3843, i64 %_exp_of_id3844)
  br label %_merge3845
_branch_of_neq3847:
  br label %_merge3845
_merge3845:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_id_of_decl3689 = alloca i64
  %_id_of_decl3691 = alloca i64
  %_id_of_decl3693 = alloca i64
  %_id_of_decl3695 = alloca { i64, [0 x i64] }*
  %_allocated_arg3681 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3681
  %_allocated_arg3683 = alloca i64
  store i64 %low, i64* %_allocated_arg3683
  %_allocated_arg3685 = alloca i64
  store i64 %high, i64* %_allocated_arg3685
  %_allocated_arg3687 = alloca i64
  store i64 %mid, i64* %_allocated_arg3687
  store i64 0, i64* %_id_of_decl3689
  store i64 0, i64* %_id_of_decl3691
  store i64 0, i64* %_id_of_decl3693
  %_raw_array3696 = call i64* @oat_alloc_array(i64 50)
  %_array3697 = bitcast i64* %_raw_array3696 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3697, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3699 = load i64, i64* %_allocated_arg3683
  store i64 %_exp_of_id3699, i64* %_id_of_decl3689
  %_exp_of_id3701 = load i64, i64* %_allocated_arg3687
  %_exp_of_bop3702 = add i64 %_exp_of_id3701, 1
  store i64 %_exp_of_bop3702, i64* %_id_of_decl3691
  %_exp_of_id3704 = load i64, i64* %_allocated_arg3683
  store i64 %_exp_of_id3704, i64* %_id_of_decl3693
  br label %_entry3753
_entry3753:
  %_exp_of_id3706 = load i64, i64* %_id_of_decl3689
  %_exp_of_id3707 = load i64, i64* %_allocated_arg3687
  %_exp_of_bop3708 = icmp sle i64 %_exp_of_id3706, %_exp_of_id3707
  %_exp_of_id3709 = load i64, i64* %_id_of_decl3691
  %_exp_of_id3710 = load i64, i64* %_allocated_arg3685
  %_exp_of_bop3711 = icmp sle i64 %_exp_of_id3709, %_exp_of_id3710
  %_exp_of_bop3712 = and i1 %_exp_of_bop3708, %_exp_of_bop3711
  br i1 %_exp_of_bop3712, label %_body3754, label %_exit3755
_body3754:
  %_exp_of_id3715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3716 = load i64, i64* %_id_of_decl3689
  %_id_of_index3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3715, i32 0, i32 1, i64 %_exp_of_id3716
  %_id_of_load3714 = load i64, i64* %_id_of_index3713
  %_exp_of_id3719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3720 = load i64, i64* %_id_of_decl3691
  %_id_of_index3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3719, i32 0, i32 1, i64 %_exp_of_id3720
  %_id_of_load3718 = load i64, i64* %_id_of_index3717
  %_exp_of_bop3721 = icmp slt i64 %_id_of_load3714, %_id_of_load3718
  br i1 %_exp_of_bop3721, label %_branch_of_eq3751, label %_branch_of_neq3752
_branch_of_eq3751:
  %_exp_of_id3724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3725 = load i64, i64* %_id_of_decl3689
  %_id_of_index3722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3724, i32 0, i32 1, i64 %_exp_of_id3725
  %_id_of_load3723 = load i64, i64* %_id_of_index3722
  %_exp_of_id3727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3728 = load i64, i64* %_id_of_decl3693
  %_id_of_gep_exp3729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3727, i32 0, i32 1, i64 %_exp_of_id3728
  store i64 %_id_of_load3723, i64* %_id_of_gep_exp3729
  %_exp_of_id3730 = load i64, i64* %_id_of_decl3693
  %_exp_of_bop3731 = add i64 %_exp_of_id3730, 1
  store i64 %_exp_of_bop3731, i64* %_id_of_decl3693
  %_exp_of_id3733 = load i64, i64* %_id_of_decl3689
  %_exp_of_bop3734 = add i64 %_exp_of_id3733, 1
  store i64 %_exp_of_bop3734, i64* %_id_of_decl3689
  br label %_merge3750
_branch_of_neq3752:
  %_exp_of_id3738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3739 = load i64, i64* %_id_of_decl3691
  %_id_of_index3736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3738, i32 0, i32 1, i64 %_exp_of_id3739
  %_id_of_load3737 = load i64, i64* %_id_of_index3736
  %_exp_of_id3741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3742 = load i64, i64* %_id_of_decl3693
  %_id_of_gep_exp3743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3741, i32 0, i32 1, i64 %_exp_of_id3742
  store i64 %_id_of_load3737, i64* %_id_of_gep_exp3743
  %_exp_of_id3744 = load i64, i64* %_id_of_decl3693
  %_exp_of_bop3745 = add i64 %_exp_of_id3744, 1
  store i64 %_exp_of_bop3745, i64* %_id_of_decl3693
  %_exp_of_id3747 = load i64, i64* %_id_of_decl3691
  %_exp_of_bop3748 = add i64 %_exp_of_id3747, 1
  store i64 %_exp_of_bop3748, i64* %_id_of_decl3691
  br label %_merge3750
_merge3750:
  br label %_entry3753
_exit3755:
  br label %_entry3773
_entry3773:
  %_exp_of_id3756 = load i64, i64* %_id_of_decl3689
  %_exp_of_id3757 = load i64, i64* %_allocated_arg3687
  %_exp_of_bop3758 = icmp sle i64 %_exp_of_id3756, %_exp_of_id3757
  br i1 %_exp_of_bop3758, label %_body3774, label %_exit3775
_body3774:
  %_exp_of_id3761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3762 = load i64, i64* %_id_of_decl3689
  %_id_of_index3759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3761, i32 0, i32 1, i64 %_exp_of_id3762
  %_id_of_load3760 = load i64, i64* %_id_of_index3759
  %_exp_of_id3764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3765 = load i64, i64* %_id_of_decl3693
  %_id_of_gep_exp3766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3764, i32 0, i32 1, i64 %_exp_of_id3765
  store i64 %_id_of_load3760, i64* %_id_of_gep_exp3766
  %_exp_of_id3767 = load i64, i64* %_id_of_decl3693
  %_exp_of_bop3768 = add i64 %_exp_of_id3767, 1
  store i64 %_exp_of_bop3768, i64* %_id_of_decl3693
  %_exp_of_id3770 = load i64, i64* %_id_of_decl3689
  %_exp_of_bop3771 = add i64 %_exp_of_id3770, 1
  store i64 %_exp_of_bop3771, i64* %_id_of_decl3689
  br label %_entry3773
_exit3775:
  br label %_entry3793
_entry3793:
  %_exp_of_id3776 = load i64, i64* %_id_of_decl3691
  %_exp_of_id3777 = load i64, i64* %_allocated_arg3685
  %_exp_of_bop3778 = icmp sle i64 %_exp_of_id3776, %_exp_of_id3777
  br i1 %_exp_of_bop3778, label %_body3794, label %_exit3795
_body3794:
  %_exp_of_id3781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3782 = load i64, i64* %_id_of_decl3691
  %_id_of_index3779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3781, i32 0, i32 1, i64 %_exp_of_id3782
  %_id_of_load3780 = load i64, i64* %_id_of_index3779
  %_exp_of_id3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3785 = load i64, i64* %_id_of_decl3693
  %_id_of_gep_exp3786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3784, i32 0, i32 1, i64 %_exp_of_id3785
  store i64 %_id_of_load3780, i64* %_id_of_gep_exp3786
  %_exp_of_id3787 = load i64, i64* %_id_of_decl3693
  %_exp_of_bop3788 = add i64 %_exp_of_id3787, 1
  store i64 %_exp_of_bop3788, i64* %_id_of_decl3693
  %_exp_of_id3790 = load i64, i64* %_id_of_decl3691
  %_exp_of_bop3791 = add i64 %_exp_of_id3790, 1
  store i64 %_exp_of_bop3791, i64* %_id_of_decl3691
  br label %_entry3793
_exit3795:
  %_exp_of_id3796 = load i64, i64* %_allocated_arg3683
  store i64 %_exp_of_id3796, i64* %_id_of_decl3689
  br label %_entry3812
_entry3812:
  %_exp_of_id3798 = load i64, i64* %_id_of_decl3689
  %_exp_of_id3799 = load i64, i64* %_id_of_decl3693
  %_exp_of_bop3800 = icmp slt i64 %_exp_of_id3798, %_exp_of_id3799
  br i1 %_exp_of_bop3800, label %_body3813, label %_exit3814
_body3813:
  %_exp_of_id3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3695
  %_exp_of_id3804 = load i64, i64* %_id_of_decl3689
  %_id_of_index3801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3803, i32 0, i32 1, i64 %_exp_of_id3804
  %_id_of_load3802 = load i64, i64* %_id_of_index3801
  %_exp_of_id3806 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3681
  %_exp_of_id3807 = load i64, i64* %_id_of_decl3689
  %_id_of_gep_exp3808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3806, i32 0, i32 1, i64 %_exp_of_id3807
  store i64 %_id_of_load3802, i64* %_id_of_gep_exp3808
  %_exp_of_id3809 = load i64, i64* %_id_of_decl3689
  %_exp_of_bop3810 = add i64 %_exp_of_id3809, 1
  store i64 %_exp_of_bop3810, i64* %_id_of_decl3689
  br label %_entry3812
_exit3814:
  ret void
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
