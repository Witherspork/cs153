; generated from: hw5programs/kruskal.oat
target triple = "x86_64-unknown-linux"
%Edge = type { i64, i64, i64 }

@_str_arr91 = global [2 x i8] c"(\00"
@_str_arr103 = global [2 x i8] c",\00"
@_str_arr115 = global [2 x i8] c",\00"
@_str_arr127 = global [3 x i8] c") \00"
@_str_arr133 = global [2 x i8] c"=\00"

define i64 @compare(%Edge* %_e1415, %Edge* %_e2412) {
  %_e1416 = alloca %Edge*
  %_e2413 = alloca %Edge*
  store %Edge* %_e1415, %Edge** %_e1416
  store %Edge* %_e2412, %Edge** %_e2413
  %_e1418 = load %Edge*, %Edge** %_e1416
  %_fptr_id419 = getelementptr %Edge, %Edge* %_e1418, i32 0, i32 2
  %_proj420 = load i64, i64* %_fptr_id419
  %_e2421 = load %Edge*, %Edge** %_e2413
  %_fptr_id422 = getelementptr %Edge, %Edge* %_e2421, i32 0, i32 2
  %_proj423 = load i64, i64* %_fptr_id422
  %_bop424 = sub i64 %_proj420, %_proj423
  ret i64 %_bop424
}

define void @sort(i64 (%Edge*, %Edge*)* %_cmp338, i64 %_len335, { i64, [0 x %Edge*] }* %_list332) {
  %_cmp339 = alloca i64 (%Edge*, %Edge*)*
  %_len336 = alloca i64
  %_list333 = alloca { i64, [0 x %Edge*] }*
  %_i341 = alloca i64
  %_j350 = alloca i64
  %_toswap357 = alloca %Edge*
  %_temp379 = alloca %Edge*
  store i64 (%Edge*, %Edge*)* %_cmp338, i64 (%Edge*, %Edge*)** %_cmp339
  store i64 %_len335, i64* %_len336
  store { i64, [0 x %Edge*] }* %_list332, { i64, [0 x %Edge*] }** %_list333
  store i64 1, i64* %_i341
  br label %_cond347
_cond347:
  %_i342 = load i64, i64* %_i341
  %_len343 = load i64, i64* %_len336
  %_bop344 = icmp slt i64 %_i342, %_len343
  br i1 %_bop344, label %_body346, label %_post345
_body346:
  %_i348 = load i64, i64* %_i341
  %_bop349 = sub i64 %_i348, 1
  store i64 %_bop349, i64* %_j350
  %_list351 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_i352 = load i64, i64* %_i341
  %_tmp354 = bitcast { i64, [0 x %Edge*] }* %_list351 to i64*
  call void @oat_assert_array_length(i64* %_tmp354, i64 %_i352)
  %_index_ptr355 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list351, i32 0, i32 1, i64 %_i352
  %_index356 = load %Edge*, %Edge** %_index_ptr355
  store %Edge* %_index356, %Edge** %_toswap357
  br label %_cond362
_cond362:
  %_j358 = load i64, i64* %_j350
  %_bop359 = icmp sge i64 %_j358, 0
  br i1 %_bop359, label %_body361, label %_post360
_body361:
  %_cmp363 = load i64 (%Edge*, %Edge*)*, i64 (%Edge*, %Edge*)** %_cmp339
  %_toswap364 = load %Edge*, %Edge** %_toswap357
  %_list365 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_j366 = load i64, i64* %_j350
  %_tmp368 = bitcast { i64, [0 x %Edge*] }* %_list365 to i64*
  call void @oat_assert_array_length(i64* %_tmp368, i64 %_j366)
  %_index_ptr369 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list365, i32 0, i32 1, i64 %_j366
  %_index370 = load %Edge*, %Edge** %_index_ptr369
  %_result371 = call i64 %_cmp363(%Edge* %_index370, %Edge* %_toswap364)
  %_bop372 = icmp sgt i64 %_result371, 0
  br i1 %_bop372, label %_then408, label %_else407
_then408:
  %_list373 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_j374 = load i64, i64* %_j350
  %_tmp376 = bitcast { i64, [0 x %Edge*] }* %_list373 to i64*
  call void @oat_assert_array_length(i64* %_tmp376, i64 %_j374)
  %_index_ptr377 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list373, i32 0, i32 1, i64 %_j374
  %_index378 = load %Edge*, %Edge** %_index_ptr377
  store %Edge* %_index378, %Edge** %_temp379
  %_list380 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_j381 = load i64, i64* %_j350
  %_tmp383 = bitcast { i64, [0 x %Edge*] }* %_list380 to i64*
  call void @oat_assert_array_length(i64* %_tmp383, i64 %_j381)
  %_index_ptr384 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list380, i32 0, i32 1, i64 %_j381
  %_list385 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_j386 = load i64, i64* %_j350
  %_bop387 = add i64 %_j386, 1
  %_tmp389 = bitcast { i64, [0 x %Edge*] }* %_list385 to i64*
  call void @oat_assert_array_length(i64* %_tmp389, i64 %_bop387)
  %_index_ptr390 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list385, i32 0, i32 1, i64 %_bop387
  %_index391 = load %Edge*, %Edge** %_index_ptr390
  store %Edge* %_index391, %Edge** %_index_ptr384
  %_list393 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_list333
  %_j394 = load i64, i64* %_j350
  %_bop395 = add i64 %_j394, 1
  %_tmp397 = bitcast { i64, [0 x %Edge*] }* %_list393 to i64*
  call void @oat_assert_array_length(i64* %_tmp397, i64 %_bop395)
  %_index_ptr398 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_list393, i32 0, i32 1, i64 %_bop395
  %_temp399 = load %Edge*, %Edge** %_temp379
  store %Edge* %_temp399, %Edge** %_index_ptr398
  %_j401 = load i64, i64* %_j350
  %_bop402 = sub i64 %_j401, 1
  store i64 %_bop402, i64* %_j350
  br label %_merge406
_else407:
  %_unop404 = sub i64 0, 1
  store i64 %_unop404, i64* %_j350
  br label %_merge406
_merge406:
  br label %_cond362
_post360:
  %_i409 = load i64, i64* %_i341
  %_bop410 = add i64 %_i409, 1
  store i64 %_bop410, i64* %_i341
  br label %_cond347
_post345:
  ret void
}

define { i64, [0 x i64] }* @create_ufind(i64 %_len307) {
  %_len308 = alloca i64
  %_arr313 = alloca { i64, [0 x i64] }*
  %_i314 = alloca i64
  store i64 %_len307, i64* %_len308
  %_len310 = load i64, i64* %_len308
  %_raw_array311 = call i64* @oat_alloc_array(i64 %_len310)
  %_array312 = bitcast i64* %_raw_array311 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array312, { i64, [0 x i64] }** %_arr313
  store i64 0, i64* %_i314
  br label %_cond320
_cond320:
  %_i315 = load i64, i64* %_i314
  %_len316 = load i64, i64* %_len308
  %_bop317 = icmp slt i64 %_i315, %_len316
  br i1 %_bop317, label %_body319, label %_post318
_body319:
  %_arr321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr313
  %_i322 = load i64, i64* %_i314
  %_tmp324 = bitcast { i64, [0 x i64] }* %_arr321 to i64*
  call void @oat_assert_array_length(i64* %_tmp324, i64 %_i322)
  %_index_ptr325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr321, i32 0, i32 1, i64 %_i322
  %_i326 = load i64, i64* %_i314
  store i64 %_i326, i64* %_index_ptr325
  %_i328 = load i64, i64* %_i314
  %_bop329 = add i64 %_i328, 1
  store i64 %_bop329, i64* %_i314
  br label %_cond320
_post318:
  %_arr331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr313
  ret { i64, [0 x i64] }* %_arr331
}

define void @union({ i64, [0 x i64] }* %_comps283, i64 %_u280, i64 %_v277) {
  %_comps284 = alloca { i64, [0 x i64] }*
  %_u281 = alloca i64
  %_v278 = alloca i64
  %_cU289 = alloca i64
  %_cV293 = alloca i64
  store { i64, [0 x i64] }* %_comps283, { i64, [0 x i64] }** %_comps284
  store i64 %_u280, i64* %_u281
  store i64 %_v277, i64* %_v278
  %_u286 = load i64, i64* %_u281
  %_comps287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps284
  %_result288 = call i64 @find({ i64, [0 x i64] }* %_comps287, i64 %_u286)
  store i64 %_result288, i64* %_cU289
  %_v290 = load i64, i64* %_v278
  %_comps291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps284
  %_result292 = call i64 @find({ i64, [0 x i64] }* %_comps291, i64 %_v290)
  store i64 %_result292, i64* %_cV293
  %_cU294 = load i64, i64* %_cU289
  %_cV295 = load i64, i64* %_cV293
  %_bop296 = icmp eq i64 %_cU294, %_cV295
  br i1 %_bop296, label %_then299, label %_else298
_then299:
  ret void
_else298:
  br label %_merge297
_merge297:
  %_comps300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps284
  %_cU301 = load i64, i64* %_cU289
  %_tmp303 = bitcast { i64, [0 x i64] }* %_comps300 to i64*
  call void @oat_assert_array_length(i64* %_tmp303, i64 %_cU301)
  %_index_ptr304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_comps300, i32 0, i32 1, i64 %_cU301
  %_cV305 = load i64, i64* %_cV293
  store i64 %_cV305, i64* %_index_ptr304
  ret void
}

define i64 @find({ i64, [0 x i64] }* %_comps229, i64 %_u226) {
  %_comps230 = alloca { i64, [0 x i64] }*
  %_u227 = alloca i64
  %_root233 = alloca i64
  %_parent266 = alloca i64
  store { i64, [0 x i64] }* %_comps229, { i64, [0 x i64] }** %_comps230
  store i64 %_u226, i64* %_u227
  %_u232 = load i64, i64* %_u227
  store i64 %_u232, i64* %_root233
  br label %_cond244
_cond244:
  %_root234 = load i64, i64* %_root233
  %_comps235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps230
  %_root236 = load i64, i64* %_root233
  %_tmp238 = bitcast { i64, [0 x i64] }* %_comps235 to i64*
  call void @oat_assert_array_length(i64* %_tmp238, i64 %_root236)
  %_index_ptr239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_comps235, i32 0, i32 1, i64 %_root236
  %_index240 = load i64, i64* %_index_ptr239
  %_bop241 = icmp ne i64 %_root234, %_index240
  br i1 %_bop241, label %_body243, label %_post242
_body243:
  %_comps245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps230
  %_root246 = load i64, i64* %_root233
  %_tmp248 = bitcast { i64, [0 x i64] }* %_comps245 to i64*
  call void @oat_assert_array_length(i64* %_tmp248, i64 %_root246)
  %_index_ptr249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_comps245, i32 0, i32 1, i64 %_root246
  %_index250 = load i64, i64* %_index_ptr249
  store i64 %_index250, i64* %_root233
  br label %_cond244
_post242:
  br label %_cond257
_cond257:
  %_u252 = load i64, i64* %_u227
  %_root253 = load i64, i64* %_root233
  %_bop254 = icmp ne i64 %_u252, %_root253
  br i1 %_bop254, label %_body256, label %_post255
_body256:
  %_comps258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps230
  %_u259 = load i64, i64* %_u227
  %_tmp261 = bitcast { i64, [0 x i64] }* %_comps258 to i64*
  call void @oat_assert_array_length(i64* %_tmp261, i64 %_u259)
  %_index_ptr262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_comps258, i32 0, i32 1, i64 %_u259
  %_index263 = load i64, i64* %_index_ptr262
  %_comps264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps230
  %_result265 = call i64 @find({ i64, [0 x i64] }* %_comps264, i64 %_index263)
  store i64 %_result265, i64* %_parent266
  %_comps267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_comps230
  %_u268 = load i64, i64* %_u227
  %_tmp270 = bitcast { i64, [0 x i64] }* %_comps267 to i64*
  call void @oat_assert_array_length(i64* %_tmp270, i64 %_u268)
  %_index_ptr271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_comps267, i32 0, i32 1, i64 %_u268
  %_root272 = load i64, i64* %_root233
  store i64 %_root272, i64* %_index_ptr271
  %_parent274 = load i64, i64* %_parent266
  store i64 %_parent274, i64* %_u227
  br label %_cond257
_post255:
  %_root276 = load i64, i64* %_root233
  ret i64 %_root276
}

define { i64, [0 x %Edge*] }* @findMST({ i64, [0 x %Edge*] }* %_edges142, i64 %_m139, i64 %_n136) {
  %_edges143 = alloca { i64, [0 x %Edge*] }*
  %_m140 = alloca i64
  %_n137 = alloca i64
  %_uf150 = alloca { i64, [0 x i64] }*
  %_result155 = alloca { i64, [0 x %Edge*] }*
  %_size156 = alloca i64
  %_count157 = alloca i64
  store { i64, [0 x %Edge*] }* %_edges142, { i64, [0 x %Edge*] }** %_edges143
  store i64 %_m139, i64* %_m140
  store i64 %_n136, i64* %_n137
  %_edges145 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_m146 = load i64, i64* %_m140
  call void @sort(i64 (%Edge*, %Edge*)* @compare, i64 %_m146, { i64, [0 x %Edge*] }* %_edges145)
  %_n148 = load i64, i64* %_n137
  %_result149 = call { i64, [0 x i64] }* @create_ufind(i64 %_n148)
  store { i64, [0 x i64] }* %_result149, { i64, [0 x i64] }** %_uf150
  %_n151 = load i64, i64* %_n137
  %_bop152 = sub i64 %_n151, 1
  %_raw_array153 = call i64* @oat_alloc_array(i64 %_bop152)
  %_array154 = bitcast i64* %_raw_array153 to { i64, [0 x %Edge*] }*
  store { i64, [0 x %Edge*] }* %_array154, { i64, [0 x %Edge*] }** %_result155
  store i64 0, i64* %_size156
  store i64 0, i64* %_count157
  br label %_cond164
_cond164:
  %_size158 = load i64, i64* %_size156
  %_n159 = load i64, i64* %_n137
  %_bop160 = sub i64 %_n159, 1
  %_bop161 = icmp slt i64 %_size158, %_bop160
  br i1 %_bop161, label %_body163, label %_post162
_body163:
  %_edges165 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_count166 = load i64, i64* %_count157
  %_tmp168 = bitcast { i64, [0 x %Edge*] }* %_edges165 to i64*
  call void @oat_assert_array_length(i64* %_tmp168, i64 %_count166)
  %_index_ptr169 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_edges165, i32 0, i32 1, i64 %_count166
  %_index170 = load %Edge*, %Edge** %_index_ptr169
  %_fptr_id171 = getelementptr %Edge, %Edge* %_index170, i32 0, i32 0
  %_proj172 = load i64, i64* %_fptr_id171
  %_uf173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_uf150
  %_result174 = call i64 @find({ i64, [0 x i64] }* %_uf173, i64 %_proj172)
  %_edges175 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_count176 = load i64, i64* %_count157
  %_tmp178 = bitcast { i64, [0 x %Edge*] }* %_edges175 to i64*
  call void @oat_assert_array_length(i64* %_tmp178, i64 %_count176)
  %_index_ptr179 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_edges175, i32 0, i32 1, i64 %_count176
  %_index180 = load %Edge*, %Edge** %_index_ptr179
  %_fptr_id181 = getelementptr %Edge, %Edge* %_index180, i32 0, i32 1
  %_proj182 = load i64, i64* %_fptr_id181
  %_uf183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_uf150
  %_result184 = call i64 @find({ i64, [0 x i64] }* %_uf183, i64 %_proj182)
  %_bop185 = icmp ne i64 %_result174, %_result184
  br i1 %_bop185, label %_then221, label %_else220
_then221:
  %_result186 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_result155
  %_size187 = load i64, i64* %_size156
  %_tmp189 = bitcast { i64, [0 x %Edge*] }* %_result186 to i64*
  call void @oat_assert_array_length(i64* %_tmp189, i64 %_size187)
  %_index_ptr190 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_result186, i32 0, i32 1, i64 %_size187
  %_edges191 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_count192 = load i64, i64* %_count157
  %_tmp194 = bitcast { i64, [0 x %Edge*] }* %_edges191 to i64*
  call void @oat_assert_array_length(i64* %_tmp194, i64 %_count192)
  %_index_ptr195 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_edges191, i32 0, i32 1, i64 %_count192
  %_index196 = load %Edge*, %Edge** %_index_ptr195
  store %Edge* %_index196, %Edge** %_index_ptr190
  %_edges198 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_count199 = load i64, i64* %_count157
  %_tmp201 = bitcast { i64, [0 x %Edge*] }* %_edges198 to i64*
  call void @oat_assert_array_length(i64* %_tmp201, i64 %_count199)
  %_index_ptr202 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_edges198, i32 0, i32 1, i64 %_count199
  %_index203 = load %Edge*, %Edge** %_index_ptr202
  %_fptr_id204 = getelementptr %Edge, %Edge* %_index203, i32 0, i32 1
  %_proj205 = load i64, i64* %_fptr_id204
  %_edges206 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges143
  %_count207 = load i64, i64* %_count157
  %_tmp209 = bitcast { i64, [0 x %Edge*] }* %_edges206 to i64*
  call void @oat_assert_array_length(i64* %_tmp209, i64 %_count207)
  %_index_ptr210 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_edges206, i32 0, i32 1, i64 %_count207
  %_index211 = load %Edge*, %Edge** %_index_ptr210
  %_fptr_id212 = getelementptr %Edge, %Edge* %_index211, i32 0, i32 0
  %_proj213 = load i64, i64* %_fptr_id212
  %_uf214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_uf150
  call void @union({ i64, [0 x i64] }* %_uf214, i64 %_proj213, i64 %_proj205)
  %_size216 = load i64, i64* %_size156
  %_bop217 = add i64 %_size216, 1
  store i64 %_bop217, i64* %_size156
  br label %_merge219
_else220:
  br label %_merge219
_merge219:
  %_count222 = load i64, i64* %_count157
  %_bop223 = add i64 %_count222, 1
  store i64 %_bop223, i64* %_count157
  br label %_cond164
_post162:
  %_result225 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_result155
  ret { i64, [0 x %Edge*] }* %_result225
}

define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_argc5 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_e115 = alloca %Edge*
  %_e224 = alloca %Edge*
  %_e333 = alloca %Edge*
  %_e442 = alloca %Edge*
  %_e551 = alloca %Edge*
  %_e660 = alloca %Edge*
  %_edges81 = alloca { i64, [0 x %Edge*] }*
  %_mst84 = alloca { i64, [0 x %Edge*] }*
  %_i85 = alloca i64
  store i64 %_argc4, i64* %_argc5
  store { i64, [0 x i8*] }* %_argv1, { i64, [0 x i8*] }** %_argv2
  %_rstct_id7 = call i64* @oat_malloc(i64 24)
  %_res_id8 = bitcast i64* %_rstct_id7 to %Edge*
  %_fptr_id10 = getelementptr %Edge, %Edge* %_res_id8, i32 0, i32 0
  %_fval_id9 = bitcast i64 1 to i64
  store i64 %_fval_id9, i64* %_fptr_id10
  %_fptr_id12 = getelementptr %Edge, %Edge* %_res_id8, i32 0, i32 1
  %_fval_id11 = bitcast i64 2 to i64
  store i64 %_fval_id11, i64* %_fptr_id12
  %_fptr_id14 = getelementptr %Edge, %Edge* %_res_id8, i32 0, i32 2
  %_fval_id13 = bitcast i64 3 to i64
  store i64 %_fval_id13, i64* %_fptr_id14
  store %Edge* %_res_id8, %Edge** %_e115
  %_rstct_id16 = call i64* @oat_malloc(i64 24)
  %_res_id17 = bitcast i64* %_rstct_id16 to %Edge*
  %_fptr_id19 = getelementptr %Edge, %Edge* %_res_id17, i32 0, i32 0
  %_fval_id18 = bitcast i64 0 to i64
  store i64 %_fval_id18, i64* %_fptr_id19
  %_fptr_id21 = getelementptr %Edge, %Edge* %_res_id17, i32 0, i32 1
  %_fval_id20 = bitcast i64 1 to i64
  store i64 %_fval_id20, i64* %_fptr_id21
  %_fptr_id23 = getelementptr %Edge, %Edge* %_res_id17, i32 0, i32 2
  %_fval_id22 = bitcast i64 20 to i64
  store i64 %_fval_id22, i64* %_fptr_id23
  store %Edge* %_res_id17, %Edge** %_e224
  %_rstct_id25 = call i64* @oat_malloc(i64 24)
  %_res_id26 = bitcast i64* %_rstct_id25 to %Edge*
  %_fptr_id28 = getelementptr %Edge, %Edge* %_res_id26, i32 0, i32 0
  %_fval_id27 = bitcast i64 1 to i64
  store i64 %_fval_id27, i64* %_fptr_id28
  %_fptr_id30 = getelementptr %Edge, %Edge* %_res_id26, i32 0, i32 1
  %_fval_id29 = bitcast i64 4 to i64
  store i64 %_fval_id29, i64* %_fptr_id30
  %_fptr_id32 = getelementptr %Edge, %Edge* %_res_id26, i32 0, i32 2
  %_fval_id31 = bitcast i64 1 to i64
  store i64 %_fval_id31, i64* %_fptr_id32
  store %Edge* %_res_id26, %Edge** %_e333
  %_rstct_id34 = call i64* @oat_malloc(i64 24)
  %_res_id35 = bitcast i64* %_rstct_id34 to %Edge*
  %_fptr_id37 = getelementptr %Edge, %Edge* %_res_id35, i32 0, i32 0
  %_fval_id36 = bitcast i64 2 to i64
  store i64 %_fval_id36, i64* %_fptr_id37
  %_fptr_id39 = getelementptr %Edge, %Edge* %_res_id35, i32 0, i32 1
  %_fval_id38 = bitcast i64 4 to i64
  store i64 %_fval_id38, i64* %_fptr_id39
  %_fptr_id41 = getelementptr %Edge, %Edge* %_res_id35, i32 0, i32 2
  %_fval_id40 = bitcast i64 5 to i64
  store i64 %_fval_id40, i64* %_fptr_id41
  store %Edge* %_res_id35, %Edge** %_e442
  %_rstct_id43 = call i64* @oat_malloc(i64 24)
  %_res_id44 = bitcast i64* %_rstct_id43 to %Edge*
  %_fptr_id46 = getelementptr %Edge, %Edge* %_res_id44, i32 0, i32 0
  %_fval_id45 = bitcast i64 3 to i64
  store i64 %_fval_id45, i64* %_fptr_id46
  %_fptr_id48 = getelementptr %Edge, %Edge* %_res_id44, i32 0, i32 1
  %_fval_id47 = bitcast i64 4 to i64
  store i64 %_fval_id47, i64* %_fptr_id48
  %_fptr_id50 = getelementptr %Edge, %Edge* %_res_id44, i32 0, i32 2
  %_fval_id49 = bitcast i64 6 to i64
  store i64 %_fval_id49, i64* %_fptr_id50
  store %Edge* %_res_id44, %Edge** %_e551
  %_rstct_id52 = call i64* @oat_malloc(i64 24)
  %_res_id53 = bitcast i64* %_rstct_id52 to %Edge*
  %_fptr_id55 = getelementptr %Edge, %Edge* %_res_id53, i32 0, i32 0
  %_fval_id54 = bitcast i64 2 to i64
  store i64 %_fval_id54, i64* %_fptr_id55
  %_fptr_id57 = getelementptr %Edge, %Edge* %_res_id53, i32 0, i32 1
  %_fval_id56 = bitcast i64 3 to i64
  store i64 %_fval_id56, i64* %_fptr_id57
  %_fptr_id59 = getelementptr %Edge, %Edge* %_res_id53, i32 0, i32 2
  %_fval_id58 = bitcast i64 4 to i64
  store i64 %_fval_id58, i64* %_fptr_id59
  store %Edge* %_res_id53, %Edge** %_e660
  %_raw_array61 = call i64* @oat_alloc_array(i64 6)
  %_array62 = bitcast i64* %_raw_array61 to { i64, [0 x %Edge*] }*
  %_e163 = load %Edge*, %Edge** %_e115
  %_ind64 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 0
  store %Edge* %_e163, %Edge** %_ind64
  %_e266 = load %Edge*, %Edge** %_e224
  %_ind67 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 1
  store %Edge* %_e266, %Edge** %_ind67
  %_e369 = load %Edge*, %Edge** %_e333
  %_ind70 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 2
  store %Edge* %_e369, %Edge** %_ind70
  %_e472 = load %Edge*, %Edge** %_e442
  %_ind73 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 3
  store %Edge* %_e472, %Edge** %_ind73
  %_e575 = load %Edge*, %Edge** %_e551
  %_ind76 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 4
  store %Edge* %_e575, %Edge** %_ind76
  %_e678 = load %Edge*, %Edge** %_e660
  %_ind79 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_array62, i32 0, i32 1, i32 5
  store %Edge* %_e678, %Edge** %_ind79
  store { i64, [0 x %Edge*] }* %_array62, { i64, [0 x %Edge*] }** %_edges81
  %_edges82 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_edges81
  %_result83 = call { i64, [0 x %Edge*] }* @findMST({ i64, [0 x %Edge*] }* %_edges82, i64 6, i64 5)
  store { i64, [0 x %Edge*] }* %_result83, { i64, [0 x %Edge*] }** %_mst84
  store i64 0, i64* %_i85
  br label %_cond90
_cond90:
  %_i86 = load i64, i64* %_i85
  %_bop87 = icmp slt i64 %_i86, 4
  br i1 %_bop87, label %_body89, label %_post88
_body89:
  %_str92 = getelementptr [2 x i8], [2 x i8]* @_str_arr91, i32 0, i32 0
  call void @print_string(i8* %_str92)
  %_mst94 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_mst84
  %_i95 = load i64, i64* %_i85
  %_tmp97 = bitcast { i64, [0 x %Edge*] }* %_mst94 to i64*
  call void @oat_assert_array_length(i64* %_tmp97, i64 %_i95)
  %_index_ptr98 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_mst94, i32 0, i32 1, i64 %_i95
  %_index99 = load %Edge*, %Edge** %_index_ptr98
  %_fptr_id100 = getelementptr %Edge, %Edge* %_index99, i32 0, i32 0
  %_proj101 = load i64, i64* %_fptr_id100
  call void @print_int(i64 %_proj101)
  %_str104 = getelementptr [2 x i8], [2 x i8]* @_str_arr103, i32 0, i32 0
  call void @print_string(i8* %_str104)
  %_mst106 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_mst84
  %_i107 = load i64, i64* %_i85
  %_tmp109 = bitcast { i64, [0 x %Edge*] }* %_mst106 to i64*
  call void @oat_assert_array_length(i64* %_tmp109, i64 %_i107)
  %_index_ptr110 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_mst106, i32 0, i32 1, i64 %_i107
  %_index111 = load %Edge*, %Edge** %_index_ptr110
  %_fptr_id112 = getelementptr %Edge, %Edge* %_index111, i32 0, i32 1
  %_proj113 = load i64, i64* %_fptr_id112
  call void @print_int(i64 %_proj113)
  %_str116 = getelementptr [2 x i8], [2 x i8]* @_str_arr115, i32 0, i32 0
  call void @print_string(i8* %_str116)
  %_mst118 = load { i64, [0 x %Edge*] }*, { i64, [0 x %Edge*] }** %_mst84
  %_i119 = load i64, i64* %_i85
  %_tmp121 = bitcast { i64, [0 x %Edge*] }* %_mst118 to i64*
  call void @oat_assert_array_length(i64* %_tmp121, i64 %_i119)
  %_index_ptr122 = getelementptr { i64, [0 x %Edge*] }, { i64, [0 x %Edge*] }* %_mst118, i32 0, i32 1, i64 %_i119
  %_index123 = load %Edge*, %Edge** %_index_ptr122
  %_fptr_id124 = getelementptr %Edge, %Edge* %_index123, i32 0, i32 2
  %_proj125 = load i64, i64* %_fptr_id124
  call void @print_int(i64 %_proj125)
  %_str128 = getelementptr [3 x i8], [3 x i8]* @_str_arr127, i32 0, i32 0
  call void @print_string(i8* %_str128)
  %_i130 = load i64, i64* %_i85
  %_bop131 = add i64 %_i130, 1
  store i64 %_bop131, i64* %_i85
  br label %_cond90
_post88:
  %_str134 = getelementptr [2 x i8], [2 x i8]* @_str_arr133, i32 0, i32 0
  call void @print_string(i8* %_str134)
  ret i64 0
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
