; generated from: hw4programs/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0
@_const_of_global1219 = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_id_of_decl1201 = alloca i64
  %_allocated_arg1197 = alloca i64
  store i64 %x, i64* %_allocated_arg1197
  %_allocated_arg1199 = alloca i64
  store i64 %y, i64* %_allocated_arg1199
  store i64 0, i64* %_id_of_decl1201
  %_exp_of_id1203 = load i64, i64* %_allocated_arg1197
  %_exp_of_bop1204 = icmp sge i64 %_exp_of_id1203, 1
  br i1 %_exp_of_bop1204, label %_branch_of_eq1216, label %_branch_of_neq1217
_branch_of_eq1216:
  %_exp_of_id1206 = load i64, i64* %_allocated_arg1197
  %_exp_of_bop1207 = sub i64 %_exp_of_id1206, 1
  %_exp_of_id1208 = load i64, i64* %_allocated_arg1199
  %_exp_of_call1205 = call i64 @f(i64 %_exp_of_bop1207, i64 %_exp_of_id1208)
  %_exp_of_bop1209 = add i64 1, %_exp_of_call1205
  store i64 %_exp_of_bop1209, i64* %_id_of_decl1201
  br label %_merge1215
_branch_of_neq1217:
  %_exp_of_id1211 = load i64, i64* %_allocated_arg1197
  %_exp_of_id1212 = load i64, i64* %_allocated_arg1199
  %_exp_of_bop1213 = add i64 %_exp_of_id1211, %_exp_of_id1212
  store i64 %_exp_of_bop1213, i64* %_id_of_decl1201
  br label %_merge1215
_merge1215:
  %_exp_of_id1218 = load i64, i64* %_id_of_decl1201
  ret i64 %_exp_of_id1218
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1188 = alloca i64
  %_id_of_decl1190 = alloca i64
  %_allocated_arg1184 = alloca i64
  store i64 %argc, i64* %_allocated_arg1184
  %_allocated_arg1186 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1186
  store i64 3, i64* %_id_of_decl1188
  store i64 3, i64* %_id_of_decl1190
  %_exp_of_id1193 = load i64, i64* %_id_of_decl1188
  %_exp_of_id1194 = load i64, i64* %_id_of_decl1190
  %_exp_of_call1192 = call i64 @f(i64 %_exp_of_id1193, i64 %_exp_of_id1194)
  %_exp_of_id1195 = load i64, i64* @i
  %_exp_of_bop1196 = add i64 %_exp_of_call1192, %_exp_of_id1195
  ret i64 %_exp_of_bop1196
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
