; generated from: hw4programs/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_id_of_decl5051 = alloca i64
  %_id_of_decl5055 = alloca i64
  %_id_of_decl5059 = alloca i64
  %_id_of_decl5061 = alloca i64
  %_allocated_arg5045 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_allocated_arg5045
  %_allocated_arg5047 = alloca i64
  store i64 %i, i64* %_allocated_arg5047
  %_allocated_arg5049 = alloca i64
  store i64 %len, i64* %_allocated_arg5049
  %_exp_of_id5052 = load i64, i64* %_allocated_arg5047
  %_exp_of_bop5053 = mul i64 %_exp_of_id5052, 2
  store i64 %_exp_of_bop5053, i64* %_id_of_decl5051
  %_exp_of_id5056 = load i64, i64* %_allocated_arg5047
  %_exp_of_bop5057 = add i64 %_exp_of_id5056, 1
  store i64 %_exp_of_bop5057, i64* %_id_of_decl5055
  store i64 0, i64* %_id_of_decl5059
  %_exp_of_id5062 = load i64, i64* %_allocated_arg5047
  store i64 %_exp_of_id5062, i64* %_id_of_decl5061
  %_exp_of_id5064 = load i64, i64* %_id_of_decl5051
  %_exp_of_id5065 = load i64, i64* %_allocated_arg5049
  %_exp_of_bop5066 = icmp slt i64 %_exp_of_id5064, %_exp_of_id5065
  br i1 %_exp_of_bop5066, label %_branch_of_eq5082, label %_branch_of_neq5083
_branch_of_eq5082:
  %_exp_of_id5069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5070 = load i64, i64* %_id_of_decl5051
  %_id_of_index5067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5069, i32 0, i32 1, i64 %_exp_of_id5070
  %_id_of_load5068 = load i64, i64* %_id_of_index5067
  %_exp_of_id5073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5074 = load i64, i64* %_id_of_decl5061
  %_id_of_index5071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5073, i32 0, i32 1, i64 %_exp_of_id5074
  %_id_of_load5072 = load i64, i64* %_id_of_index5071
  %_exp_of_bop5075 = icmp sgt i64 %_id_of_load5068, %_id_of_load5072
  br i1 %_exp_of_bop5075, label %_branch_of_eq5079, label %_branch_of_neq5080
_branch_of_eq5079:
  %_exp_of_id5076 = load i64, i64* %_id_of_decl5051
  store i64 %_exp_of_id5076, i64* %_id_of_decl5061
  br label %_merge5078
_branch_of_neq5080:
  br label %_merge5078
_merge5078:
  br label %_merge5081
_branch_of_neq5083:
  br label %_merge5081
_merge5081:
  %_exp_of_id5084 = load i64, i64* %_id_of_decl5055
  %_exp_of_id5085 = load i64, i64* %_allocated_arg5049
  %_exp_of_bop5086 = icmp slt i64 %_exp_of_id5084, %_exp_of_id5085
  br i1 %_exp_of_bop5086, label %_branch_of_eq5102, label %_branch_of_neq5103
_branch_of_eq5102:
  %_exp_of_id5089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5090 = load i64, i64* %_id_of_decl5055
  %_id_of_index5087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5089, i32 0, i32 1, i64 %_exp_of_id5090
  %_id_of_load5088 = load i64, i64* %_id_of_index5087
  %_exp_of_id5093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5094 = load i64, i64* %_id_of_decl5061
  %_id_of_index5091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5093, i32 0, i32 1, i64 %_exp_of_id5094
  %_id_of_load5092 = load i64, i64* %_id_of_index5091
  %_exp_of_bop5095 = icmp sgt i64 %_id_of_load5088, %_id_of_load5092
  br i1 %_exp_of_bop5095, label %_branch_of_eq5099, label %_branch_of_neq5100
_branch_of_eq5099:
  %_exp_of_id5096 = load i64, i64* %_id_of_decl5055
  store i64 %_exp_of_id5096, i64* %_id_of_decl5061
  br label %_merge5098
_branch_of_neq5100:
  br label %_merge5098
_merge5098:
  br label %_merge5101
_branch_of_neq5103:
  br label %_merge5101
_merge5101:
  %_exp_of_id5104 = load i64, i64* %_id_of_decl5061
  %_exp_of_id5105 = load i64, i64* %_allocated_arg5047
  %_exp_of_bop5106 = icmp ne i64 %_exp_of_id5104, %_exp_of_id5105
  br i1 %_exp_of_bop5106, label %_branch_of_eq5130, label %_branch_of_neq5131
_branch_of_eq5130:
  %_exp_of_id5109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5110 = load i64, i64* %_allocated_arg5047
  %_id_of_index5107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5109, i32 0, i32 1, i64 %_exp_of_id5110
  %_id_of_load5108 = load i64, i64* %_id_of_index5107
  store i64 %_id_of_load5108, i64* %_id_of_decl5059
  %_exp_of_id5114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5115 = load i64, i64* %_id_of_decl5061
  %_id_of_index5112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5114, i32 0, i32 1, i64 %_exp_of_id5115
  %_id_of_load5113 = load i64, i64* %_id_of_index5112
  %_exp_of_id5117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5118 = load i64, i64* %_allocated_arg5047
  %_id_of_gep_exp5119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5117, i32 0, i32 1, i64 %_exp_of_id5118
  store i64 %_id_of_load5113, i64* %_id_of_gep_exp5119
  %_exp_of_id5120 = load i64, i64* %_id_of_decl5059
  %_exp_of_id5122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5123 = load i64, i64* %_id_of_decl5061
  %_id_of_gep_exp5124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5122, i32 0, i32 1, i64 %_exp_of_id5123
  store i64 %_exp_of_id5120, i64* %_id_of_gep_exp5124
  %_exp_of_id5126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5045
  %_exp_of_id5127 = load i64, i64* %_id_of_decl5061
  %_exp_of_id5128 = load i64, i64* %_allocated_arg5049
  call void @min_heapify({ i64, [0 x i64] }* %_exp_of_id5126, i64 %_exp_of_id5127, i64 %_exp_of_id5128)
  br label %_merge5129
_branch_of_neq5131:
  br label %_merge5129
_merge5129:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_i5031 = alloca i64
  %_allocated_arg5026 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_allocated_arg5026
  %_allocated_arg5028 = alloca i64
  store i64 %len, i64* %_allocated_arg5028
  %_exp_of_id5030 = load i64, i64* %_allocated_arg5028
  store i64 %_exp_of_id5030, i64* %_i5031
  br label %_entry5042
_entry5042:
  %_exp_of_id5033 = load i64, i64* %_i5031
  %_exp_of_bop5034 = icmp sge i64 %_exp_of_id5033, 1
  br i1 %_exp_of_bop5034, label %_body5043, label %_exit5044
_body5043:
  %_exp_of_id5036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5026
  %_exp_of_id5037 = load i64, i64* %_i5031
  %_exp_of_id5038 = load i64, i64* %_allocated_arg5028
  call void @min_heapify({ i64, [0 x i64] }* %_exp_of_id5036, i64 %_exp_of_id5037, i64 %_exp_of_id5038)
  %_exp_of_id5039 = load i64, i64* %_i5031
  %_exp_of_bop5040 = sub i64 %_exp_of_id5039, 1
  store i64 %_exp_of_bop5040, i64* %_i5031
  br label %_entry5042
_exit5044:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4946 = alloca { i64, [0 x i64] }*
  %_id_of_decl4972 = alloca { i64, [0 x i64] }*
  %_id_of_decl5000 = alloca i64
  %_i5002 = alloca i64
  %_allocated_arg4942 = alloca i64
  store i64 %argc, i64* %_allocated_arg4942
  %_allocated_arg4944 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4944
  %_raw_array4947 = call i64* @oat_alloc_array(i64 11)
  %_array4948 = bitcast i64* %_raw_array4947 to { i64, [0 x i64] }*
  %_id_of_gep4949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep4949
  %_id_of_gep4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 1
  store i64 9, i64* %_id_of_gep4951
  %_id_of_gep4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep4953
  %_id_of_gep4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 3
  store i64 2, i64* %_id_of_gep4955
  %_id_of_gep4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 4
  store i64 8, i64* %_id_of_gep4957
  %_id_of_gep4959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 5
  store i64 10, i64* %_id_of_gep4959
  %_id_of_gep4961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 6
  store i64 7, i64* %_id_of_gep4961
  %_id_of_gep4963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 7
  store i64 3, i64* %_id_of_gep4963
  %_id_of_gep4965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 8
  store i64 6, i64* %_id_of_gep4965
  %_id_of_gep4967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 9
  store i64 4, i64* %_id_of_gep4967
  %_id_of_gep4969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 10
  store i64 5, i64* %_id_of_gep4969
  store { i64, [0 x i64] }* %_array4948, { i64, [0 x i64] }** %_id_of_decl4946
  %_raw_array4973 = call i64* @oat_alloc_array(i64 11)
  %_array4974 = bitcast i64* %_raw_array4973 to { i64, [0 x i64] }*
  %_id_of_gep4975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep4975
  %_id_of_gep4977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep4977
  %_id_of_gep4979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 2
  store i64 4, i64* %_id_of_gep4979
  %_id_of_gep4981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 3
  store i64 2, i64* %_id_of_gep4981
  %_id_of_gep4983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 4
  store i64 8, i64* %_id_of_gep4983
  %_id_of_gep4985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 5
  store i64 5, i64* %_id_of_gep4985
  %_id_of_gep4987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 6
  store i64 7, i64* %_id_of_gep4987
  %_id_of_gep4989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 7
  store i64 3, i64* %_id_of_gep4989
  %_id_of_gep4991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 8
  store i64 6, i64* %_id_of_gep4991
  %_id_of_gep4993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 9
  store i64 9, i64* %_id_of_gep4993
  %_id_of_gep4995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4974, i32 0, i32 1, i32 10
  store i64 10, i64* %_id_of_gep4995
  store { i64, [0 x i64] }* %_array4974, { i64, [0 x i64] }** %_id_of_decl4972
  %_exp_of_id4999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4946
  call void @make_min_heap({ i64, [0 x i64] }* %_exp_of_id4999, i64 10)
  store i64 0, i64* %_id_of_decl5000
  store i64 0, i64* %_i5002
  br label %_entry5022
_entry5022:
  %_exp_of_id5004 = load i64, i64* %_i5002
  %_exp_of_bop5005 = icmp slt i64 %_exp_of_id5004, 11
  br i1 %_exp_of_bop5005, label %_body5023, label %_exit5024
_body5023:
  %_exp_of_id5008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4946
  %_exp_of_id5009 = load i64, i64* %_i5002
  %_id_of_index5006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5008, i32 0, i32 1, i64 %_exp_of_id5009
  %_id_of_load5007 = load i64, i64* %_id_of_index5006
  %_exp_of_id5012 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4972
  %_exp_of_id5013 = load i64, i64* %_i5002
  %_id_of_index5010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5012, i32 0, i32 1, i64 %_exp_of_id5013
  %_id_of_load5011 = load i64, i64* %_id_of_index5010
  %_exp_of_bop5014 = icmp ne i64 %_id_of_load5007, %_id_of_load5011
  br i1 %_exp_of_bop5014, label %_branch_of_eq5017, label %_branch_of_neq5018
_branch_of_eq5017:
  store i64 1, i64* %_id_of_decl5000
  br label %_merge5016
_branch_of_neq5018:
  br label %_merge5016
_merge5016:
  %_exp_of_id5019 = load i64, i64* %_i5002
  %_exp_of_bop5020 = add i64 %_exp_of_id5019, 1
  store i64 %_exp_of_bop5020, i64* %_i5002
  br label %_entry5022
_exit5024:
  %_exp_of_id5025 = load i64, i64* %_id_of_decl5000
  ret i64 %_exp_of_id5025
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
