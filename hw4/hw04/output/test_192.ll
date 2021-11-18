; generated from: hw4programs/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_id_of_decl3340 = alloca i64
  %_allocated_arg3334 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3334
  %_allocated_arg3336 = alloca i64
  store i64 %l, i64* %_allocated_arg3336
  %_allocated_arg3338 = alloca i64
  store i64 %r, i64* %_allocated_arg3338
  store i64 0, i64* %_id_of_decl3340
  %_exp_of_id3342 = load i64, i64* %_allocated_arg3336
  %_exp_of_id3343 = load i64, i64* %_allocated_arg3338
  %_exp_of_bop3344 = icmp slt i64 %_exp_of_id3342, %_exp_of_id3343
  br i1 %_exp_of_bop3344, label %_branch_of_eq3361, label %_branch_of_neq3362
_branch_of_eq3361:
  %_exp_of_id3346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3334
  %_exp_of_id3347 = load i64, i64* %_allocated_arg3336
  %_exp_of_id3348 = load i64, i64* %_allocated_arg3338
  %_exp_of_call3345 = call i64 @partition({ i64, [0 x i64] }* %_exp_of_id3346, i64 %_exp_of_id3347, i64 %_exp_of_id3348)
  store i64 %_exp_of_call3345, i64* %_id_of_decl3340
  %_exp_of_id3351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3334
  %_exp_of_id3352 = load i64, i64* %_allocated_arg3336
  %_exp_of_id3353 = load i64, i64* %_id_of_decl3340
  %_exp_of_bop3354 = sub i64 %_exp_of_id3353, 1
  call void @quick_sort({ i64, [0 x i64] }* %_exp_of_id3351, i64 %_exp_of_id3352, i64 %_exp_of_bop3354)
  %_exp_of_id3356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3334
  %_exp_of_id3357 = load i64, i64* %_id_of_decl3340
  %_exp_of_bop3358 = add i64 %_exp_of_id3357, 1
  %_exp_of_id3359 = load i64, i64* %_allocated_arg3338
  call void @quick_sort({ i64, [0 x i64] }* %_exp_of_id3356, i64 %_exp_of_bop3358, i64 %_exp_of_id3359)
  br label %_merge3360
_branch_of_neq3362:
  br label %_merge3360
_merge3360:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_id_of_decl3229 = alloca i64
  %_id_of_decl3235 = alloca i64
  %_id_of_decl3238 = alloca i64
  %_id_of_decl3242 = alloca i64
  %_id_of_decl3244 = alloca i64
  %_allocated_arg3223 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3223
  %_allocated_arg3225 = alloca i64
  store i64 %l, i64* %_allocated_arg3225
  %_allocated_arg3227 = alloca i64
  store i64 %r, i64* %_allocated_arg3227
  %_exp_of_id3232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3233 = load i64, i64* %_allocated_arg3225
  %_id_of_index3230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3232, i32 0, i32 1, i64 %_exp_of_id3233
  %_id_of_load3231 = load i64, i64* %_id_of_index3230
  store i64 %_id_of_load3231, i64* %_id_of_decl3229
  %_exp_of_id3236 = load i64, i64* %_allocated_arg3225
  store i64 %_exp_of_id3236, i64* %_id_of_decl3235
  %_exp_of_id3239 = load i64, i64* %_allocated_arg3227
  %_exp_of_bop3240 = add i64 %_exp_of_id3239, 1
  store i64 %_exp_of_bop3240, i64* %_id_of_decl3238
  store i64 0, i64* %_id_of_decl3242
  store i64 0, i64* %_id_of_decl3244
  br label %_entry3312
_entry3312:
  %_exp_of_id3246 = load i64, i64* %_id_of_decl3244
  %_exp_of_bop3247 = icmp eq i64 %_exp_of_id3246, 0
  br i1 %_exp_of_bop3247, label %_body3313, label %_exit3314
_body3313:
  %_exp_of_id3248 = load i64, i64* %_id_of_decl3235
  %_exp_of_bop3249 = add i64 %_exp_of_id3248, 1
  store i64 %_exp_of_bop3249, i64* %_id_of_decl3235
  br label %_entry3264
_entry3264:
  %_exp_of_id3253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3254 = load i64, i64* %_id_of_decl3235
  %_id_of_index3251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3253, i32 0, i32 1, i64 %_exp_of_id3254
  %_id_of_load3252 = load i64, i64* %_id_of_index3251
  %_exp_of_id3255 = load i64, i64* %_id_of_decl3229
  %_exp_of_bop3256 = icmp sle i64 %_id_of_load3252, %_exp_of_id3255
  %_exp_of_id3257 = load i64, i64* %_id_of_decl3235
  %_exp_of_id3258 = load i64, i64* %_allocated_arg3227
  %_exp_of_bop3259 = icmp sle i64 %_exp_of_id3257, %_exp_of_id3258
  %_exp_of_bop3260 = and i1 %_exp_of_bop3256, %_exp_of_bop3259
  br i1 %_exp_of_bop3260, label %_body3265, label %_exit3266
_body3265:
  %_exp_of_id3261 = load i64, i64* %_id_of_decl3235
  %_exp_of_bop3262 = add i64 %_exp_of_id3261, 1
  store i64 %_exp_of_bop3262, i64* %_id_of_decl3235
  br label %_entry3264
_exit3266:
  %_exp_of_id3267 = load i64, i64* %_id_of_decl3238
  %_exp_of_bop3268 = sub i64 %_exp_of_id3267, 1
  store i64 %_exp_of_bop3268, i64* %_id_of_decl3238
  br label %_entry3279
_entry3279:
  %_exp_of_id3272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3273 = load i64, i64* %_id_of_decl3238
  %_id_of_index3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3272, i32 0, i32 1, i64 %_exp_of_id3273
  %_id_of_load3271 = load i64, i64* %_id_of_index3270
  %_exp_of_id3274 = load i64, i64* %_id_of_decl3229
  %_exp_of_bop3275 = icmp sgt i64 %_id_of_load3271, %_exp_of_id3274
  br i1 %_exp_of_bop3275, label %_body3280, label %_exit3281
_body3280:
  %_exp_of_id3276 = load i64, i64* %_id_of_decl3238
  %_exp_of_bop3277 = sub i64 %_exp_of_id3276, 1
  store i64 %_exp_of_bop3277, i64* %_id_of_decl3238
  br label %_entry3279
_exit3281:
  %_exp_of_id3282 = load i64, i64* %_id_of_decl3235
  %_exp_of_id3283 = load i64, i64* %_id_of_decl3238
  %_exp_of_bop3284 = icmp sge i64 %_exp_of_id3282, %_exp_of_id3283
  br i1 %_exp_of_bop3284, label %_branch_of_eq3287, label %_branch_of_neq3288
_branch_of_eq3287:
  store i64 1, i64* %_id_of_decl3244
  br label %_merge3286
_branch_of_neq3288:
  br label %_merge3286
_merge3286:
  %_exp_of_id3289 = load i64, i64* %_id_of_decl3244
  %_exp_of_bop3290 = icmp eq i64 %_exp_of_id3289, 0
  br i1 %_exp_of_bop3290, label %_branch_of_eq3310, label %_branch_of_neq3311
_branch_of_eq3310:
  %_exp_of_id3293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3294 = load i64, i64* %_id_of_decl3235
  %_id_of_index3291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3293, i32 0, i32 1, i64 %_exp_of_id3294
  %_id_of_load3292 = load i64, i64* %_id_of_index3291
  store i64 %_id_of_load3292, i64* %_id_of_decl3242
  %_exp_of_id3298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3299 = load i64, i64* %_id_of_decl3238
  %_id_of_index3296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3298, i32 0, i32 1, i64 %_exp_of_id3299
  %_id_of_load3297 = load i64, i64* %_id_of_index3296
  %_exp_of_id3301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3302 = load i64, i64* %_id_of_decl3235
  %_id_of_gep_exp3303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3301, i32 0, i32 1, i64 %_exp_of_id3302
  store i64 %_id_of_load3297, i64* %_id_of_gep_exp3303
  %_exp_of_id3304 = load i64, i64* %_id_of_decl3242
  %_exp_of_id3306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3307 = load i64, i64* %_id_of_decl3238
  %_id_of_gep_exp3308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3306, i32 0, i32 1, i64 %_exp_of_id3307
  store i64 %_exp_of_id3304, i64* %_id_of_gep_exp3308
  br label %_merge3309
_branch_of_neq3311:
  br label %_merge3309
_merge3309:
  br label %_entry3312
_exit3314:
  %_exp_of_id3317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3318 = load i64, i64* %_allocated_arg3225
  %_id_of_index3315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3317, i32 0, i32 1, i64 %_exp_of_id3318
  %_id_of_load3316 = load i64, i64* %_id_of_index3315
  store i64 %_id_of_load3316, i64* %_id_of_decl3242
  %_exp_of_id3322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3323 = load i64, i64* %_id_of_decl3238
  %_id_of_index3320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3322, i32 0, i32 1, i64 %_exp_of_id3323
  %_id_of_load3321 = load i64, i64* %_id_of_index3320
  %_exp_of_id3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3326 = load i64, i64* %_allocated_arg3225
  %_id_of_gep_exp3327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3325, i32 0, i32 1, i64 %_exp_of_id3326
  store i64 %_id_of_load3321, i64* %_id_of_gep_exp3327
  %_exp_of_id3328 = load i64, i64* %_id_of_decl3242
  %_exp_of_id3330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3223
  %_exp_of_id3331 = load i64, i64* %_id_of_decl3238
  %_id_of_gep_exp3332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3330, i32 0, i32 1, i64 %_exp_of_id3331
  store i64 %_exp_of_id3328, i64* %_id_of_gep_exp3332
  %_exp_of_id3333 = load i64, i64* %_id_of_decl3238
  ret i64 %_exp_of_id3333
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3193 = alloca { i64, [0 x i64] }*
  %_allocated_arg3189 = alloca i64
  store i64 %argc, i64* %_allocated_arg3189
  %_allocated_arg3191 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3191
  %_raw_array3194 = call i64* @oat_alloc_array(i64 9)
  %_array3195 = bitcast i64* %_raw_array3194 to { i64, [0 x i64] }*
  %_id_of_gep3196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 0
  store i64 107, i64* %_id_of_gep3196
  %_id_of_gep3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 1
  store i64 112, i64* %_id_of_gep3198
  %_id_of_gep3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 2
  store i64 121, i64* %_id_of_gep3200
  %_id_of_gep3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 3
  store i64 102, i64* %_id_of_gep3202
  %_id_of_gep3204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 4
  store i64 123, i64* %_id_of_gep3204
  %_id_of_gep3206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 5
  store i64 115, i64* %_id_of_gep3206
  %_id_of_gep3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 6
  store i64 104, i64* %_id_of_gep3208
  %_id_of_gep3210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 7
  store i64 111, i64* %_id_of_gep3210
  %_id_of_gep3212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3195, i32 0, i32 1, i32 8
  store i64 109, i64* %_id_of_gep3212
  store { i64, [0 x i64] }* %_array3195, { i64, [0 x i64] }** %_id_of_decl3193
  %_exp_of_id3217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3193
  %_exp_of_call3216 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3217)
  call void @print_string(i8* %_exp_of_call3216)
  %_exp_of_id3219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3193
  call void @quick_sort({ i64, [0 x i64] }* %_exp_of_id3219, i64 0, i64 8)
  %_exp_of_id3222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3193
  %_exp_of_call3221 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3222)
  call void @print_string(i8* %_exp_of_call3221)
  ret i64 255
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
