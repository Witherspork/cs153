; generated from: hw4programs/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_allocated_arg4923 = alloca i64
  store i64 %n, i64* %_allocated_arg4923
  %_exp_of_id4925 = load i64, i64* %_allocated_arg4923
  %_exp_of_bop4926 = icmp eq i64 %_exp_of_id4925, 0
  br i1 %_exp_of_bop4926, label %_branch_of_eq4928, label %_branch_of_neq4929
_branch_of_eq4928:
  ret i64 0
_branch_of_neq4929:
  br label %_merge4927
_merge4927:
  %_exp_of_id4930 = load i64, i64* %_allocated_arg4923
  %_exp_of_bop4931 = icmp eq i64 %_exp_of_id4930, 1
  br i1 %_exp_of_bop4931, label %_branch_of_eq4933, label %_branch_of_neq4934
_branch_of_eq4933:
  ret i64 1
_branch_of_neq4934:
  br label %_merge4932
_merge4932:
  %_exp_of_id4936 = load i64, i64* %_allocated_arg4923
  %_exp_of_bop4937 = sub i64 %_exp_of_id4936, 1
  %_exp_of_call4935 = call i64 @fibR(i64 %_exp_of_bop4937)
  %_exp_of_id4939 = load i64, i64* %_allocated_arg4923
  %_exp_of_bop4940 = sub i64 %_exp_of_id4939, 2
  %_exp_of_call4938 = call i64 @fibR(i64 %_exp_of_bop4940)
  %_exp_of_bop4941 = add i64 %_exp_of_call4935, %_exp_of_call4938
  ret i64 %_exp_of_bop4941
}

define i64 @fibI(i64 %n) {
  %_id_of_decl4886 = alloca i64
  %_id_of_decl4888 = alloca i64
  %_id_of_decl4905 = alloca i64
  %_allocated_arg4884 = alloca i64
  store i64 %n, i64* %_allocated_arg4884
  store i64 0, i64* %_id_of_decl4886
  store i64 1, i64* %_id_of_decl4888
  %_exp_of_id4890 = load i64, i64* %_allocated_arg4884
  %_exp_of_bop4891 = icmp eq i64 %_exp_of_id4890, 0
  br i1 %_exp_of_bop4891, label %_branch_of_eq4894, label %_branch_of_neq4895
_branch_of_eq4894:
  %_exp_of_id4892 = load i64, i64* %_id_of_decl4886
  ret i64 %_exp_of_id4892
_branch_of_neq4895:
  br label %_merge4893
_merge4893:
  %_exp_of_id4896 = load i64, i64* %_allocated_arg4884
  %_exp_of_bop4897 = icmp eq i64 %_exp_of_id4896, 1
  br i1 %_exp_of_bop4897, label %_branch_of_eq4900, label %_branch_of_neq4901
_branch_of_eq4900:
  %_exp_of_id4898 = load i64, i64* %_id_of_decl4888
  ret i64 %_exp_of_id4898
_branch_of_neq4901:
  br label %_merge4899
_merge4899:
  br label %_entry4917
_entry4917:
  %_exp_of_id4902 = load i64, i64* %_allocated_arg4884
  %_exp_of_bop4903 = sub i64 %_exp_of_id4902, 2
  %_exp_of_bop4904 = icmp sgt i64 %_exp_of_bop4903, 0
  br i1 %_exp_of_bop4904, label %_body4918, label %_exit4919
_body4918:
  %_exp_of_id4906 = load i64, i64* %_id_of_decl4888
  store i64 %_exp_of_id4906, i64* %_id_of_decl4905
  %_exp_of_id4908 = load i64, i64* %_id_of_decl4888
  %_exp_of_id4909 = load i64, i64* %_id_of_decl4886
  %_exp_of_bop4910 = add i64 %_exp_of_id4908, %_exp_of_id4909
  store i64 %_exp_of_bop4910, i64* %_id_of_decl4888
  %_exp_of_id4912 = load i64, i64* %_id_of_decl4905
  store i64 %_exp_of_id4912, i64* %_id_of_decl4886
  %_exp_of_id4914 = load i64, i64* %_allocated_arg4884
  %_exp_of_bop4915 = sub i64 %_exp_of_id4914, 1
  store i64 %_exp_of_bop4915, i64* %_allocated_arg4884
  br label %_entry4917
_exit4919:
  %_exp_of_id4920 = load i64, i64* %_id_of_decl4886
  %_exp_of_id4921 = load i64, i64* %_id_of_decl4888
  %_exp_of_bop4922 = add i64 %_exp_of_id4920, %_exp_of_id4921
  ret i64 %_exp_of_bop4922
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4872 = alloca i64
  %_allocated_arg4868 = alloca i64
  store i64 %argc, i64* %_allocated_arg4868
  %_allocated_arg4870 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4870
  store i64 1, i64* %_id_of_decl4872
  %_exp_of_call4874 = call i64 @fibR(i64 12)
  %_exp_of_bop4875 = icmp eq i64 %_exp_of_call4874, 144
  %_exp_of_call4876 = call i64 @fibI(i64 12)
  %_exp_of_bop4877 = icmp eq i64 %_exp_of_call4876, 144
  %_exp_of_bop4878 = and i1 %_exp_of_bop4875, %_exp_of_bop4877
  br i1 %_exp_of_bop4878, label %_branch_of_eq4881, label %_branch_of_neq4882
_branch_of_eq4881:
  store i64 0, i64* %_id_of_decl4872
  br label %_merge4880
_branch_of_neq4882:
  br label %_merge4880
_merge4880:
  %_exp_of_id4883 = load i64, i64* %_id_of_decl4872
  ret i64 %_exp_of_id4883
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
