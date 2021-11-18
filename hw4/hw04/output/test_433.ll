; generated from: hw4programs/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_const_of_global5946 to { i64, [0 x i64] }*)
@_const_of_global5947 = global i64 0
@_const_of_global5946 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_exp_of_string5860 = global [1 x i8] c"\00"
@_exp_of_string5836 = global [7 x i8] c"TOMATO\00"
@_exp_of_string5840 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_id_of_decl5865 = alloca { i64, [0 x i64] }*
  %_id_of_decl5869 = alloca { i64, [0 x i64] }*
  %_id_of_decl5873 = alloca i64
  %_id_of_decl5879 = alloca i64
  %_id_of_decl5888 = alloca i8*
  %_id_of_decl5904 = alloca i8*
  %_id_of_decl5914 = alloca i8*
  %_id_of_decl5922 = alloca i8*
  %_id_of_decl5930 = alloca i64
  %_id_of_decl5934 = alloca i64
  %_allocated_arg5847 = alloca i64
  store i64 %i, i64* %_allocated_arg5847
  %_allocated_arg5849 = alloca i64
  store i64 %j, i64* %_allocated_arg5849
  %_allocated_arg5851 = alloca i8*
  store i8* %a, i8** %_allocated_arg5851
  %_allocated_arg5853 = alloca i8*
  store i8* %b, i8** %_allocated_arg5853
  %_exp_of_id5855 = load i64, i64* %_allocated_arg5847
  %_exp_of_bop5856 = icmp slt i64 %_exp_of_id5855, 0
  %_exp_of_id5857 = load i64, i64* %_allocated_arg5849
  %_exp_of_bop5858 = icmp slt i64 %_exp_of_id5857, 0
  %_exp_of_bop5859 = or i1 %_exp_of_bop5856, %_exp_of_bop5858
  br i1 %_exp_of_bop5859, label %_branch_of_eq5863, label %_branch_of_neq5864
_branch_of_eq5863:
  %_exp_of_bit5861 = bitcast [1 x i8]* @_exp_of_string5860 to i8*
  ret i8* %_exp_of_bit5861
_branch_of_neq5864:
  br label %_merge5862
_merge5862:
  %_exp_of_id5867 = load i8*, i8** %_allocated_arg5851
  %_exp_of_call5866 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id5867)
  store { i64, [0 x i64] }* %_exp_of_call5866, { i64, [0 x i64] }** %_id_of_decl5865
  %_exp_of_id5871 = load i8*, i8** %_allocated_arg5853
  %_exp_of_call5870 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id5871)
  store { i64, [0 x i64] }* %_exp_of_call5870, { i64, [0 x i64] }** %_id_of_decl5869
  %_exp_of_id5876 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5865
  %_exp_of_id5877 = load i64, i64* %_allocated_arg5847
  %_id_of_index5874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5876, i32 0, i32 1, i64 %_exp_of_id5877
  %_id_of_load5875 = load i64, i64* %_id_of_index5874
  store i64 %_id_of_load5875, i64* %_id_of_decl5873
  %_exp_of_id5882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5869
  %_exp_of_id5883 = load i64, i64* %_allocated_arg5849
  %_id_of_index5880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5882, i32 0, i32 1, i64 %_exp_of_id5883
  %_id_of_load5881 = load i64, i64* %_id_of_index5880
  store i64 %_id_of_load5881, i64* %_id_of_decl5879
  %_exp_of_id5885 = load i64, i64* %_id_of_decl5873
  %_exp_of_id5886 = load i64, i64* %_id_of_decl5879
  %_exp_of_bop5887 = icmp eq i64 %_exp_of_id5885, %_exp_of_id5886
  br i1 %_exp_of_bop5887, label %_branch_of_eq5912, label %_branch_of_neq5913
_branch_of_eq5912:
  %_exp_of_id5890 = load i64, i64* %_allocated_arg5847
  %_exp_of_bop5891 = sub i64 %_exp_of_id5890, 1
  %_exp_of_id5892 = load i64, i64* %_allocated_arg5849
  %_exp_of_bop5893 = sub i64 %_exp_of_id5892, 1
  %_exp_of_id5894 = load i8*, i8** %_allocated_arg5851
  %_exp_of_id5895 = load i8*, i8** %_allocated_arg5853
  %_exp_of_call5889 = call i8* @lcs(i64 %_exp_of_bop5891, i64 %_exp_of_bop5893, i8* %_exp_of_id5894, i8* %_exp_of_id5895)
  store i8* %_exp_of_call5889, i8** %_id_of_decl5888
  %_exp_of_id5899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5865
  %_exp_of_id5900 = load i64, i64* %_allocated_arg5847
  %_id_of_index5897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5899, i32 0, i32 1, i64 %_exp_of_id5900
  %_id_of_load5898 = load i64, i64* %_id_of_index5897
  %_exp_of_id5902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_id_of_gep_exp5903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5902, i32 0, i32 1, i32 0
  store i64 %_id_of_load5898, i64* %_id_of_gep_exp5903
  %_exp_of_id5906 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_exp_of_call5905 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id5906)
  store i8* %_exp_of_call5905, i8** %_id_of_decl5904
  %_exp_of_id5909 = load i8*, i8** %_id_of_decl5888
  %_exp_of_id5910 = load i8*, i8** %_id_of_decl5904
  %_exp_of_call5908 = call i8* @string_cat(i8* %_exp_of_id5909, i8* %_exp_of_id5910)
  ret i8* %_exp_of_call5908
_branch_of_neq5913:
  br label %_merge5911
_merge5911:
  %_exp_of_id5916 = load i64, i64* %_allocated_arg5847
  %_exp_of_id5917 = load i64, i64* %_allocated_arg5849
  %_exp_of_bop5918 = sub i64 %_exp_of_id5917, 1
  %_exp_of_id5919 = load i8*, i8** %_allocated_arg5851
  %_exp_of_id5920 = load i8*, i8** %_allocated_arg5853
  %_exp_of_call5915 = call i8* @lcs(i64 %_exp_of_id5916, i64 %_exp_of_bop5918, i8* %_exp_of_id5919, i8* %_exp_of_id5920)
  store i8* %_exp_of_call5915, i8** %_id_of_decl5914
  %_exp_of_id5924 = load i64, i64* %_allocated_arg5847
  %_exp_of_bop5925 = sub i64 %_exp_of_id5924, 1
  %_exp_of_id5926 = load i64, i64* %_allocated_arg5849
  %_exp_of_id5927 = load i8*, i8** %_allocated_arg5851
  %_exp_of_id5928 = load i8*, i8** %_allocated_arg5853
  %_exp_of_call5923 = call i8* @lcs(i64 %_exp_of_bop5925, i64 %_exp_of_id5926, i8* %_exp_of_id5927, i8* %_exp_of_id5928)
  store i8* %_exp_of_call5923, i8** %_id_of_decl5922
  %_exp_of_id5932 = load i8*, i8** %_id_of_decl5914
  %_exp_of_call5931 = call i64 @length_of_string(i8* %_exp_of_id5932)
  store i64 %_exp_of_call5931, i64* %_id_of_decl5930
  %_exp_of_id5936 = load i8*, i8** %_id_of_decl5922
  %_exp_of_call5935 = call i64 @length_of_string(i8* %_exp_of_id5936)
  store i64 %_exp_of_call5935, i64* %_id_of_decl5934
  %_exp_of_id5938 = load i64, i64* %_id_of_decl5930
  %_exp_of_id5939 = load i64, i64* %_id_of_decl5934
  %_exp_of_bop5940 = icmp slt i64 %_exp_of_id5938, %_exp_of_id5939
  br i1 %_exp_of_bop5940, label %_branch_of_eq5944, label %_branch_of_neq5945
_branch_of_eq5944:
  %_exp_of_id5941 = load i8*, i8** %_id_of_decl5922
  ret i8* %_exp_of_id5941
_branch_of_neq5945:
  %_exp_of_id5942 = load i8*, i8** %_id_of_decl5914
  ret i8* %_exp_of_id5942
_merge5943:
  ret i8* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5835 = alloca i8*
  %_id_of_decl5839 = alloca i8*
  %_allocated_arg5831 = alloca i64
  store i64 %argc, i64* %_allocated_arg5831
  %_allocated_arg5833 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5833
  %_exp_of_bit5837 = bitcast [7 x i8]* @_exp_of_string5836 to i8*
  store i8* %_exp_of_bit5837, i8** %_id_of_decl5835
  %_exp_of_bit5841 = bitcast [8 x i8]* @_exp_of_string5840 to i8*
  store i8* %_exp_of_bit5841, i8** %_id_of_decl5839
  %_exp_of_id5845 = load i8*, i8** %_id_of_decl5835
  %_exp_of_id5846 = load i8*, i8** %_id_of_decl5839
  %_exp_of_call5844 = call i8* @lcs(i64 5, i64 6, i8* %_exp_of_id5845, i8* %_exp_of_id5846)
  call void @print_string(i8* %_exp_of_call5844)
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
