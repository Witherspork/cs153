; generated from: hw4programs/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42
@_const_of_global1182 = global i64 42

define i64 @f(i64 %x) {
  %_allocated_arg1179 = alloca i64
  store i64 %x, i64* %_allocated_arg1179
  %_exp_of_id1181 = load i64, i64* %_allocated_arg1179
  ret i64 %_exp_of_id1181
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_allocated_arg1174 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_allocated_arg1174
  %_exp_of_id1178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg1174
  %_id_of_index1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1178, i32 0, i32 1, i32 2
  %_id_of_load1177 = load i64, i64* %_id_of_index1176
  ret i64 %_id_of_load1177
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1107 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1127 = alloca { i64, [0 x i64] }*
  %_id_of_decl1139 = alloca i64
  %_j1141 = alloca i64
  %_allocated_arg1103 = alloca i64
  store i64 %argc, i64* %_allocated_arg1103
  %_allocated_arg1105 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1105
  %_raw_array1108 = call i64* @oat_alloc_array(i64 2)
  %_array1109 = bitcast i64* %_raw_array1108 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1110 = call i64* @oat_alloc_array(i64 2)
  %_array1111 = bitcast i64* %_raw_array1110 to { i64, [0 x i64] }*
  %_id_of_gep1112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1111, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1112
  %_id_of_gep1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1111, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1114
  %_raw_array1116 = call i64* @oat_alloc_array(i64 2)
  %_array1117 = bitcast i64* %_raw_array1116 to { i64, [0 x i64] }*
  %_id_of_gep1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1117, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep1118
  %_id_of_gep1120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1117, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep1120
  %_id_of_gep1122 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1109, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1111, { i64, [0 x i64] }** %_id_of_gep1122
  %_id_of_gep1124 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1109, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1117, { i64, [0 x i64] }** %_id_of_gep1124
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1109, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1107
  %_raw_array1128 = call i64* @oat_alloc_array(i64 4)
  %_array1129 = bitcast i64* %_raw_array1128 to { i64, [0 x i64] }*
  %_id_of_gep1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1130
  %_id_of_gep1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1132
  %_id_of_gep1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 2
  store i64 3, i64* %_id_of_gep1134
  %_id_of_gep1136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1129, i32 0, i32 1, i32 3
  store i64 4, i64* %_id_of_gep1136
  store { i64, [0 x i64] }* %_array1129, { i64, [0 x i64] }** %_id_of_decl1127
  store i64 0, i64* %_id_of_decl1139
  store i64 0, i64* %_j1141
  br label %_entry1151
_entry1151:
  %_exp_of_id1143 = load i64, i64* %_j1141
  %_exp_of_bop1144 = icmp slt i64 %_exp_of_id1143, 100
  br i1 %_exp_of_bop1144, label %_body1152, label %_exit1153
_body1152:
  %_exp_of_id1145 = load i64, i64* %_id_of_decl1139
  %_exp_of_bop1146 = add i64 %_exp_of_id1145, 1
  store i64 %_exp_of_bop1146, i64* %_id_of_decl1139
  %_exp_of_id1148 = load i64, i64* %_j1141
  %_exp_of_bop1149 = add i64 %_exp_of_id1148, 1
  store i64 %_exp_of_bop1149, i64* %_j1141
  br label %_entry1151
_exit1153:
  %_exp_of_id1155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1127
  %_exp_of_call1154 = call i64 @g({ i64, [0 x i64] }* %_exp_of_id1155)
  %_exp_of_id1157 = load i64, i64* @i
  %_exp_of_call1156 = call i64 @f(i64 %_exp_of_id1157)
  %_exp_of_bop1158 = add i64 %_exp_of_call1154, %_exp_of_call1156
  %_exp_of_id1162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1127
  %_id_of_index1160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1162, i32 0, i32 1, i32 3
  %_id_of_load1161 = load i64, i64* %_id_of_index1160
  %_exp_of_call1159 = call i64 @f(i64 %_id_of_load1161)
  %_exp_of_bop1163 = add i64 %_exp_of_bop1158, %_exp_of_call1159
  %_exp_of_id1169 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1107
  %_id_of_index1167 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1169, i32 0, i32 1, i32 1
  %_id_of_load1168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1167
  %_id_of_index1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1168, i32 0, i32 1, i32 1
  %_id_of_load1166 = load i64, i64* %_id_of_index1165
  %_exp_of_call1164 = call i64 @f(i64 %_id_of_load1166)
  %_exp_of_bop1170 = add i64 %_exp_of_bop1163, %_exp_of_call1164
  %_exp_of_id1172 = load i64, i64* %_id_of_decl1139
  %_exp_of_call1171 = call i64 @f(i64 %_exp_of_id1172)
  %_exp_of_bop1173 = add i64 %_exp_of_bop1170, %_exp_of_call1171
  ret i64 %_exp_of_bop1173
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
