; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_id_of_decl3982 = alloca i64
  %_id_of_decl3985 = alloca i64
  %_id_of_decl3991 = alloca i64
  %_allocated_arg3976 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3976
  %_allocated_arg3978 = alloca i64
  store i64 %s, i64* %_allocated_arg3978
  %_allocated_arg3980 = alloca i64
  store i64 %b, i64* %_allocated_arg3980
  %_exp_of_id3983 = load i64, i64* %_allocated_arg3978
  store i64 %_exp_of_id3983, i64* %_id_of_decl3982
  %_exp_of_id3988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3976
  %_exp_of_id3989 = load i64, i64* %_allocated_arg3978
  %_id_of_index3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3988, i32 0, i32 1, i64 %_exp_of_id3989
  %_id_of_load3987 = load i64, i64* %_id_of_index3986
  store i64 %_id_of_load3987, i64* %_id_of_decl3985
  %_exp_of_id3992 = load i64, i64* %_allocated_arg3978
  store i64 %_exp_of_id3992, i64* %_id_of_decl3991
  br label %_entry4016
_entry4016:
  %_exp_of_id3994 = load i64, i64* %_id_of_decl3982
  %_exp_of_id3995 = load i64, i64* %_allocated_arg3980
  %_exp_of_bop3996 = icmp slt i64 %_exp_of_id3994, %_exp_of_id3995
  br i1 %_exp_of_bop3996, label %_body4017, label %_exit4018
_body4017:
  %_exp_of_id3999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3976
  %_exp_of_id4000 = load i64, i64* %_id_of_decl3982
  %_id_of_index3997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3999, i32 0, i32 1, i64 %_exp_of_id4000
  %_id_of_load3998 = load i64, i64* %_id_of_index3997
  %_exp_of_id4001 = load i64, i64* %_id_of_decl3985
  %_exp_of_bop4002 = icmp slt i64 %_id_of_load3998, %_exp_of_id4001
  br i1 %_exp_of_bop4002, label %_branch_of_eq4011, label %_branch_of_neq4012
_branch_of_eq4011:
  %_exp_of_id4005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3976
  %_exp_of_id4006 = load i64, i64* %_id_of_decl3982
  %_id_of_index4003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4005, i32 0, i32 1, i64 %_exp_of_id4006
  %_id_of_load4004 = load i64, i64* %_id_of_index4003
  store i64 %_id_of_load4004, i64* %_id_of_decl3985
  %_exp_of_id4008 = load i64, i64* %_id_of_decl3982
  store i64 %_exp_of_id4008, i64* %_id_of_decl3991
  br label %_merge4010
_branch_of_neq4012:
  br label %_merge4010
_merge4010:
  %_exp_of_id4013 = load i64, i64* %_id_of_decl3982
  %_exp_of_bop4014 = add i64 %_exp_of_id4013, 1
  store i64 %_exp_of_bop4014, i64* %_id_of_decl3982
  br label %_entry4016
_exit4018:
  %_exp_of_id4019 = load i64, i64* %_id_of_decl3991
  ret i64 %_exp_of_id4019
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_id_of_decl3938 = alloca i64
  %_id_of_decl3940 = alloca i64
  %_i3942 = alloca i64
  %_allocated_arg3934 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3934
  %_allocated_arg3936 = alloca i64
  store i64 %s, i64* %_allocated_arg3936
  store i64 0, i64* %_id_of_decl3938
  store i64 0, i64* %_id_of_decl3940
  store i64 0, i64* %_i3942
  br label %_entry3973
_entry3973:
  %_exp_of_id3944 = load i64, i64* %_i3942
  %_exp_of_id3945 = load i64, i64* %_allocated_arg3936
  %_exp_of_bop3946 = icmp slt i64 %_exp_of_id3944, %_exp_of_id3945
  br i1 %_exp_of_bop3946, label %_body3974, label %_exit3975
_body3974:
  %_exp_of_id3948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3934
  %_exp_of_id3949 = load i64, i64* %_i3942
  %_exp_of_id3950 = load i64, i64* %_allocated_arg3936
  %_exp_of_call3947 = call i64 @getminindex({ i64, [0 x i64] }* %_exp_of_id3948, i64 %_exp_of_id3949, i64 %_exp_of_id3950)
  store i64 %_exp_of_call3947, i64* %_id_of_decl3940
  %_exp_of_id3954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3934
  %_exp_of_id3955 = load i64, i64* %_i3942
  %_id_of_index3952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3954, i32 0, i32 1, i64 %_exp_of_id3955
  %_id_of_load3953 = load i64, i64* %_id_of_index3952
  store i64 %_id_of_load3953, i64* %_id_of_decl3938
  %_exp_of_id3959 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3934
  %_exp_of_id3960 = load i64, i64* %_id_of_decl3940
  %_id_of_index3957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3959, i32 0, i32 1, i64 %_exp_of_id3960
  %_id_of_load3958 = load i64, i64* %_id_of_index3957
  %_exp_of_id3962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3934
  %_exp_of_id3963 = load i64, i64* %_i3942
  %_id_of_gep_exp3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3962, i32 0, i32 1, i64 %_exp_of_id3963
  store i64 %_id_of_load3958, i64* %_id_of_gep_exp3964
  %_exp_of_id3965 = load i64, i64* %_id_of_decl3938
  %_exp_of_id3967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3934
  %_exp_of_id3968 = load i64, i64* %_id_of_decl3940
  %_id_of_gep_exp3969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3967, i32 0, i32 1, i64 %_exp_of_id3968
  store i64 %_exp_of_id3965, i64* %_id_of_gep_exp3969
  %_exp_of_id3970 = load i64, i64* %_i3942
  %_exp_of_bop3971 = add i64 %_exp_of_id3970, 1
  store i64 %_exp_of_bop3971, i64* %_i3942
  br label %_entry3973
_exit3975:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3897 = alloca { i64, [0 x i64] }*
  %_i3919 = alloca i64
  %_allocated_arg3893 = alloca i64
  store i64 %argc, i64* %_allocated_arg3893
  %_allocated_arg3895 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3895
  %_raw_array3898 = call i64* @oat_alloc_array(i64 8)
  %_array3899 = bitcast i64* %_raw_array3898 to { i64, [0 x i64] }*
  %_id_of_gep3900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 0
  store i64 5, i64* %_id_of_gep3900
  %_id_of_gep3902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 1
  store i64 200, i64* %_id_of_gep3902
  %_id_of_gep3904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep3904
  %_id_of_gep3906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 3
  store i64 65, i64* %_id_of_gep3906
  %_id_of_gep3908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 4
  store i64 30, i64* %_id_of_gep3908
  %_id_of_gep3910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 5
  store i64 99, i64* %_id_of_gep3910
  %_id_of_gep3912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 6
  store i64 2, i64* %_id_of_gep3912
  %_id_of_gep3914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3899, i32 0, i32 1, i32 7
  store i64 0, i64* %_id_of_gep3914
  store { i64, [0 x i64] }* %_array3899, { i64, [0 x i64] }** %_id_of_decl3897
  %_exp_of_id3918 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3897
  call void @selectionsort({ i64, [0 x i64] }* %_exp_of_id3918, i64 8)
  store i64 0, i64* %_i3919
  br label %_entry3931
_entry3931:
  %_exp_of_id3921 = load i64, i64* %_i3919
  %_exp_of_bop3922 = icmp slt i64 %_exp_of_id3921, 8
  br i1 %_exp_of_bop3922, label %_body3932, label %_exit3933
_body3932:
  %_exp_of_id3926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3897
  %_exp_of_id3927 = load i64, i64* %_i3919
  %_id_of_index3924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3926, i32 0, i32 1, i64 %_exp_of_id3927
  %_id_of_load3925 = load i64, i64* %_id_of_index3924
  call void @print_int(i64 %_id_of_load3925)
  %_exp_of_id3928 = load i64, i64* %_i3919
  %_exp_of_bop3929 = add i64 %_exp_of_id3928, 1
  store i64 %_exp_of_bop3929, i64* %_i3919
  br label %_entry3931
_exit3933:
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
