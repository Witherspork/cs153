; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_allocated_arg5143 = alloca i64
  store i64 %x, i64* %_allocated_arg5143
  %_allocated_arg5145 = alloca i64
  store i64 %y, i64* %_allocated_arg5145
  %_exp_of_id5147 = load i64, i64* %_allocated_arg5143
  %_exp_of_id5148 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5149 = icmp eq i64 %_exp_of_id5147, %_exp_of_id5148
  br i1 %_exp_of_bop5149, label %_branch_of_eq5152, label %_branch_of_neq5153
_branch_of_eq5152:
  %_exp_of_id5150 = load i64, i64* %_allocated_arg5143
  ret i64 %_exp_of_id5150
_branch_of_neq5153:
  br label %_merge5151
_merge5151:
  %_exp_of_id5154 = load i64, i64* %_allocated_arg5143
  %_exp_of_bop5155 = icmp eq i64 %_exp_of_id5154, 0
  br i1 %_exp_of_bop5155, label %_branch_of_eq5158, label %_branch_of_neq5159
_branch_of_eq5158:
  %_exp_of_id5156 = load i64, i64* %_allocated_arg5145
  ret i64 %_exp_of_id5156
_branch_of_neq5159:
  br label %_merge5157
_merge5157:
  %_exp_of_id5160 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5161 = icmp eq i64 %_exp_of_id5160, 0
  br i1 %_exp_of_bop5161, label %_branch_of_eq5164, label %_branch_of_neq5165
_branch_of_eq5164:
  %_exp_of_id5162 = load i64, i64* %_allocated_arg5143
  ret i64 %_exp_of_id5162
_branch_of_neq5165:
  br label %_merge5163
_merge5163:
  %_exp_of_id5166 = load i64, i64* %_allocated_arg5143
  %_id_of_uop5167 = xor i64 %_exp_of_id5166, -1
  %_exp_of_bop5168 = and i64 %_id_of_uop5167, 1
  %_exp_of_bop5169 = icmp eq i64 %_exp_of_bop5168, 1
  br i1 %_exp_of_bop5169, label %_branch_of_eq5187, label %_branch_of_neq5188
_branch_of_eq5187:
  %_exp_of_id5170 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5171 = and i64 %_exp_of_id5170, 1
  %_exp_of_bop5172 = icmp eq i64 %_exp_of_bop5171, 1
  br i1 %_exp_of_bop5172, label %_branch_of_eq5184, label %_branch_of_neq5185
_branch_of_eq5184:
  %_exp_of_id5174 = load i64, i64* %_allocated_arg5143
  %_exp_of_bop5175 = lshr i64 %_exp_of_id5174, 1
  %_exp_of_id5176 = load i64, i64* %_allocated_arg5145
  %_exp_of_call5173 = call i64 @binary_gcd(i64 %_exp_of_bop5175, i64 %_exp_of_id5176)
  ret i64 %_exp_of_call5173
_branch_of_neq5185:
  %_exp_of_id5178 = load i64, i64* %_allocated_arg5143
  %_exp_of_bop5179 = lshr i64 %_exp_of_id5178, 1
  %_exp_of_id5180 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5181 = lshr i64 %_exp_of_id5180, 1
  %_exp_of_call5177 = call i64 @binary_gcd(i64 %_exp_of_bop5179, i64 %_exp_of_bop5181)
  %_exp_of_bop5182 = shl i64 %_exp_of_call5177, 1
  ret i64 %_exp_of_bop5182
_merge5183:
  br label %_merge5186
_branch_of_neq5188:
  br label %_merge5186
_merge5186:
  %_exp_of_id5189 = load i64, i64* %_allocated_arg5145
  %_id_of_uop5190 = xor i64 %_exp_of_id5189, -1
  %_exp_of_bop5191 = and i64 %_id_of_uop5190, 1
  %_exp_of_bop5192 = icmp eq i64 %_exp_of_bop5191, 1
  br i1 %_exp_of_bop5192, label %_branch_of_eq5198, label %_branch_of_neq5199
_branch_of_eq5198:
  %_exp_of_id5194 = load i64, i64* %_allocated_arg5143
  %_exp_of_id5195 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5196 = lshr i64 %_exp_of_id5195, 1
  %_exp_of_call5193 = call i64 @binary_gcd(i64 %_exp_of_id5194, i64 %_exp_of_bop5196)
  ret i64 %_exp_of_call5193
_branch_of_neq5199:
  br label %_merge5197
_merge5197:
  %_exp_of_id5200 = load i64, i64* %_allocated_arg5143
  %_exp_of_id5201 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5202 = icmp sgt i64 %_exp_of_id5200, %_exp_of_id5201
  br i1 %_exp_of_bop5202, label %_branch_of_eq5210, label %_branch_of_neq5211
_branch_of_eq5210:
  %_exp_of_id5204 = load i64, i64* %_allocated_arg5143
  %_exp_of_id5205 = load i64, i64* %_allocated_arg5145
  %_exp_of_bop5206 = sub i64 %_exp_of_id5204, %_exp_of_id5205
  %_exp_of_bop5207 = lshr i64 %_exp_of_bop5206, 1
  %_exp_of_id5208 = load i64, i64* %_allocated_arg5145
  %_exp_of_call5203 = call i64 @binary_gcd(i64 %_exp_of_bop5207, i64 %_exp_of_id5208)
  ret i64 %_exp_of_call5203
_branch_of_neq5211:
  br label %_merge5209
_merge5209:
  %_exp_of_id5213 = load i64, i64* %_allocated_arg5145
  %_exp_of_id5214 = load i64, i64* %_allocated_arg5143
  %_exp_of_bop5215 = sub i64 %_exp_of_id5213, %_exp_of_id5214
  %_exp_of_bop5216 = lshr i64 %_exp_of_bop5215, 1
  %_exp_of_id5217 = load i64, i64* %_allocated_arg5143
  %_exp_of_call5212 = call i64 @binary_gcd(i64 %_exp_of_bop5216, i64 %_exp_of_id5217)
  ret i64 %_exp_of_call5212
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5136 = alloca i64
  %_id_of_decl5138 = alloca i64
  %_allocated_arg5132 = alloca i64
  store i64 %argc, i64* %_allocated_arg5132
  %_allocated_arg5134 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5134
  store i64 21, i64* %_id_of_decl5136
  store i64 15, i64* %_id_of_decl5138
  %_exp_of_id5141 = load i64, i64* %_id_of_decl5136
  %_exp_of_id5142 = load i64, i64* %_id_of_decl5138
  %_exp_of_call5140 = call i64 @binary_gcd(i64 %_exp_of_id5141, i64 %_exp_of_id5142)
  ret i64 %_exp_of_call5140
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
