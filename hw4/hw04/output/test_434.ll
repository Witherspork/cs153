; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_id_of_decl6017 = alloca { i64, [0 x i64] }*
  %_i6023 = alloca i64
  %_id_of_decl6040 = alloca i1
  %_i6055 = alloca i64
  %_allocated_arg6011 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_allocated_arg6011
  %_allocated_arg6013 = alloca i64
  store i64 %len, i64* %_allocated_arg6013
  %_allocated_arg6015 = alloca i64
  store i64 %insertee, i64* %_allocated_arg6015
  %_exp_of_id6018 = load i64, i64* %_allocated_arg6013
  %_exp_of_bop6019 = add i64 %_exp_of_id6018, 1
  %_raw_array6020 = call i64* @oat_alloc_array(i64 %_exp_of_bop6019)
  %_array6021 = bitcast i64* %_raw_array6020 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6021, { i64, [0 x i64] }** %_id_of_decl6017
  store i64 0, i64* %_i6023
  br label %_entry6037
_entry6037:
  %_exp_of_id6025 = load i64, i64* %_i6023
  %_exp_of_id6026 = load i64, i64* %_allocated_arg6013
  %_exp_of_bop6027 = add i64 %_exp_of_id6026, 1
  %_exp_of_bop6028 = icmp slt i64 %_exp_of_id6025, %_exp_of_bop6027
  br i1 %_exp_of_bop6028, label %_body6038, label %_exit6039
_body6038:
  %_id_of_uop6029 = sub i64 0, 1
  %_exp_of_id6031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_exp_of_id6032 = load i64, i64* %_i6023
  %_id_of_gep_exp6033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6031, i32 0, i32 1, i64 %_exp_of_id6032
  store i64 %_id_of_uop6029, i64* %_id_of_gep_exp6033
  %_exp_of_id6034 = load i64, i64* %_i6023
  %_exp_of_bop6035 = add i64 %_exp_of_id6034, 1
  store i64 %_exp_of_bop6035, i64* %_i6023
  br label %_entry6037
_exit6039:
  store i1 1, i1* %_id_of_decl6040
  %_exp_of_id6042 = load i64, i64* %_allocated_arg6015
  %_exp_of_id6045 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6011
  %_id_of_index6043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6045, i32 0, i32 1, i32 0
  %_id_of_load6044 = load i64, i64* %_id_of_index6043
  %_exp_of_bop6046 = icmp slt i64 %_exp_of_id6042, %_id_of_load6044
  br i1 %_exp_of_bop6046, label %_branch_of_eq6053, label %_branch_of_neq6054
_branch_of_eq6053:
  store i1 0, i1* %_id_of_decl6040
  %_exp_of_id6048 = load i64, i64* %_allocated_arg6015
  %_exp_of_id6050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_id_of_gep_exp6051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6050, i32 0, i32 1, i32 0
  store i64 %_exp_of_id6048, i64* %_id_of_gep_exp6051
  br label %_merge6052
_branch_of_neq6054:
  br label %_merge6052
_merge6052:
  store i64 0, i64* %_i6055
  br label %_entry6108
_entry6108:
  %_exp_of_id6057 = load i64, i64* %_i6055
  %_exp_of_id6058 = load i64, i64* %_allocated_arg6013
  %_exp_of_bop6059 = icmp slt i64 %_exp_of_id6057, %_exp_of_id6058
  br i1 %_exp_of_bop6059, label %_body6109, label %_exit6110
_body6109:
  %_exp_of_id6060 = load i1, i1* %_id_of_decl6040
  br i1 %_exp_of_id6060, label %_branch_of_eq6103, label %_branch_of_neq6104
_branch_of_eq6103:
  %_exp_of_id6061 = load i64, i64* %_allocated_arg6015
  %_exp_of_id6064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6011
  %_exp_of_id6065 = load i64, i64* %_i6055
  %_id_of_index6062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6064, i32 0, i32 1, i64 %_exp_of_id6065
  %_id_of_load6063 = load i64, i64* %_id_of_index6062
  %_exp_of_bop6066 = icmp sgt i64 %_exp_of_id6061, %_id_of_load6063
  br i1 %_exp_of_bop6066, label %_branch_of_eq6091, label %_branch_of_neq6092
_branch_of_eq6091:
  store i1 0, i1* %_id_of_decl6040
  %_exp_of_id6068 = load i64, i64* %_allocated_arg6015
  %_exp_of_id6070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_exp_of_id6071 = load i64, i64* %_i6055
  %_exp_of_bop6072 = add i64 %_exp_of_id6071, 1
  %_id_of_gep_exp6073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6070, i32 0, i32 1, i64 %_exp_of_bop6072
  store i64 %_exp_of_id6068, i64* %_id_of_gep_exp6073
  %_exp_of_id6076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6011
  %_exp_of_id6077 = load i64, i64* %_i6055
  %_id_of_index6074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6076, i32 0, i32 1, i64 %_exp_of_id6077
  %_id_of_load6075 = load i64, i64* %_id_of_index6074
  %_exp_of_id6079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_exp_of_id6080 = load i64, i64* %_i6055
  %_id_of_gep_exp6081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6079, i32 0, i32 1, i64 %_exp_of_id6080
  store i64 %_id_of_load6075, i64* %_id_of_gep_exp6081
  br label %_merge6090
_branch_of_neq6092:
  %_exp_of_id6084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6011
  %_exp_of_id6085 = load i64, i64* %_i6055
  %_id_of_index6082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6084, i32 0, i32 1, i64 %_exp_of_id6085
  %_id_of_load6083 = load i64, i64* %_id_of_index6082
  %_exp_of_id6087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_exp_of_id6088 = load i64, i64* %_i6055
  %_id_of_gep_exp6089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6087, i32 0, i32 1, i64 %_exp_of_id6088
  store i64 %_id_of_load6083, i64* %_id_of_gep_exp6089
  br label %_merge6090
_merge6090:
  br label %_merge6102
_branch_of_neq6104:
  %_exp_of_id6095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6011
  %_exp_of_id6096 = load i64, i64* %_i6055
  %_id_of_index6093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6095, i32 0, i32 1, i64 %_exp_of_id6096
  %_id_of_load6094 = load i64, i64* %_id_of_index6093
  %_exp_of_id6098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  %_exp_of_id6099 = load i64, i64* %_i6055
  %_exp_of_bop6100 = add i64 %_exp_of_id6099, 1
  %_id_of_gep_exp6101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6098, i32 0, i32 1, i64 %_exp_of_bop6100
  store i64 %_id_of_load6094, i64* %_id_of_gep_exp6101
  br label %_merge6102
_merge6102:
  %_exp_of_id6105 = load i64, i64* %_i6055
  %_exp_of_bop6106 = add i64 %_exp_of_id6105, 1
  store i64 %_exp_of_bop6106, i64* %_i6055
  br label %_entry6108
_exit6110:
  %_exp_of_id6111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6017
  ret { i64, [0 x i64] }* %_exp_of_id6111
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_id_of_decl5979 = alloca { i64, [0 x i64] }*
  %_i5991 = alloca i64
  %_allocated_arg5975 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_allocated_arg5975
  %_allocated_arg5977 = alloca i64
  store i64 %len, i64* %_allocated_arg5977
  %_raw_array5980 = call i64* @oat_alloc_array(i64 1)
  %_array5981 = bitcast i64* %_raw_array5980 to { i64, [0 x i64] }*
  %_id_of_gep5982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5981, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep5982
  store { i64, [0 x i64] }* %_array5981, { i64, [0 x i64] }** %_id_of_decl5979
  %_exp_of_id5987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5975
  %_id_of_index5985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5987, i32 0, i32 1, i32 0
  %_id_of_load5986 = load i64, i64* %_id_of_index5985
  %_exp_of_id5989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5979
  %_id_of_gep_exp5990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5989, i32 0, i32 1, i32 0
  store i64 %_id_of_load5986, i64* %_id_of_gep_exp5990
  store i64 1, i64* %_i5991
  br label %_entry6007
_entry6007:
  %_exp_of_id5993 = load i64, i64* %_i5991
  %_exp_of_id5994 = load i64, i64* %_allocated_arg5977
  %_exp_of_bop5995 = icmp slt i64 %_exp_of_id5993, %_exp_of_id5994
  br i1 %_exp_of_bop5995, label %_body6008, label %_exit6009
_body6008:
  %_exp_of_id5997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5979
  %_exp_of_id5998 = load i64, i64* %_i5991
  %_exp_of_id6001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5975
  %_exp_of_id6002 = load i64, i64* %_i5991
  %_id_of_index5999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6001, i32 0, i32 1, i64 %_exp_of_id6002
  %_id_of_load6000 = load i64, i64* %_id_of_index5999
  %_exp_of_call5996 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_exp_of_id5997, i64 %_exp_of_id5998, i64 %_id_of_load6000)
  store { i64, [0 x i64] }* %_exp_of_call5996, { i64, [0 x i64] }** %_id_of_decl5979
  %_exp_of_id6004 = load i64, i64* %_i5991
  %_exp_of_bop6005 = add i64 %_exp_of_id6004, 1
  store i64 %_exp_of_bop6005, i64* %_i5991
  br label %_entry6007
_exit6009:
  %_exp_of_id6010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5979
  ret { i64, [0 x i64] }* %_exp_of_id6010
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5952 = alloca { i64, [0 x i64] }*
  %_id_of_decl5968 = alloca { i64, [0 x i64] }*
  %_allocated_arg5948 = alloca i64
  store i64 %argc, i64* %_allocated_arg5948
  %_allocated_arg5950 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5950
  %_raw_array5953 = call i64* @oat_alloc_array(i64 6)
  %_array5954 = bitcast i64* %_raw_array5953 to { i64, [0 x i64] }*
  %_id_of_gep5955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 0
  store i64 13, i64* %_id_of_gep5955
  %_id_of_gep5957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 1
  store i64 42, i64* %_id_of_gep5957
  %_id_of_gep5959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 2
  store i64 32, i64* %_id_of_gep5959
  %_id_of_gep5961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 3
  store i64 3, i64* %_id_of_gep5961
  %_id_of_gep5963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 4
  store i64 2, i64* %_id_of_gep5963
  %_id_of_gep5965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5954, i32 0, i32 1, i32 5
  store i64 6, i64* %_id_of_gep5965
  store { i64, [0 x i64] }* %_array5954, { i64, [0 x i64] }** %_id_of_decl5952
  %_exp_of_id5970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5952
  %_exp_of_call5969 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_exp_of_id5970, i64 6)
  store { i64, [0 x i64] }* %_exp_of_call5969, { i64, [0 x i64] }** %_id_of_decl5968
  %_exp_of_id5974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5968
  %_id_of_index5972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5974, i32 0, i32 1, i32 5
  %_id_of_load5973 = load i64, i64* %_id_of_index5972
  ret i64 %_id_of_load5973
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
