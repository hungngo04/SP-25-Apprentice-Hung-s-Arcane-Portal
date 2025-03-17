/* 
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
  /* @offset(16) */
  tint_symbol_5 : f32,
  /* @offset(20) */
  tint_symbol_6 : f32,
  /* @offset(24) */
  tint_symbol_7 : f32,
  /* @offset(28) */
  tint_symbol_8 : f32,
  /* @offset(32) */
  tint_symbol_9 : f32,
  /* @offset(36) */
  tint_symbol_10 : f32,
  /* @offset(40) */
  tint_symbol_11 : f32,
  /* @offset(44) */
  tint_symbol_12 : f32,
  /* @offset(48) */
  tint_symbol_13 : f32,
  /* @offset(52) */
  tint_symbol_14 : f32,
  /* @offset(56) */
  tint_symbol_15 : f32,
  /* @offset(60) */
  tint_symbol_16 : f32,
}

struct tint_symbol_63 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_65 : vec2f,
  /* @offset(72) */
  tint_symbol_66 : vec2f,
}

struct tint_symbol_70_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
}

struct tint_symbol_71_block {
  /* @offset(0) */
  inner : tint_symbol_67,
}

alias RTArr = array<f32>;

struct tint_symbol_72_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_74_block {
  /* @offset(0) */
  inner : u32,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_162_1 : vec3u;

var<private> tint_symbol_162_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(4) var<uniform> tint_symbol_74 : tint_symbol_74_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_ftoi_1(v_1 : vec3f) -> vec3i {
  return select(vec3i(2147483647i), select(vec3i(v_1), vec3i(i32(-2147483648)), (v_1 < vec3f(-2147483648.0f))), (v_1 < vec3f(2147483520.0f)));
}

fn tint_symbol_17(tint_symbol_18 : tint_symbol, tint_symbol_19 : tint_symbol) -> tint_symbol {
  var tint_symbol_20 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  tint_symbol_20.tint_symbol_1 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_1) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_2 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_2) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_3 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_3) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_4 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_4) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_5 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_5) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_6 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_6) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_7 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_7) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_11)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_8 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_8) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_9 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_9) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_10 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_10) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_11 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_11) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_12 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_12) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_13 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_13) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_14 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_14) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_1));
  tint_symbol_20.tint_symbol_15 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_15) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_6)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_16 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_16) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_1));
  let x_852 = tint_symbol_20;
  return x_852;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_888 = tint_symbol_21(tint_symbol_24);
  let x_889 = tint_symbol_17(tint_symbol_23, x_888);
  let x_890 = tint_symbol_17(tint_symbol_24, x_889);
  return x_890;
}

fn tint_symbol_25(tint_symbol_24_1 : tint_symbol) -> f32 {
  var tint_symbol_26 = 0.0f;
  tint_symbol_26 = 0.0f;
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_1 * tint_symbol_24_1.tint_symbol_1));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_2 * tint_symbol_24_1.tint_symbol_2));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_3 * tint_symbol_24_1.tint_symbol_3));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_4 * tint_symbol_24_1.tint_symbol_4));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_5 * tint_symbol_24_1.tint_symbol_5));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_6 * tint_symbol_24_1.tint_symbol_6));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_7 * tint_symbol_24_1.tint_symbol_7));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_8 * tint_symbol_24_1.tint_symbol_8));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_9 * tint_symbol_24_1.tint_symbol_9));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_10 * tint_symbol_24_1.tint_symbol_10));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_11 * tint_symbol_24_1.tint_symbol_11));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_12 * tint_symbol_24_1.tint_symbol_12));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_13 * tint_symbol_24_1.tint_symbol_13));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_14 * tint_symbol_24_1.tint_symbol_14));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_15 * tint_symbol_24_1.tint_symbol_15));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_16 * tint_symbol_24_1.tint_symbol_16));
  let x_979 = tint_symbol_26;
  return sqrt(x_979);
}

fn tint_symbol_27(tint_symbol_28 : vec3f) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, (-(tint_symbol_28.x) / 2.0f), (-(tint_symbol_28.y) / 2.0f), (-(tint_symbol_28.z) / 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_29(tint_symbol_24_2 : tint_symbol) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, tint_symbol_24_2.tint_symbol_5, tint_symbol_24_2.tint_symbol_6, tint_symbol_24_2.tint_symbol_7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_30(tint_symbol_28_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, tint_symbol_28_1.z, -(tint_symbol_28_1.y), tint_symbol_28_1.x, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_34(tint_symbol_24_3 : tint_symbol) -> tint_symbol {
  var tint_return_flag = false;
  var tint_return_value = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  let x_1018 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1018 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1018), (tint_symbol_24_3.tint_symbol_2 / x_1018), (tint_symbol_24_3.tint_symbol_3 / x_1018), (tint_symbol_24_3.tint_symbol_4 / x_1018), (tint_symbol_24_3.tint_symbol_5 / x_1018), (tint_symbol_24_3.tint_symbol_6 / x_1018), (tint_symbol_24_3.tint_symbol_7 / x_1018), (tint_symbol_24_3.tint_symbol_8 / x_1018), (tint_symbol_24_3.tint_symbol_9 / x_1018), (tint_symbol_24_3.tint_symbol_10 / x_1018), (tint_symbol_24_3.tint_symbol_11 / x_1018), (tint_symbol_24_3.tint_symbol_12 / x_1018), (tint_symbol_24_3.tint_symbol_13 / x_1018), (tint_symbol_24_3.tint_symbol_14 / x_1018), (tint_symbol_24_3.tint_symbol_15 / x_1018), (tint_symbol_24_3.tint_symbol_16 / x_1018));
  }
  let x_1061 = tint_return_value;
  return x_1061;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1067 = tint_symbol_30(tint_symbol_28_2);
  let x_1068 = tint_symbol_34(x_1067);
  return tint_symbol(0.0f, x_1068.tint_symbol_2, x_1068.tint_symbol_3, x_1068.tint_symbol_4, -(((-(x_1068.tint_symbol_3) * tint_symbol_1.z) - (x_1068.tint_symbol_2 * tint_symbol_1.y))), -(((x_1068.tint_symbol_2 * tint_symbol_1.x) - (x_1068.tint_symbol_4 * tint_symbol_1.z))), -(((x_1068.tint_symbol_4 * tint_symbol_1.y) + (x_1068.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1106 = sin((tint_symbol_36 / 2.0f));
  let x_1108 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1106 * x_1108.tint_symbol_2), (x_1106 * x_1108.tint_symbol_3), (x_1106 * x_1108.tint_symbol_4), (x_1106 * x_1108.tint_symbol_5), (x_1106 * x_1108.tint_symbol_6), (x_1106 * x_1108.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_40(tint_symbol_24_4 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_24_4.tint_symbol_1, tint_symbol_24_4.tint_symbol_2, tint_symbol_24_4.tint_symbol_3, tint_symbol_24_4.tint_symbol_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_41(tint_symbol_23_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, -(tint_symbol_23_1.z), tint_symbol_23_1.y, -(tint_symbol_23_1.x), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_42(tint_symbol_23_2 : tint_symbol) -> vec3f {
  return vec3f((-(tint_symbol_23_2.tint_symbol_11) / tint_symbol_23_2.tint_symbol_8), (tint_symbol_23_2.tint_symbol_10 / tint_symbol_23_2.tint_symbol_8), (-(tint_symbol_23_2.tint_symbol_9) / tint_symbol_23_2.tint_symbol_8));
}

fn tint_symbol_43(tint_symbol_32 : vec3f, tint_symbol_28_4 : f32) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, tint_symbol_32.x, tint_symbol_32.y, tint_symbol_32.z, -(tint_symbol_28_4), 0.0f);
}

fn tint_symbol_44(tint_symbol_45 : vec3f, tint_symbol_46 : vec3f, tint_symbol_47 : vec3f) -> tint_symbol {
  let x_1272 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1272;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1301 : bool;
  var x_1302 : bool;
  var x_1307 : bool;
  var x_1308 : bool;
  var x_1313 : bool;
  var x_1314 : bool;
  let x_1281 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1287 = tint_symbol_42(x_1281);
  tint_symbol_58.tint_symbol_23 = x_1287;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1281.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1296 = tint_symbol_58.tint_symbol_53;
  x_1302 = x_1296;
  if (x_1296) {
    x_1301 = (abs(x_1281.tint_symbol_9) <= 0.00000000999999993923f);
    x_1302 = x_1301;
  }
  x_1308 = x_1302;
  if (x_1302) {
    x_1307 = (abs(x_1281.tint_symbol_10) <= 0.00000000999999993923f);
    x_1308 = x_1307;
  }
  x_1314 = x_1308;
  if (x_1308) {
    x_1313 = (abs(x_1281.tint_symbol_11) <= 0.00000000999999993923f);
    x_1314 = x_1313;
  }
  tint_symbol_58.tint_symbol_54 = x_1314;
  let x_1315 = tint_symbol_58;
  return x_1315;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1321 = tint_symbol_41(tint_symbol_23_3);
  let x_1322 = tint_symbol_22(x_1321, tint_symbol_24_5);
  let x_1323 = tint_symbol_42(x_1322);
  return x_1323;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1328 = tint_symbol_40(tint_symbol_24_6);
  let x_1329 = tint_symbol_41(tint_symbol_28_5);
  let x_1330 = tint_symbol_22(x_1329, x_1328);
  let x_1331 = tint_symbol_42(x_1330);
  return x_1331;
}

fn tint_symbol_75(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_76 = vec3f();
  let x_1339 = tint_symbol_70.inner.tint_symbol_64;
  let x_1336 = tint_symbol_61(tint_symbol_28_6, x_1339);
  tint_symbol_76 = x_1336;
  let x_1342 = tint_symbol_76;
  return x_1342;
}

fn tint_symbol_77(tint_symbol_78 : vec3f) -> vec3f {
  var tint_symbol_76_1 = vec3f();
  let x_1348 = tint_symbol_70.inner.tint_symbol_64;
  let x_1346 = tint_symbol_60(tint_symbol_78, x_1348);
  tint_symbol_76_1 = x_1346;
  let x_1350 = tint_symbol_76_1;
  return x_1350;
}

const x_1362 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_79(tint_symbol_80 : vec2i) {
  var tint_symbol_81 = vec4f();
  tint_symbol_81 = x_1362;
  let x_1365 = tint_symbol_81;
  textureStore(tint_symbol_73, tint_symbol_80, x_1365);
  return;
}

fn tint_symbol_82(tint_symbol_83 : vec2f, tint_symbol_84 : f32) -> vec2f {
  var tint_symbol_85 = vec2f();
  tint_symbol_85 = tint_symbol_83;
  if ((tint_symbol_83.x < 0.0f)) {
    tint_symbol_85.x = tint_symbol_84;
  } else {
    if ((tint_symbol_84 < tint_symbol_83.x)) {
      tint_symbol_85.y = tint_symbol_83.x;
      tint_symbol_85.x = tint_symbol_84;
    } else {
      if ((tint_symbol_83.y < 0.0f)) {
        tint_symbol_85.y = tint_symbol_84;
      } else {
        if ((tint_symbol_84 < tint_symbol_83.y)) {
          tint_symbol_85.y = tint_symbol_84;
        }
      }
    }
  }
  let x_1399 = tint_symbol_85;
  return x_1399;
}

fn tint_symbol_86(tint_symbol_87 : f32, tint_symbol_88 : vec2f, tint_symbol_89 : f32, tint_symbol_90 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_91 : vec2f) -> vec2f {
  var tint_symbol_92 = vec2f();
  tint_symbol_92 = tint_symbol_91;
  if ((abs(tint_symbol_90) > 0.00000000999999993923f)) {
    var x_1416 : f32;
    var x_1430 : bool;
    var x_1431 : bool;
    var x_1437 : bool;
    var x_1438 : bool;
    var x_1443 : bool;
    var x_1444 : bool;
    x_1416 = ((tint_symbol_87 - tint_symbol_89) / tint_symbol_90);
    if ((x_1416 > 0.0f)) {
      let x_1421 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1416));
      let x_1425 = (-(tint_symbol_88.x) < x_1421.x);
      x_1431 = x_1425;
      if (x_1425) {
        x_1430 = (x_1421.x < tint_symbol_88.x);
        x_1431 = x_1430;
      }
      x_1438 = x_1431;
      if (x_1431) {
        x_1437 = (-(tint_symbol_88.y) < x_1421.y);
        x_1438 = x_1437;
      }
      x_1444 = x_1438;
      if (x_1438) {
        x_1443 = (x_1421.y < tint_symbol_88.y);
        x_1444 = x_1443;
      }
      if (x_1444) {
        let x_1448 = tint_symbol_92;
        let x_1447 = tint_symbol_82(x_1448, x_1416);
        tint_symbol_92 = x_1447;
      }
    }
  }
  let x_1449 = tint_symbol_92;
  return x_1449;
}

fn tint_symbol_94(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_95 = vec2f();
  var x_1476 = vec4f();
  tint_symbol_95 = vec2f(-1.0f);
  let x_1475 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1485 = tint_symbol_95;
  let x_1478 = tint_symbol_86(x_1475.z, x_1475.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1485);
  tint_symbol_95 = x_1478;
  let x_1494 = tint_symbol_95;
  let x_1486 = tint_symbol_86(-(x_1475.z), x_1475.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1494);
  tint_symbol_95 = x_1486;
  let x_1503 = tint_symbol_95;
  let x_1495 = tint_symbol_86(-(x_1475.x), x_1475.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1503);
  tint_symbol_95 = x_1495;
  let x_1511 = tint_symbol_95;
  let x_1504 = tint_symbol_86(x_1475.x, x_1475.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1511);
  tint_symbol_95 = x_1504;
  let x_1519 = tint_symbol_95;
  let x_1512 = tint_symbol_86(x_1475.y, x_1475.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1519);
  tint_symbol_95 = x_1512;
  let x_1528 = tint_symbol_95;
  let x_1520 = tint_symbol_86(-(x_1475.y), x_1475.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1528);
  tint_symbol_95 = x_1520;
  let x_1529 = tint_symbol_95;
  return x_1529;
}

fn tint_symbol_96(tint_symbol_97 : f32, tint_symbol_91_1 : f32, tint_symbol_87_1 : f32, tint_symbol_98 : vec2f, tint_symbol_99 : vec2f, tint_symbol_89_1 : f32, tint_symbol_90_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_92_1 = 0.0f;
  var x_1558 : bool;
  var x_1559 : bool;
  var x_1564 : bool;
  var x_1565 : bool;
  var x_1570 : bool;
  var x_1571 : bool;
  tint_symbol_92_1 = tint_symbol_91_1;
  if ((abs(tint_symbol_90_1) > 0.00000000999999993923f)) {
    let x_1548 = ((tint_symbol_87_1 - tint_symbol_89_1) / tint_symbol_90_1);
    let x_1550 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1548));
    let x_1553 = (tint_symbol_98.x < x_1550.x);
    x_1559 = x_1553;
    if (x_1553) {
      x_1558 = (x_1550.x < tint_symbol_99.x);
      x_1559 = x_1558;
    }
    x_1565 = x_1559;
    if (x_1559) {
      x_1564 = (tint_symbol_98.y < x_1550.y);
      x_1565 = x_1564;
    }
    x_1571 = x_1565;
    if (x_1565) {
      x_1570 = (x_1550.y < tint_symbol_99.y);
      x_1571 = x_1570;
    }
    var x_1578 : bool;
    var x_1579 : bool;
    if (x_1571) {
      let x_1574 = (x_1548 > tint_symbol_97);
      x_1579 = x_1574;
      if (x_1574) {
        x_1578 = (tint_symbol_92_1 < x_1548);
        x_1579 = x_1578;
      }
      if (x_1579) {
        tint_symbol_92_1 = x_1548;
      }
    }
  }
  let x_1582 = tint_symbol_92_1;
  return x_1582;
}

const x_1591 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

const x_1619 = vec3f(1.0f);

fn tint_symbol_100(tint_symbol_80_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f) {
  var tint_symbol_101 = vec2f();
  var tint_symbol_81_1 = vec4f();
  var tint_symbol_103 = 0.0f;
  var x_1633 = vec3f();
  var tint_symbol_105 = 0.0f;
  var x_1667 = vec3f();
  var tint_symbol_114 = 0.0f;
  var x_1600 : bool;
  var x_1601 : bool;
  let x_1589 = tint_symbol_94(tint_symbol_23_7, tint_symbol_28_10);
  tint_symbol_101 = x_1589;
  tint_symbol_81_1 = x_1591;
  let x_1595 = (tint_symbol_101.y < 0.0f);
  x_1601 = x_1595;
  if (x_1595) {
    x_1600 = (tint_symbol_101.x > 0.0f);
    x_1601 = x_1600;
  }
  if (x_1601) {
    tint_symbol_101.y = tint_symbol_101.x;
    tint_symbol_101.x = 0.0f;
  }
  if ((tint_symbol_101.x >= 0.0f)) {
    tint_symbol_103 = (tint_symbol_101.x + 0.00000999999974737875f);
    let x_1632 = ((x_1619 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_105 = 0.0f;
    loop {
      var x_1685 : bool;
      var x_1686 : bool;
      var x_1690 : bool;
      var x_1691 : bool;
      var x_1698 : bool;
      var x_1699 : bool;
      var x_1703 : bool;
      var x_1704 : bool;
      var x_1711 : bool;
      var x_1712 : bool;
      var x_1841 : bool;
      var x_1842 : bool;
      if (!((tint_symbol_103 < tint_symbol_101.y))) {
        break;
      }
      let x_1666 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_1675 = (((((tint_symbol_23_7 + (tint_symbol_28_10 * tint_symbol_103)) / x_1666) + x_1619) * 0.5f) * tint_symbol_71.inner.tint_symbol_68.xyz);
      let x_1676 = tint_ftoi_1(x_1675);
      let x_1678 = (x_1676.x >= 0i);
      x_1686 = x_1678;
      if (x_1678) {
        let x_1684 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_1682 = tint_ftoi(x_1684);
        x_1685 = (x_1676.x < x_1682);
        x_1686 = x_1685;
      }
      x_1691 = x_1686;
      if (x_1686) {
        x_1690 = (x_1676.y >= 0i);
        x_1691 = x_1690;
      }
      x_1699 = x_1691;
      if (x_1691) {
        let x_1697 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_1695 = tint_ftoi(x_1697);
        x_1698 = (x_1676.y < x_1695);
        x_1699 = x_1698;
      }
      x_1704 = x_1699;
      if (x_1699) {
        x_1703 = (x_1676.z >= 0i);
        x_1704 = x_1703;
      }
      x_1712 = x_1704;
      if (x_1704) {
        let x_1710 = tint_symbol_71.inner.tint_symbol_68.z;
        let x_1708 = tint_ftoi(x_1710);
        x_1711 = (x_1676.z < x_1708);
        x_1712 = x_1711;
      }
      if (x_1712) {
        let x_1719 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_1717 = tint_ftoi(x_1719);
        let x_1725 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_1727 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_1723 = tint_ftoi((x_1725 * x_1727));
        tint_symbol_105 = max(tint_symbol_105, tint_symbol_72.inner[((x_1676.x + (x_1676.y * x_1717)) + (x_1676.z * x_1723))]);
      }
      let x_1762 = ((((vec3f(floor(x_1675.x), floor(x_1675.y), floor(x_1675.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_1666);
      let x_1763 = ((((vec3f(ceil(x_1675.x), ceil(x_1675.y), ceil(x_1675.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_1666);
      tint_symbol_114 = tint_symbol_101.y;
      let x_1769 = tint_symbol_101.x;
      let x_1770 = tint_symbol_114;
      let x_1767 = tint_symbol_96(x_1769, x_1770, x_1762.x, x_1762.yz, x_1763.yz, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_114 = x_1767;
      let x_1780 = tint_symbol_101.x;
      let x_1781 = tint_symbol_114;
      let x_1778 = tint_symbol_96(x_1780, x_1781, x_1763.x, x_1762.yz, x_1763.yz, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_114 = x_1778;
      let x_1791 = tint_symbol_101.x;
      let x_1792 = tint_symbol_114;
      let x_1789 = tint_symbol_96(x_1791, x_1792, x_1762.y, x_1762.xz, x_1763.xz, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_114 = x_1789;
      let x_1802 = tint_symbol_101.x;
      let x_1803 = tint_symbol_114;
      let x_1800 = tint_symbol_96(x_1802, x_1803, x_1763.y, x_1762.xz, x_1763.xz, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_114 = x_1800;
      let x_1813 = tint_symbol_101.x;
      let x_1814 = tint_symbol_114;
      let x_1811 = tint_symbol_96(x_1813, x_1814, x_1762.z, x_1762.xy, x_1763.xy, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_114 = x_1811;
      let x_1824 = tint_symbol_101.x;
      let x_1825 = tint_symbol_114;
      let x_1822 = tint_symbol_96(x_1824, x_1825, x_1763.z, x_1762.xy, x_1763.xy, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_114 = x_1822;
      let x_1835 = (tint_symbol_114 <= tint_symbol_103);
      x_1842 = x_1835;
      if (x_1835) {
      } else {
        x_1841 = (tint_symbol_114 >= tint_symbol_101.y);
        x_1842 = x_1841;
      }
      if (x_1842) {
        tint_symbol_103 = (tint_symbol_103 + (min(min(x_1632.x, x_1632.y), x_1632.z) * 0.5f));
      } else {
        tint_symbol_103 = (tint_symbol_114 + 0.00000999999974737875f);
      }
    }
    let x_1858 = (tint_symbol_105 / 4095.0f);
    tint_symbol_81_1 = vec4f(x_1858, x_1858, (x_1858 + ((1.0f - x_1858) * 0.5f)), 1.0f);
  } else {
    tint_symbol_81_1 = x_1362;
  }
  let x_1865 = tint_symbol_81_1;
  textureStore(tint_symbol_73, tint_symbol_80_1, x_1865);
  return;
}

fn tint_symbol_116(tint_symbol_80_2 : vec2i, tint_symbol_23_8 : vec3f, tint_symbol_28_11 : vec3f) {
  var tint_symbol_101_1 = vec2f();
  var tint_symbol_81_2 = vec4f();
  var tint_symbol_103_1 = 0.0f;
  var x_1912 = vec3f();
  var tint_symbol_117 = 0.0f;
  var x_1946 = vec3f();
  var tint_symbol_114_1 = 0.0f;
  var tint_symbol_111 = 0.0f;
  var x_1881 : bool;
  var x_1882 : bool;
  let x_1871 = tint_symbol_94(tint_symbol_23_8, tint_symbol_28_11);
  tint_symbol_101_1 = x_1871;
  tint_symbol_81_2 = x_1591;
  let x_1876 = (tint_symbol_101_1.y < 0.0f);
  x_1882 = x_1876;
  if (x_1876) {
    x_1881 = (tint_symbol_101_1.x > 0.0f);
    x_1882 = x_1881;
  }
  if (x_1882) {
    tint_symbol_101_1.y = tint_symbol_101_1.x;
    tint_symbol_101_1.x = 0.0f;
  }
  if ((tint_symbol_101_1.x >= 0.0f)) {
    tint_symbol_103_1 = (tint_symbol_101_1.x + 0.00000999999974737875f);
    let x_1911 = ((x_1619 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_117 = 0.0f;
    loop {
      var x_2062 : bool;
      var x_2063 : bool;
      var x_2067 : bool;
      var x_2068 : bool;
      var x_2075 : bool;
      var x_2076 : bool;
      var x_2080 : bool;
      var x_2081 : bool;
      var x_2088 : bool;
      var x_2089 : bool;
      var x_2118 : bool;
      var x_2119 : bool;
      if (!((tint_symbol_103_1 < tint_symbol_101_1.y))) {
        break;
      }
      let x_1945 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_1954 = (((((tint_symbol_23_8 + (tint_symbol_28_11 * tint_symbol_103_1)) / x_1945) + x_1619) * 0.5f) * tint_symbol_71.inner.tint_symbol_68.xyz);
      let x_1955 = tint_ftoi_1(x_1954);
      let x_1982 = ((((vec3f(floor(x_1954.x), floor(x_1954.y), floor(x_1954.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_1945);
      let x_1983 = ((((vec3f(ceil(x_1954.x), ceil(x_1954.y), ceil(x_1954.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_1945);
      tint_symbol_114_1 = tint_symbol_101_1.y;
      let x_1989 = tint_symbol_101_1.x;
      let x_1990 = tint_symbol_114_1;
      let x_1987 = tint_symbol_96(x_1989, x_1990, x_1982.x, x_1982.yz, x_1983.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
      tint_symbol_114_1 = x_1987;
      let x_2000 = tint_symbol_101_1.x;
      let x_2001 = tint_symbol_114_1;
      let x_1998 = tint_symbol_96(x_2000, x_2001, x_1983.x, x_1982.yz, x_1983.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
      tint_symbol_114_1 = x_1998;
      let x_2011 = tint_symbol_101_1.x;
      let x_2012 = tint_symbol_114_1;
      let x_2009 = tint_symbol_96(x_2011, x_2012, x_1982.y, x_1982.xz, x_1983.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
      tint_symbol_114_1 = x_2009;
      let x_2022 = tint_symbol_101_1.x;
      let x_2023 = tint_symbol_114_1;
      let x_2020 = tint_symbol_96(x_2022, x_2023, x_1983.y, x_1982.xz, x_1983.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
      tint_symbol_114_1 = x_2020;
      let x_2033 = tint_symbol_101_1.x;
      let x_2034 = tint_symbol_114_1;
      let x_2031 = tint_symbol_96(x_2033, x_2034, x_1982.z, x_1982.xy, x_1983.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
      tint_symbol_114_1 = x_2031;
      let x_2044 = tint_symbol_101_1.x;
      let x_2045 = tint_symbol_114_1;
      let x_2042 = tint_symbol_96(x_2044, x_2045, x_1983.z, x_1982.xy, x_1983.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
      tint_symbol_114_1 = x_2042;
      tint_symbol_111 = 0.0f;
      let x_2055 = (x_1955.x >= 0i);
      x_2063 = x_2055;
      if (x_2055) {
        let x_2061 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2059 = tint_ftoi(x_2061);
        x_2062 = (x_1955.x < x_2059);
        x_2063 = x_2062;
      }
      x_2068 = x_2063;
      if (x_2063) {
        x_2067 = (x_1955.y >= 0i);
        x_2068 = x_2067;
      }
      x_2076 = x_2068;
      if (x_2068) {
        let x_2074 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2072 = tint_ftoi(x_2074);
        x_2075 = (x_1955.y < x_2072);
        x_2076 = x_2075;
      }
      x_2081 = x_2076;
      if (x_2076) {
        x_2080 = (x_1955.z >= 0i);
        x_2081 = x_2080;
      }
      x_2089 = x_2081;
      if (x_2081) {
        let x_2087 = tint_symbol_71.inner.tint_symbol_68.z;
        let x_2085 = tint_ftoi(x_2087);
        x_2088 = (x_1955.z < x_2085);
        x_2089 = x_2088;
      }
      if (x_2089) {
        let x_2096 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2094 = tint_ftoi(x_2096);
        let x_2102 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2104 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2100 = tint_ftoi((x_2102 * x_2104));
        tint_symbol_111 = tint_symbol_72.inner[((x_1955.x + (x_1955.y * x_2094)) + (x_1955.z * x_2100))];
      }
      let x_2112 = (tint_symbol_114_1 <= tint_symbol_103_1);
      x_2119 = x_2112;
      if (x_2112) {
      } else {
        x_2118 = (tint_symbol_114_1 >= tint_symbol_101_1.y);
        x_2119 = x_2118;
      }
      if (x_2119) {
        tint_symbol_114_1 = (tint_symbol_103_1 + (min(min(x_1911.x, x_1911.y), x_1911.z) * 0.5f));
      }
      tint_symbol_117 = (tint_symbol_117 + ((tint_symbol_114_1 - tint_symbol_103_1) * (tint_symbol_111 / 4095.0f)));
      tint_symbol_103_1 = (tint_symbol_114_1 + 0.00000999999974737875f);
    }
    let x_2144 = clamp((1.0f - exp(-(tint_symbol_117))), 0.0f, 1.0f);
    tint_symbol_81_2 = vec4f(x_2144, x_2144, x_2144, 1.0f);
  } else {
    tint_symbol_81_2 = x_1362;
  }
  let x_2148 = tint_symbol_81_2;
  textureStore(tint_symbol_73, tint_symbol_80_2, x_2148);
  return;
}

const x_2159 = vec4f(0.0f, 1.0f, 0.0f, 1.0f);

fn tint_symbol_121(tint_symbol_122 : f32, tint_symbol_123 : f32, tint_symbol_124 : f32, tint_symbol_125 : f32) -> vec4f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec4f();
  let x_2162 = ((tint_symbol_123 + tint_symbol_122) * 0.5f);
  let x_2164 = ((tint_symbol_125 + tint_symbol_124) * 0.5f);
  if ((x_2162 > x_2164)) {
    let x_2170 = ((x_2162 - x_2164) / (tint_symbol_125 - x_2164));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(0.0f, 0.0f, 1.0f, 1.0f) * x_2170) + (x_2159 * (1.0f - x_2170)));
  }
  if (!(tint_return_flag_1)) {
    let x_2181 = ((x_2164 - x_2162) / (x_2164 - tint_symbol_124));
    tint_return_flag_1 = true;
    tint_return_value_1 = ((vec4f(1.0f, 0.0f, 0.0f, 1.0f) * x_2181) + (x_2159 * (1.0f - x_2181)));
  }
  let x_2186 = tint_return_value_1;
  return x_2186;
}

fn tint_symbol_128(tint_symbol_80_3 : vec2i, tint_symbol_23_9 : vec3f, tint_symbol_28_12 : vec3f) {
  var tint_symbol_101_2 = vec2f();
  var tint_symbol_81_3 = vec4f();
  var tint_symbol_103_2 = 0.0f;
  var x_2233 = vec3f();
  var tint_symbol_129 = vec4f();
  var x_2267 = vec3f();
  var tint_symbol_114_2 = 0.0f;
  var tint_symbol_111_1 = 0.0f;
  var x_2476 = vec4f();
  var x_2202 : bool;
  var x_2203 : bool;
  let x_2192 = tint_symbol_94(tint_symbol_23_9, tint_symbol_28_12);
  tint_symbol_101_2 = x_2192;
  tint_symbol_81_3 = x_1591;
  let x_2197 = (tint_symbol_101_2.y < 0.0f);
  x_2203 = x_2197;
  if (x_2197) {
    x_2202 = (tint_symbol_101_2.x > 0.0f);
    x_2203 = x_2202;
  }
  if (x_2203) {
    tint_symbol_101_2.y = tint_symbol_101_2.x;
    tint_symbol_101_2.x = 0.0f;
  }
  if ((tint_symbol_101_2.x >= 0.0f)) {
    tint_symbol_103_2 = (tint_symbol_101_2.x + 0.00000999999974737875f);
    let x_2232 = ((x_1619 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_129 = x_1591;
    loop {
      var x_2383 : bool;
      var x_2384 : bool;
      var x_2388 : bool;
      var x_2389 : bool;
      var x_2396 : bool;
      var x_2397 : bool;
      var x_2401 : bool;
      var x_2402 : bool;
      var x_2409 : bool;
      var x_2410 : bool;
      var x_2439 : bool;
      var x_2440 : bool;
      if (!((tint_symbol_103_2 < tint_symbol_101_2.y))) {
        break;
      }
      let x_2266 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_2275 = (((((tint_symbol_23_9 + (tint_symbol_28_12 * tint_symbol_103_2)) / x_2266) + x_1619) * 0.5f) * tint_symbol_71.inner.tint_symbol_68.xyz);
      let x_2276 = tint_ftoi_1(x_2275);
      let x_2303 = ((((vec3f(floor(x_2275.x), floor(x_2275.y), floor(x_2275.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_2266);
      let x_2304 = ((((vec3f(ceil(x_2275.x), ceil(x_2275.y), ceil(x_2275.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_2266);
      tint_symbol_114_2 = tint_symbol_101_2.y;
      let x_2310 = tint_symbol_101_2.x;
      let x_2311 = tint_symbol_114_2;
      let x_2308 = tint_symbol_96(x_2310, x_2311, x_2303.x, x_2303.yz, x_2304.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
      tint_symbol_114_2 = x_2308;
      let x_2321 = tint_symbol_101_2.x;
      let x_2322 = tint_symbol_114_2;
      let x_2319 = tint_symbol_96(x_2321, x_2322, x_2304.x, x_2303.yz, x_2304.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
      tint_symbol_114_2 = x_2319;
      let x_2332 = tint_symbol_101_2.x;
      let x_2333 = tint_symbol_114_2;
      let x_2330 = tint_symbol_96(x_2332, x_2333, x_2303.y, x_2303.xz, x_2304.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
      tint_symbol_114_2 = x_2330;
      let x_2343 = tint_symbol_101_2.x;
      let x_2344 = tint_symbol_114_2;
      let x_2341 = tint_symbol_96(x_2343, x_2344, x_2304.y, x_2303.xz, x_2304.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
      tint_symbol_114_2 = x_2341;
      let x_2354 = tint_symbol_101_2.x;
      let x_2355 = tint_symbol_114_2;
      let x_2352 = tint_symbol_96(x_2354, x_2355, x_2303.z, x_2303.xy, x_2304.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
      tint_symbol_114_2 = x_2352;
      let x_2365 = tint_symbol_101_2.x;
      let x_2366 = tint_symbol_114_2;
      let x_2363 = tint_symbol_96(x_2365, x_2366, x_2304.z, x_2303.xy, x_2304.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
      tint_symbol_114_2 = x_2363;
      tint_symbol_111_1 = 0.0f;
      let x_2376 = (x_2276.x >= 0i);
      x_2384 = x_2376;
      if (x_2376) {
        let x_2382 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2380 = tint_ftoi(x_2382);
        x_2383 = (x_2276.x < x_2380);
        x_2384 = x_2383;
      }
      x_2389 = x_2384;
      if (x_2384) {
        x_2388 = (x_2276.y >= 0i);
        x_2389 = x_2388;
      }
      x_2397 = x_2389;
      if (x_2389) {
        let x_2395 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2393 = tint_ftoi(x_2395);
        x_2396 = (x_2276.y < x_2393);
        x_2397 = x_2396;
      }
      x_2402 = x_2397;
      if (x_2397) {
        x_2401 = (x_2276.z >= 0i);
        x_2402 = x_2401;
      }
      x_2410 = x_2402;
      if (x_2402) {
        let x_2408 = tint_symbol_71.inner.tint_symbol_68.z;
        let x_2406 = tint_ftoi(x_2408);
        x_2409 = (x_2276.z < x_2406);
        x_2410 = x_2409;
      }
      if (x_2410) {
        let x_2417 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2415 = tint_ftoi(x_2417);
        let x_2423 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2425 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2421 = tint_ftoi((x_2423 * x_2425));
        tint_symbol_111_1 = tint_symbol_72.inner[((x_2276.x + (x_2276.y * x_2415)) + (x_2276.z * x_2421))];
      }
      let x_2433 = (tint_symbol_114_2 <= tint_symbol_103_2);
      x_2440 = x_2433;
      if (x_2433) {
      } else {
        x_2439 = (tint_symbol_114_2 >= tint_symbol_101_2.y);
        x_2440 = x_2439;
      }
      if (x_2440) {
        tint_symbol_114_2 = (tint_symbol_103_2 + (min(min(x_2232.x, x_2232.y), x_2232.z) * 0.5f));
      }
      let x_2451 = tint_symbol_114_2;
      let x_2452 = tint_symbol_103_2;
      let x_2455 = tint_symbol_103_2;
      let x_2456 = tint_symbol_114_2;
      let x_2458 = tint_symbol_101_2.x;
      let x_2460 = tint_symbol_101_2.y;
      let x_2454 = tint_symbol_121(x_2455, x_2456, x_2458, x_2460);
      tint_symbol_129 = (tint_symbol_129 + (x_2454 * ((x_2451 - x_2452) * (tint_symbol_111_1 / 4095.0f))));
      tint_symbol_103_2 = (tint_symbol_114_2 + 0.00000999999974737875f);
    }
    tint_symbol_81_3 = (tint_symbol_129 / vec4f((tint_symbol_101_2.y - tint_symbol_101_2.x)));
    tint_symbol_81_3.w = 1.0f;
  } else {
    tint_symbol_81_3 = x_1362;
  }
  let x_2481 = tint_symbol_81_3;
  textureStore(tint_symbol_73, tint_symbol_80_3, x_2481);
  return;
}

fn tint_symbol_131(tint_symbol_132 : f32, tint_symbol_1_1 : f32, tint_symbol_133 : f32) -> vec3f {
  var tint_symbol_136 = vec3f();
  var x_2502 : bool;
  var x_2503 : bool;
  let x_2488 = (tint_symbol_133 * tint_symbol_1_1);
  let x_2490 = (tint_symbol_132 / 60.0f);
  let x_2497 = (x_2488 * (1.0f - abs(((fract((x_2490 / 2.0f)) * 2.0f) - 1.0f))));
  let x_2499 = (x_2490 >= 0.0f);
  x_2503 = x_2499;
  if (x_2499) {
    x_2502 = (x_2490 < 1.0f);
    x_2503 = x_2502;
  }
  var x_2511 : bool;
  var x_2512 : bool;
  if (x_2503) {
    tint_symbol_136 = vec3f(x_2488, x_2497, 0.0f);
  } else {
    let x_2508 = (x_2490 >= 1.0f);
    x_2512 = x_2508;
    if (x_2508) {
      x_2511 = (x_2490 < 2.0f);
      x_2512 = x_2511;
    }
    var x_2521 : bool;
    var x_2522 : bool;
    if (x_2512) {
      tint_symbol_136 = vec3f(x_2497, x_2488, 0.0f);
    } else {
      let x_2517 = (x_2490 >= 2.0f);
      x_2522 = x_2517;
      if (x_2517) {
        x_2521 = (x_2490 < 3.0f);
        x_2522 = x_2521;
      }
      var x_2531 : bool;
      var x_2532 : bool;
      if (x_2522) {
        tint_symbol_136 = vec3f(0.0f, x_2488, x_2497);
      } else {
        let x_2527 = (x_2490 >= 3.0f);
        x_2532 = x_2527;
        if (x_2527) {
          x_2531 = (x_2490 < 4.0f);
          x_2532 = x_2531;
        }
        var x_2541 : bool;
        var x_2542 : bool;
        if (x_2532) {
          tint_symbol_136 = vec3f(0.0f, x_2497, x_2488);
        } else {
          let x_2537 = (x_2490 >= 4.0f);
          x_2542 = x_2537;
          if (x_2537) {
            x_2541 = (x_2490 < 5.0f);
            x_2542 = x_2541;
          }
          if (x_2542) {
            tint_symbol_136 = vec3f(x_2497, 0.0f, x_2488);
          } else {
            tint_symbol_136 = vec3f(x_2488, 0.0f, x_2497);
          }
        }
      }
    }
  }
  let x_2548 = (tint_symbol_133 - x_2488);
  let x_2549 = tint_symbol_136;
  return (x_2549 + vec3f(x_2548));
}

fn tint_symbol_137(tint_symbol_109 : vec3i) -> f32 {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = 0.0f;
  var x_2567 : bool;
  var x_2568 : bool;
  var x_2572 : bool;
  var x_2573 : bool;
  var x_2581 : bool;
  var x_2582 : bool;
  var x_2586 : bool;
  var x_2587 : bool;
  var x_2595 : bool;
  var x_2596 : bool;
  let x_2559 = (tint_symbol_109.x <= 0i);
  x_2568 = x_2559;
  if (x_2559) {
  } else {
    let x_2565 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2563 = tint_ftoi(x_2565);
    x_2567 = (tint_symbol_109.x >= (x_2563 - 1i));
    x_2568 = x_2567;
  }
  x_2573 = x_2568;
  if (x_2568) {
  } else {
    x_2572 = (tint_symbol_109.y <= 0i);
    x_2573 = x_2572;
  }
  x_2582 = x_2573;
  if (x_2573) {
  } else {
    let x_2579 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2577 = tint_ftoi(x_2579);
    x_2581 = (tint_symbol_109.y >= (x_2577 - 1i));
    x_2582 = x_2581;
  }
  x_2587 = x_2582;
  if (x_2582) {
  } else {
    x_2586 = (tint_symbol_109.z <= 0i);
    x_2587 = x_2586;
  }
  x_2596 = x_2587;
  if (x_2587) {
  } else {
    let x_2593 = tint_symbol_71.inner.tint_symbol_68.z;
    let x_2591 = tint_ftoi(x_2593);
    x_2595 = (tint_symbol_109.z >= (x_2591 - 1i));
    x_2596 = x_2595;
  }
  if (x_2596) {
    tint_return_flag_2 = true;
    tint_return_value_2 = 0.0f;
  }
  if (!(tint_return_flag_2)) {
    let x_2607 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2605 = tint_ftoi(x_2607);
    let x_2613 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2615 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2611 = tint_ftoi((x_2613 * x_2615));
    let x_2618 = ((tint_symbol_109.x + (tint_symbol_109.y * x_2605)) + (tint_symbol_109.z * x_2611));
    let x_2624 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2622 = tint_ftoi(x_2624);
    let x_2630 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2632 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2628 = tint_ftoi((x_2630 * x_2632));
    let x_2641 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2639 = tint_ftoi(x_2641);
    let x_2647 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2649 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2645 = tint_ftoi((x_2647 * x_2649));
    let x_2658 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2656 = tint_ftoi(x_2658);
    let x_2664 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2666 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2662 = tint_ftoi((x_2664 * x_2666));
    let x_2675 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2673 = tint_ftoi(x_2675);
    let x_2681 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2683 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2679 = tint_ftoi((x_2681 * x_2683));
    let x_2691 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2689 = tint_ftoi(x_2691);
    let x_2698 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2700 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2696 = tint_ftoi((x_2698 * x_2700));
    let x_2708 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2706 = tint_ftoi(x_2708);
    let x_2715 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2717 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2713 = tint_ftoi((x_2715 * x_2717));
    let x_2726 = ((tint_symbol_72.inner[(((tint_symbol_109.x + 1i) + (tint_symbol_109.y * x_2622)) + (tint_symbol_109.z * x_2628))] - tint_symbol_72.inner[(((tint_symbol_109.x - 1i) + (tint_symbol_109.y * x_2639)) + (tint_symbol_109.z * x_2645))]) / 2.0f);
    let x_2732 = ((tint_symbol_72.inner[((tint_symbol_109.x + ((tint_symbol_109.y + 1i) * x_2656)) + (tint_symbol_109.z * x_2662))] - tint_symbol_72.inner[((tint_symbol_109.x + ((tint_symbol_109.y - 1i) * x_2673)) + (tint_symbol_109.z * x_2679))]) / 2.0f);
    let x_2738 = ((tint_symbol_72.inner[((tint_symbol_109.x + (tint_symbol_109.y * x_2689)) + ((tint_symbol_109.z + 1i) * x_2696))] - tint_symbol_72.inner[((tint_symbol_109.x + (tint_symbol_109.y * x_2706)) + ((tint_symbol_109.z - 1i) * x_2713))]) / 2.0f);
    tint_return_flag_2 = true;
    tint_return_value_2 = sqrt((((x_2726 * x_2726) + (x_2732 * x_2732)) + (x_2738 * x_2738)));
  }
  let x_2745 = tint_return_value_2;
  return x_2745;
}

fn tint_symbol_148(tint_symbol_80_4 : vec2i, tint_symbol_23_10 : vec3f, tint_symbol_28_13 : vec3f) {
  var tint_symbol_101_3 = vec2f();
  var tint_symbol_81_4 = vec4f();
  var tint_symbol_103_3 = 0.0f;
  var x_2792 = vec3f();
  var tint_symbol_129_1 = vec3f();
  var tint_symbol_149 = 0.0f;
  var x_2833 = vec3f();
  var tint_symbol_111_2 = 0.0f;
  var tint_symbol_150 = 0.0f;
  var tint_symbol_114_3 = 0.0f;
  var tint_symbol_153 = 0.0f;
  var x_2761 : bool;
  var x_2762 : bool;
  let x_2751 = tint_symbol_94(tint_symbol_23_10, tint_symbol_28_13);
  tint_symbol_101_3 = x_2751;
  tint_symbol_81_4 = x_1591;
  let x_2756 = (tint_symbol_101_3.y < 0.0f);
  x_2762 = x_2756;
  if (x_2756) {
    x_2761 = (tint_symbol_101_3.x > 0.0f);
    x_2762 = x_2761;
  }
  if (x_2762) {
    tint_symbol_101_3.y = tint_symbol_101_3.x;
    tint_symbol_101_3.x = 0.0f;
  }
  if ((tint_symbol_101_3.x >= 0.0f)) {
    tint_symbol_103_3 = (tint_symbol_101_3.x + 0.00000999999974737875f);
    let x_2791 = ((x_1619 * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_129_1 = vec3f();
    tint_symbol_149 = 1.0f;
    loop {
      var x_2809 : bool;
      var x_2810 : bool;
      var x_2853 : bool;
      var x_2854 : bool;
      var x_2858 : bool;
      var x_2859 : bool;
      var x_2866 : bool;
      var x_2867 : bool;
      var x_2871 : bool;
      var x_2872 : bool;
      var x_2879 : bool;
      var x_2880 : bool;
      var x_3007 : bool;
      var x_3008 : bool;
      let x_2804 = (tint_symbol_103_3 < tint_symbol_101_3.y);
      x_2810 = x_2804;
      if (x_2804) {
        x_2809 = (tint_symbol_149 > 0.00999999977648258209f);
        x_2810 = x_2809;
      }
      if (!(x_2810)) {
        break;
      }
      let x_2832 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
      let x_2841 = (((((tint_symbol_23_10 + (tint_symbol_28_13 * tint_symbol_103_3)) / x_2832) + x_1619) * 0.5f) * tint_symbol_71.inner.tint_symbol_68.xyz);
      let x_2842 = tint_ftoi_1(x_2841);
      tint_symbol_111_2 = 0.0f;
      tint_symbol_150 = 0.0f;
      let x_2846 = (x_2842.x >= 0i);
      x_2854 = x_2846;
      if (x_2846) {
        let x_2852 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2850 = tint_ftoi(x_2852);
        x_2853 = (x_2842.x < x_2850);
        x_2854 = x_2853;
      }
      x_2859 = x_2854;
      if (x_2854) {
        x_2858 = (x_2842.y >= 0i);
        x_2859 = x_2858;
      }
      x_2867 = x_2859;
      if (x_2859) {
        let x_2865 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2863 = tint_ftoi(x_2865);
        x_2866 = (x_2842.y < x_2863);
        x_2867 = x_2866;
      }
      x_2872 = x_2867;
      if (x_2867) {
        x_2871 = (x_2842.z >= 0i);
        x_2872 = x_2871;
      }
      x_2880 = x_2872;
      if (x_2872) {
        let x_2878 = tint_symbol_71.inner.tint_symbol_68.z;
        let x_2876 = tint_ftoi(x_2878);
        x_2879 = (x_2842.z < x_2876);
        x_2880 = x_2879;
      }
      if (x_2880) {
        let x_2887 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2885 = tint_ftoi(x_2887);
        let x_2893 = tint_symbol_71.inner.tint_symbol_68.x;
        let x_2895 = tint_symbol_71.inner.tint_symbol_68.y;
        let x_2891 = tint_ftoi((x_2893 * x_2895));
        tint_symbol_111_2 = tint_symbol_72.inner[((x_2842.x + (x_2842.y * x_2885)) + (x_2842.z * x_2891))];
        let x_2901 = tint_symbol_137(x_2842);
        tint_symbol_150 = x_2901;
      }
      let x_2928 = ((((vec3f(floor(x_2841.x), floor(x_2841.y), floor(x_2841.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_2832);
      let x_2929 = ((((vec3f(ceil(x_2841.x), ceil(x_2841.y), ceil(x_2841.z)) / tint_symbol_71.inner.tint_symbol_68.xyz) * 2.0f) - x_1619) * x_2832);
      tint_symbol_114_3 = tint_symbol_101_3.y;
      let x_2935 = tint_symbol_101_3.x;
      let x_2936 = tint_symbol_114_3;
      let x_2933 = tint_symbol_96(x_2935, x_2936, x_2928.x, x_2928.yz, x_2929.yz, tint_symbol_23_10.x, tint_symbol_28_13.x, tint_symbol_23_10.yz, tint_symbol_28_13.yz);
      tint_symbol_114_3 = x_2933;
      let x_2946 = tint_symbol_101_3.x;
      let x_2947 = tint_symbol_114_3;
      let x_2944 = tint_symbol_96(x_2946, x_2947, x_2929.x, x_2928.yz, x_2929.yz, tint_symbol_23_10.x, tint_symbol_28_13.x, tint_symbol_23_10.yz, tint_symbol_28_13.yz);
      tint_symbol_114_3 = x_2944;
      let x_2957 = tint_symbol_101_3.x;
      let x_2958 = tint_symbol_114_3;
      let x_2955 = tint_symbol_96(x_2957, x_2958, x_2928.y, x_2928.xz, x_2929.xz, tint_symbol_23_10.y, tint_symbol_28_13.y, tint_symbol_23_10.xz, tint_symbol_28_13.xz);
      tint_symbol_114_3 = x_2955;
      let x_2968 = tint_symbol_101_3.x;
      let x_2969 = tint_symbol_114_3;
      let x_2966 = tint_symbol_96(x_2968, x_2969, x_2929.y, x_2928.xz, x_2929.xz, tint_symbol_23_10.y, tint_symbol_28_13.y, tint_symbol_23_10.xz, tint_symbol_28_13.xz);
      tint_symbol_114_3 = x_2966;
      let x_2979 = tint_symbol_101_3.x;
      let x_2980 = tint_symbol_114_3;
      let x_2977 = tint_symbol_96(x_2979, x_2980, x_2928.z, x_2928.xy, x_2929.xy, tint_symbol_23_10.z, tint_symbol_28_13.z, tint_symbol_23_10.xy, tint_symbol_28_13.xy);
      tint_symbol_114_3 = x_2977;
      let x_2990 = tint_symbol_101_3.x;
      let x_2991 = tint_symbol_114_3;
      let x_2988 = tint_symbol_96(x_2990, x_2991, x_2929.z, x_2928.xy, x_2929.xy, tint_symbol_23_10.z, tint_symbol_28_13.z, tint_symbol_23_10.xy, tint_symbol_28_13.xy);
      tint_symbol_114_3 = x_2988;
      let x_3001 = (tint_symbol_114_3 <= tint_symbol_103_3);
      x_3008 = x_3001;
      if (x_3001) {
      } else {
        x_3007 = (tint_symbol_114_3 >= tint_symbol_101_3.y);
        x_3008 = x_3007;
      }
      if (x_3008) {
        tint_symbol_114_3 = (tint_symbol_103_3 + (min(min(x_2791.x, x_2791.y), x_2791.z) * 0.5f));
      }
      let x_3020 = (tint_symbol_111_2 / 4095.0f);
      if ((x_3020 > 0.05000000074505805969f)) {
        let x_3025 = tint_symbol_114_3;
        let x_3026 = tint_symbol_103_3;
        let x_3028 = min((tint_symbol_150 / 300.0f), 1.0f);
        tint_symbol_153 = (x_3020 * 0.30000001192092895508f);
        tint_symbol_153 = (tint_symbol_153 + ((x_3028 * 0.69999998807907104492f) * x_3020));
        tint_symbol_153 = (1.0f - exp(((-(tint_symbol_153) * (x_3025 - x_3026)) * 10.0f)));
        let x_3051 = tint_symbol_131(mix(0.0f, 360.0f, x_3020), mix(0.5f, 1.0f, x_3028), mix(0.5f, 1.0f, x_3020));
        tint_symbol_129_1 = (tint_symbol_129_1 + ((x_3051 + vec3f(0.0f, 0.0f, (((tint_symbol_103_3 - tint_symbol_101_3.x) / (tint_symbol_101_3.y - tint_symbol_101_3.x)) * 0.30000001192092895508f))) * (tint_symbol_149 * tint_symbol_153)));
        tint_symbol_149 = (tint_symbol_149 * (1.0f - tint_symbol_153));
      }
      tint_symbol_103_3 = (tint_symbol_114_3 + 0.00000999999974737875f);
    }
    tint_symbol_81_4 = vec4f(tint_symbol_129_1.x, tint_symbol_129_1.y, tint_symbol_129_1.z, 1.0f);
  } else {
    tint_symbol_81_4 = x_1362;
  }
  let x_3084 = tint_symbol_81_4;
  textureStore(tint_symbol_73, tint_symbol_80_4, x_3084);
  return;
}

fn tint_symbol_161_inner(tint_symbol_162 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_165 = vec3f();
  var x_3102 : bool;
  var x_3103 : bool;
  let x_3089 = bitcast<vec2i>(tint_symbol_162.xy);
  let x_3092 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_3097 = (x_3089.x < x_3092.x);
  x_3103 = x_3097;
  if (x_3097) {
    x_3102 = (x_3089.y < x_3092.y);
    x_3103 = x_3102;
  }
  if (x_3103) {
    let x_3111 = (vec2f(2.0f) / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_3089.x) + 0.5f) * x_3111.x) - 1.0f), (((f32(x_3089.y) + 0.5f) * x_3111.y) - 1.0f), 0.0f);
    tint_symbol_165 = vec3f(0.0f, 0.0f, 1.0f);
    let x_3129 = tint_symbol_37_1;
    let x_3128 = tint_symbol_77(x_3129);
    tint_symbol_37_1 = x_3128;
    let x_3131 = tint_symbol_165;
    let x_3130 = tint_symbol_75(x_3131);
    tint_symbol_165 = x_3130;
    let x_3135 = tint_symbol_74.inner;
    switch(x_3135) {
      case 3u: {
        let x_3151 = tint_symbol_37_1;
        let x_3152 = tint_symbol_165;
        tint_symbol_148(x_3089, x_3151, x_3152);
      }
      case 2u: {
        let x_3148 = tint_symbol_37_1;
        let x_3149 = tint_symbol_165;
        tint_symbol_128(x_3089, x_3148, x_3149);
      }
      case 1u: {
        let x_3145 = tint_symbol_37_1;
        let x_3146 = tint_symbol_165;
        tint_symbol_116(x_3089, x_3145, x_3146);
      }
      case 0u: {
        let x_3142 = tint_symbol_37_1;
        let x_3143 = tint_symbol_165;
        tint_symbol_100(x_3089, x_3142, x_3143);
      }
      default: {
        let x_3154 = tint_symbol_37_1;
        let x_3155 = tint_symbol_165;
        tint_symbol_148(x_3089, x_3154, x_3155);
      }
    }
  }
  return;
}

fn tint_symbol_161_1() {
  let x_3160 = tint_symbol_162_1;
  tint_symbol_161_inner(x_3160);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_162_1_param : vec3u) {
  tint_symbol_162_1 = tint_symbol_162_1_param;
  tint_symbol_161_1();
}

fn tint_symbol_166_inner(tint_symbol_162_3 : vec3u) {
  return;
}

fn tint_symbol_166_1() {
  let x_3167 = tint_symbol_162_2;
  tint_symbol_166_inner(x_3167);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_162_2_param : vec3u) {
  tint_symbol_162_2 = tint_symbol_162_2_param;
  tint_symbol_166_1();
}
