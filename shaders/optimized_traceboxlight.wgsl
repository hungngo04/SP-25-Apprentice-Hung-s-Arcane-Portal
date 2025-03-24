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

struct tint_symbol_81_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
  /* @offset(32) */
  tint_symbol_70 : vec4f,
  /* @offset(48) */
  tint_symbol_71 : vec4f,
}

alias Arr = array<tint_symbol_67, 6u>;

struct tint_symbol_72 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_73 : vec4f,
  /* @offset(80) */
  tint_symbol_74 : Arr,
}

struct tint_symbol_82_block {
  /* @offset(0) */
  inner : tint_symbol_72,
}

struct tint_symbol_75 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_77 : vec4f,
  /* @offset(32) */
  tint_symbol_78 : vec4f,
  /* @offset(48) */
  tint_symbol_79 : vec4f,
  /* @offset(64) */
  tint_symbol_80 : vec4f,
}

struct tint_symbol_84_block {
  /* @offset(0) */
  inner : tint_symbol_75,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

struct tint_symbol_104 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_105 : vec3f,
}

var<private> tint_symbol_115_1 : vec3u;

var<private> tint_symbol_115_2 : vec3u;

var<private> tint_symbol_115_3 : vec3u;

var<private> tint_symbol_115_4 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_81 : tint_symbol_81_block;

@group(0) @binding(1) var<uniform> tint_symbol_82 : tint_symbol_82_block;

@group(0) @binding(2) var tint_symbol_83 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_84 : tint_symbol_84_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
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
  let x_837 = tint_symbol_20;
  return x_837;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_873 = tint_symbol_21(tint_symbol_24);
  let x_874 = tint_symbol_17(tint_symbol_23, x_873);
  let x_875 = tint_symbol_17(tint_symbol_24, x_874);
  return x_875;
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
  let x_964 = tint_symbol_26;
  return sqrt(x_964);
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
  let x_1004 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1004 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1004), (tint_symbol_24_3.tint_symbol_2 / x_1004), (tint_symbol_24_3.tint_symbol_3 / x_1004), (tint_symbol_24_3.tint_symbol_4 / x_1004), (tint_symbol_24_3.tint_symbol_5 / x_1004), (tint_symbol_24_3.tint_symbol_6 / x_1004), (tint_symbol_24_3.tint_symbol_7 / x_1004), (tint_symbol_24_3.tint_symbol_8 / x_1004), (tint_symbol_24_3.tint_symbol_9 / x_1004), (tint_symbol_24_3.tint_symbol_10 / x_1004), (tint_symbol_24_3.tint_symbol_11 / x_1004), (tint_symbol_24_3.tint_symbol_12 / x_1004), (tint_symbol_24_3.tint_symbol_13 / x_1004), (tint_symbol_24_3.tint_symbol_14 / x_1004), (tint_symbol_24_3.tint_symbol_15 / x_1004), (tint_symbol_24_3.tint_symbol_16 / x_1004));
  }
  let x_1047 = tint_return_value;
  return x_1047;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1053 = tint_symbol_30(tint_symbol_28_2);
  let x_1054 = tint_symbol_34(x_1053);
  return tint_symbol(0.0f, x_1054.tint_symbol_2, x_1054.tint_symbol_3, x_1054.tint_symbol_4, -(((-(x_1054.tint_symbol_3) * tint_symbol_1.z) - (x_1054.tint_symbol_2 * tint_symbol_1.y))), -(((x_1054.tint_symbol_2 * tint_symbol_1.x) - (x_1054.tint_symbol_4 * tint_symbol_1.z))), -(((x_1054.tint_symbol_4 * tint_symbol_1.y) + (x_1054.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1092 = sin((tint_symbol_36 / 2.0f));
  let x_1094 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1092 * x_1094.tint_symbol_2), (x_1092 * x_1094.tint_symbol_3), (x_1092 * x_1094.tint_symbol_4), (x_1092 * x_1094.tint_symbol_5), (x_1092 * x_1094.tint_symbol_6), (x_1092 * x_1094.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1258 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1258;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1287 : bool;
  var x_1288 : bool;
  var x_1293 : bool;
  var x_1294 : bool;
  var x_1299 : bool;
  var x_1300 : bool;
  let x_1267 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1273 = tint_symbol_42(x_1267);
  tint_symbol_58.tint_symbol_23 = x_1273;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1267.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1282 = tint_symbol_58.tint_symbol_53;
  x_1288 = x_1282;
  if (x_1282) {
    x_1287 = (abs(x_1267.tint_symbol_9) <= 0.00000000999999993923f);
    x_1288 = x_1287;
  }
  x_1294 = x_1288;
  if (x_1288) {
    x_1293 = (abs(x_1267.tint_symbol_10) <= 0.00000000999999993923f);
    x_1294 = x_1293;
  }
  x_1300 = x_1294;
  if (x_1294) {
    x_1299 = (abs(x_1267.tint_symbol_11) <= 0.00000000999999993923f);
    x_1300 = x_1299;
  }
  tint_symbol_58.tint_symbol_54 = x_1300;
  let x_1301 = tint_symbol_58;
  return x_1301;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1307 = tint_symbol_41(tint_symbol_23_3);
  let x_1308 = tint_symbol_22(x_1307, tint_symbol_24_5);
  let x_1309 = tint_symbol_42(x_1308);
  return x_1309;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1314 = tint_symbol_40(tint_symbol_24_6);
  let x_1315 = tint_symbol_41(tint_symbol_28_5);
  let x_1316 = tint_symbol_22(x_1315, x_1314);
  let x_1317 = tint_symbol_42(x_1316);
  return x_1317;
}

fn tint_symbol_85(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_86 : tint_symbol_67, tint_symbol_87 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_88 = 0.0f;
  let x_1329 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1331 = tint_symbol_86.tint_symbol_68;
  let x_1333 = tint_symbol_86.tint_symbol_69;
  let x_1335 = tint_symbol_86.tint_symbol_70;
  let x_1330 = tint_symbol_44(x_1331.xyz, x_1333.xyz, x_1335.xyz);
  let x_1337 = tint_symbol_55(x_1329, x_1330);
  tint_symbol_58_1 = x_1337;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1365 : bool;
    var x_1366 : bool;
    var x_1381 : bool;
    var x_1382 : bool;
    if ((abs((tint_symbol_86.tint_symbol_68.z - tint_symbol_86.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1358 = (tint_symbol_86.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1366 = x_1358;
      if (x_1358) {
        x_1365 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_86.tint_symbol_70.x);
        x_1366 = x_1365;
      }
      var x_1380 : bool;
      x_1382 = x_1366;
      if (x_1366) {
        let x_1373 = (tint_symbol_86.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1381 = x_1373;
        if (x_1373) {
          x_1380 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_86.tint_symbol_70.y);
          x_1381 = x_1380;
        }
        x_1382 = x_1381;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1382;
    } else {
      var x_1405 : bool;
      var x_1406 : bool;
      var x_1421 : bool;
      var x_1422 : bool;
      if ((abs((tint_symbol_86.tint_symbol_68.y - tint_symbol_86.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1398 = (tint_symbol_86.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1406 = x_1398;
        if (x_1398) {
          x_1405 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_86.tint_symbol_70.x);
          x_1406 = x_1405;
        }
        var x_1420 : bool;
        x_1422 = x_1406;
        if (x_1406) {
          let x_1413 = (tint_symbol_86.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1421 = x_1413;
          if (x_1413) {
            x_1420 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_86.tint_symbol_70.z);
            x_1421 = x_1420;
          }
          x_1422 = x_1421;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1422;
      } else {
        var x_1444 : bool;
        var x_1445 : bool;
        var x_1460 : bool;
        var x_1461 : bool;
        if ((abs((tint_symbol_86.tint_symbol_68.x - tint_symbol_86.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1437 = (tint_symbol_86.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1445 = x_1437;
          if (x_1437) {
            x_1444 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_86.tint_symbol_70.y);
            x_1445 = x_1444;
          }
          var x_1459 : bool;
          x_1461 = x_1445;
          if (x_1445) {
            let x_1452 = (tint_symbol_86.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1460 = x_1452;
            if (x_1452) {
              x_1459 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_86.tint_symbol_70.z);
              x_1460 = x_1459;
            }
            x_1461 = x_1460;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1461;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_88 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_88 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_88 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_88 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_88 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_87, -1.0f);
      } else {
        if ((tint_symbol_87 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_88, 1.0f);
        } else {
          if ((tint_symbol_88 < tint_symbol_87)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_88, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_87, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_87, -1.0f);
  }
  let x_1521 = tint_return_value_1;
  return x_1521;
}

fn tint_symbol_89(tint_symbol_28_7 : vec3f) -> vec3f {
  var tint_symbol_90 = vec3f();
  let x_1529 = tint_symbol_81.inner.tint_symbol_64;
  let x_1526 = tint_symbol_61(tint_symbol_28_7, x_1529);
  tint_symbol_90 = x_1526;
  let x_1532 = tint_symbol_90;
  let x_1535 = tint_symbol_82.inner.tint_symbol_64;
  let x_1533 = tint_symbol_21(x_1535);
  let x_1536 = tint_symbol_61(x_1532, x_1533);
  tint_symbol_90 = x_1536;
  tint_symbol_90 = (tint_symbol_90 / tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1543 = tint_symbol_90;
  return x_1543;
}

fn tint_symbol_91(tint_symbol_92 : vec3f) -> vec3f {
  var tint_symbol_90_1 = vec3f();
  let x_1549 = tint_symbol_81.inner.tint_symbol_64;
  let x_1547 = tint_symbol_60(tint_symbol_92, x_1549);
  tint_symbol_90_1 = x_1547;
  let x_1551 = tint_symbol_90_1;
  let x_1554 = tint_symbol_82.inner.tint_symbol_64;
  let x_1552 = tint_symbol_21(x_1554);
  let x_1555 = tint_symbol_60(x_1551, x_1552);
  tint_symbol_90_1 = x_1555;
  tint_symbol_90_1 = (tint_symbol_90_1 / tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1561 = tint_symbol_90_1;
  return x_1561;
}

fn tint_symbol_93(tint_symbol_32_1 : vec3f) -> vec3f {
  var tint_symbol_90_2 = vec3f();
  tint_symbol_90_2 = (tint_symbol_32_1 * tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1571 = tint_symbol_90_2;
  let x_1573 = tint_symbol_82.inner.tint_symbol_64;
  let x_1570 = tint_symbol_61(x_1571, x_1573);
  tint_symbol_90_2 = x_1570;
  let x_1575 = tint_symbol_90_2;
  return normalize(x_1575);
}

fn tint_symbol_94(tint_symbol_92_1 : vec3f) -> vec3f {
  var tint_symbol_90_3 = vec3f();
  tint_symbol_90_3 = (tint_symbol_92_1 * tint_symbol_82.inner.tint_symbol_73.xyz);
  let x_1585 = tint_symbol_90_3;
  let x_1587 = tint_symbol_82.inner.tint_symbol_64;
  let x_1584 = tint_symbol_60(x_1585, x_1587);
  tint_symbol_90_3 = x_1584;
  let x_1588 = tint_symbol_90_3;
  return x_1588;
}

fn tint_symbol_95(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_96 = 0.0f;
  var tint_symbol_97 = 0.0f;
  var tint_symbol_98 = 0i;
  tint_symbol_96 = -1.0f;
  tint_symbol_97 = -1.0f;
  tint_symbol_98 = 0i;
  loop {
    if (!((tint_symbol_98 < 6i))) {
      break;
    }
    let x_1612 = tint_symbol_82.inner.tint_symbol_74[tint_symbol_98];
    let x_1613 = tint_symbol_96;
    let x_1608 = tint_symbol_85(tint_symbol_1_2, tint_symbol_28_8, x_1612, x_1613);
    if ((x_1608.y > 0.0f)) {
      tint_symbol_96 = x_1608.x;
      tint_symbol_97 = f32(tint_symbol_98);
    }

    continuing {
      tint_symbol_98 = (tint_symbol_98 + 1i);
    }
  }
  let x_1623 = tint_symbol_96;
  let x_1624 = tint_symbol_97;
  return vec2f(x_1623, x_1624);
}

const x_1629 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_100() -> vec4f {
  return x_1629;
}

fn tint_symbol_101(tint_symbol_97_1 : i32) -> vec4f {
  var tint_symbol_102 = vec4f();
  switch(tint_symbol_97_1) {
    case 5i: {
      tint_symbol_102 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
    }
    case 4i: {
      tint_symbol_102 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
    }
    case 3i: {
      tint_symbol_102 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
    }
    case 2i: {
      tint_symbol_102 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
    }
    case 1i: {
      tint_symbol_102 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
    }
    case 0i: {
      tint_symbol_102 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
    }
    default: {
      tint_symbol_102 = x_1629;
    }
  }
  let x_1664 = tint_symbol_102;
  return x_1664;
}

const x_1681 = vec3f(0.0f, -1.0f, 0.0f);

const x_1680 = vec3f(-1.0f, 0.0f, 0.0f);

const x_1679 = vec3f(0.0f, 0.0f, -1.0f);

fn tint_symbol_103(tint_symbol_97_2 : i32) -> vec3f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec3f();
  switch(tint_symbol_97_2) {
    case 5i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1681;
    }
    case 4i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1681;
    }
    case 3i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1680;
    }
    case 2i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1680;
    }
    case 1i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1679;
    }
    case 0i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1679;
    }
    default: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f();
    }
  }
  let x_1682 = tint_return_value_2;
  return x_1682;
}

fn tint_symbol_106(tint_symbol_107 : vec3f, tint_symbol_108 : vec3f, tint_symbol_109 : vec3f, tint_symbol_110 : vec3f) -> tint_symbol_104 {
  var tint_symbol_76 = vec4f();
  var tint_symbol_111 = 0.0f;
  var x_1714 = vec4f();
  var tint_symbol_113 = vec3f();
  var tint_symbol_90_4 = tint_symbol_104(vec4f(), vec3f());
  tint_symbol_76 = tint_symbol_84.inner.tint_symbol_76;
  tint_symbol_111 = length((tint_symbol_109 - tint_symbol_107));
  tint_symbol_76 = (tint_symbol_76 / vec4f(((tint_symbol_84.inner.tint_symbol_79[0i] + (tint_symbol_111 * tint_symbol_84.inner.tint_symbol_79.y)) + ((tint_symbol_111 * tint_symbol_111) * tint_symbol_84.inner.tint_symbol_79.z))));
  tint_symbol_113 = normalize((tint_symbol_109 - tint_symbol_107));
  tint_symbol_90_4.tint_symbol_76 = (tint_symbol_76 * max(dot(tint_symbol_113, -(tint_symbol_110)), 0.0f));
  tint_symbol_90_4.tint_symbol_105 = tint_symbol_113;
  let x_1731 = tint_symbol_90_4;
  return x_1731;
}

const x_1755 = vec2f(2.0f);

const x_1776 = vec3f(0.0f, 0.0f, 1.0f);

const x_1788 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_114_inner(tint_symbol_115 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_119 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var tint_symbol_102_1 = vec4f();
  var tint_symbol_121 = vec4f();
  var tint_symbol_122 = vec3f();
  var tint_symbol_123 = vec3f();
  var x_1751 : bool;
  var x_1752 : bool;
  let x_1737 = bitcast<vec2i>(tint_symbol_115.xy);
  let x_1741 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
  let x_1746 = (x_1737.x < x_1741.x);
  x_1752 = x_1746;
  if (x_1746) {
    x_1751 = (x_1737.y < x_1741.y);
    x_1752 = x_1751;
  }
  if (x_1752) {
    let x_1760 = (x_1755 / tint_symbol_81.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1737.x) + 0.5f) * x_1760.x) - 1.0f), (((f32(x_1737.y) + 0.5f) * x_1760.y) - 1.0f), 0.0f);
    tint_symbol_119 = x_1776;
    let x_1779 = tint_symbol_37_1;
    let x_1778 = tint_symbol_91(x_1779);
    tint_symbol_37_1 = x_1778;
    let x_1781 = tint_symbol_119;
    let x_1780 = tint_symbol_89(x_1781);
    tint_symbol_119 = x_1780;
    let x_1783 = tint_symbol_37_1;
    let x_1784 = tint_symbol_119;
    let x_1782 = tint_symbol_95(x_1783, x_1784);
    tint_symbol_58_2 = x_1782;
    tint_symbol_102_1 = x_1788;
    if ((tint_symbol_58_2.x > 0.0f)) {
      let x_1795 = tint_symbol_100();
      let x_1799 = tint_symbol_58_2.y;
      let x_1797 = tint_ftoi(x_1799);
      let x_1796 = tint_symbol_101(x_1797);
      tint_symbol_121 = x_1796;
      let x_1804 = tint_symbol_58_2.y;
      let x_1802 = tint_ftoi(x_1804);
      let x_1801 = tint_symbol_103(x_1802);
      tint_symbol_122 = x_1801;
      let x_1807 = tint_symbol_122;
      let x_1806 = tint_symbol_93(x_1807);
      tint_symbol_122 = x_1806;
      let x_1810 = tint_symbol_81.inner.tint_symbol_64;
      let x_1808 = tint_symbol_21(x_1810);
      let x_1813 = tint_symbol_84.inner.tint_symbol_77;
      let x_1811 = tint_symbol_60(x_1813.xyz, x_1808);
      let x_1817 = tint_symbol_81.inner.tint_symbol_64;
      let x_1815 = tint_symbol_21(x_1817);
      let x_1820 = tint_symbol_84.inner.tint_symbol_78;
      let x_1818 = tint_symbol_61(x_1820.xyz, x_1815);
      tint_symbol_123 = (tint_symbol_37_1 + (tint_symbol_119 * tint_symbol_58_2.x));
      let x_1830 = tint_symbol_123;
      let x_1829 = tint_symbol_94(x_1830);
      tint_symbol_123 = x_1829;
      let x_1832 = tint_symbol_123;
      let x_1833 = tint_symbol_122;
      let x_1831 = tint_symbol_106(x_1811, x_1818, x_1832, x_1833);
      tint_symbol_121 = (tint_symbol_121 * x_1831.tint_symbol_76);
      tint_symbol_102_1 = (x_1795 + tint_symbol_121);
    }
    let x_1841 = tint_symbol_102_1;
    textureStore(tint_symbol_83, x_1737, x_1841);
  }
  return;
}

fn tint_symbol_114_1() {
  let x_1846 = tint_symbol_115_1;
  tint_symbol_114_inner(x_1846);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_115_1_param : vec3u) {
  tint_symbol_115_1 = tint_symbol_115_1_param;
  tint_symbol_114_1();
}

const x_1867 = vec2f(0.5f);

fn tint_symbol_128(tint_symbol_123_1 : vec3f, tint_symbol_126 : i32) -> vec2f {
  var tint_symbol_127 = vec2f();
  var x_1872 = vec2f();
  switch(tint_symbol_126) {
    case 4i, 5i: {
      tint_symbol_127 = vec2f(tint_symbol_123_1.x, tint_symbol_123_1.y);
    }
    case 2i, 3i: {
      tint_symbol_127 = vec2f(tint_symbol_123_1.x, tint_symbol_123_1.z);
    }
    case 0i, 1i: {
      tint_symbol_127 = vec2f(tint_symbol_123_1.z, tint_symbol_123_1.y);
    }
    default: {
      tint_symbol_127 = x_1867;
    }
  }
  tint_symbol_127 = fract(((tint_symbol_127 * 0.5f) + vec2f(0.5f)));
  let x_1874 = tint_symbol_127;
  return x_1874;
}

fn tint_symbol_130(tint_symbol_127_1 : vec2f, tint_symbol_126_1 : i32) -> vec4f {
  var tint_return_flag_3 = false;
  var tint_return_value_3 = vec4f();
  if ((tint_symbol_126_1 == 2i)) {
    tint_return_flag_3 = true;
    tint_return_value_3 = ((vec4f(1.0f, 0.69999998807907104492f, 0.30000001192092895508f, 1.0f) * min(1.0f, (step(0.89999997615814208984f, fract((tint_symbol_127_1.x * 10.0f))) + step(0.89999997615814208984f, fract((tint_symbol_127_1.y * 10.0f)))))) * 1.5f);
  }
  if (!(tint_return_flag_3)) {
    tint_return_flag_3 = true;
    tint_return_value_3 = vec4f();
  }
  let x_1907 = tint_return_value_3;
  return x_1907;
}

const x_1986 = vec4f(1.0f);

fn tint_symbol_133(tint_symbol_127_2 : vec2f, tint_symbol_126_2 : i32) -> vec4f {
  var tint_return_flag_4 = false;
  var tint_return_value_4 = vec4f();
  var x_1961 = vec4f();
  var x_1980 = vec4f();
  var x_1917 : bool;
  var x_1918 : bool;
  var x_1922 : bool;
  var x_1923 : bool;
  var x_1927 : bool;
  var x_1928 : bool;
  let x_1914 = (tint_symbol_126_2 == 0i);
  x_1918 = x_1914;
  if (x_1914) {
  } else {
    x_1917 = (tint_symbol_126_2 == 1i);
    x_1918 = x_1917;
  }
  x_1923 = x_1918;
  if (x_1918) {
  } else {
    x_1922 = (tint_symbol_126_2 == 4i);
    x_1923 = x_1922;
  }
  x_1928 = x_1923;
  if (x_1923) {
  } else {
    x_1927 = (tint_symbol_126_2 == 5i);
    x_1928 = x_1927;
  }
  if (x_1928) {
    let x_1955 = (abs((((step(0.5f, fract((tint_symbol_127_2.x * 4.0f))) * step(0.5f, fract((tint_symbol_127_2.y * 4.0f)))) + ((1.0f - step(0.5f, fract((tint_symbol_127_2.x * 4.0f)))) * (1.0f - step(0.5f, fract((tint_symbol_127_2.y * 4.0f)))))) - 0.5f)) * 2.0f);
    tint_return_flag_4 = true;
    tint_return_value_4 = mix(vec4f(0.80000001192092895508f, 0.20000000298023223877f, 0.20000000298023223877f, 1.0f), vec4f(0.20000000298023223877f, 0.20000000298023223877f, 0.80000001192092895508f, 1.0f), vec4f(x_1955));
  }
  if (!(tint_return_flag_4)) {
    if ((tint_symbol_126_2 == 3i)) {
      let x_1971 = step(0.5f, fract((tint_symbol_127_2.x * 8.0f)));
      tint_return_flag_4 = true;
      tint_return_value_4 = mix(vec4f(0.10000000149011611938f, 0.80000001192092895508f, 0.10000000149011611938f, 1.0f), vec4f(0.80000001192092895508f, 0.80000001192092895508f, 0.10000000149011611938f, 1.0f), vec4f(x_1971));
    }
    if (!(tint_return_flag_4)) {
      tint_return_flag_4 = true;
      tint_return_value_4 = x_1986;
    }
  }
  let x_1987 = tint_return_value_4;
  return x_1987;
}

fn tint_symbol_135(tint_symbol_127_3 : vec2f, tint_symbol_126_3 : i32) -> vec4f {
  var tint_return_flag_5 = false;
  var tint_return_value_5 = vec4f();
  var x_1998 : bool;
  var x_1999 : bool;
  let x_1994 = distance(tint_symbol_127_3, x_1867);
  let x_1995 = (tint_symbol_126_3 == 0i);
  x_1999 = x_1995;
  if (x_1995) {
  } else {
    x_1998 = (tint_symbol_126_3 == 1i);
    x_1999 = x_1998;
  }
  if (x_1999) {
    let x_2003 = (1.0f - smoothstep(0.0f, 0.5f, x_1994));
    tint_return_flag_5 = true;
    tint_return_value_5 = vec4f(x_2003);
  }
  if (!(tint_return_flag_5)) {
    if ((tint_symbol_126_3 == 3i)) {
      let x_2012 = atan2((tint_symbol_127_3.y - 0.5f), (tint_symbol_127_3.x - 0.5f));
      tint_return_flag_5 = true;
      tint_return_value_5 = (vec4f((0.80000001192092895508f + (0.20000000298023223877f * sin((x_2012 * 5.0f)))), (0.80000001192092895508f + (0.20000000298023223877f * cos((x_2012 * 3.0f)))), 0.80000001192092895508f, 1.0f) * (0.5f + (0.5f * (1.0f - smoothstep(0.0f, 0.40000000596046447754f, x_1994)))));
    }
    if (!(tint_return_flag_5)) {
      tint_return_flag_5 = true;
      tint_return_value_5 = vec4f(0.20000000298023223877f, 0.20000000298023223877f, 0.20000000298023223877f, 1.0f);
    }
  }
  let x_2039 = tint_return_value_5;
  return x_2039;
}

fn tint_symbol_140(tint_symbol_127_4 : vec2f, tint_symbol_126_4 : i32) -> f32 {
  var tint_return_flag_6 = false;
  var tint_return_value_6 = 0.0f;
  var x_2050 : bool;
  var x_2051 : bool;
  let x_2047 = (tint_symbol_126_4 == 0i);
  x_2051 = x_2047;
  if (x_2047) {
  } else {
    x_2050 = (tint_symbol_126_4 == 1i);
    x_2051 = x_2050;
  }
  if (x_2051) {
    tint_return_flag_6 = true;
    tint_return_value_6 = (1.0f - smoothstep(0.0f, 0.5f, distance(tint_symbol_127_4, x_1867)));
  }
  if (!(tint_return_flag_6)) {
    if ((tint_symbol_126_4 == 3i)) {
      tint_return_flag_6 = true;
      tint_return_value_6 = (0.20000000298023223877f + (0.80000001192092895508f * step(0.5f, fract((tint_symbol_127_4.x * 8.0f)))));
    }
    if (!(tint_return_flag_6)) {
      tint_return_flag_6 = true;
      tint_return_value_6 = 0.5f;
    }
  }
  let x_2074 = tint_return_value_6;
  return x_2074;
}

fn tint_symbol_144(tint_symbol_127_5 : vec2f, tint_symbol_126_5 : i32) -> vec4f {
  let x_2082 = (1.0f - (smoothstep(0.0f, 0.69999998807907104492f, distance(tint_symbol_127_5, x_1867)) * 0.5f));
  return vec4f(x_2082);
}

const x_2210 = vec4f(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f, 1.0f);

fn tint_symbol_125_inner(tint_symbol_115_5 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_119_1 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var tint_symbol_102_2 = vec4f();
  var tint_symbol_123_2 = vec3f();
  var tint_symbol_121_1 = vec4f();
  var tint_symbol_122_1 = vec3f();
  var tint_symbol_136 = vec4f();
  var x_2099 : bool;
  var x_2100 : bool;
  let x_2087 = bitcast<vec2i>(tint_symbol_115_5.xy);
  let x_2089 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
  let x_2094 = (x_2087.x < x_2089.x);
  x_2100 = x_2094;
  if (x_2094) {
    x_2099 = (x_2087.y < x_2089.y);
    x_2100 = x_2099;
  }
  if (x_2100) {
    let x_2106 = (x_1755 / tint_symbol_81.inner.tint_symbol_66.xy);
    tint_symbol_37_2 = vec3f((((f32(x_2087.x) + 0.5f) * x_2106.x) - 1.0f), (((f32(x_2087.y) + 0.5f) * x_2106.y) - 1.0f), 0.0f);
    tint_symbol_119_1 = x_1776;
    let x_2123 = tint_symbol_37_2;
    let x_2122 = tint_symbol_91(x_2123);
    tint_symbol_37_2 = x_2122;
    let x_2125 = tint_symbol_119_1;
    let x_2124 = tint_symbol_89(x_2125);
    tint_symbol_119_1 = x_2124;
    let x_2127 = tint_symbol_37_2;
    let x_2128 = tint_symbol_119_1;
    let x_2126 = tint_symbol_95(x_2127, x_2128);
    tint_symbol_58_3 = x_2126;
    tint_symbol_102_2 = x_1788;
    if ((tint_symbol_58_3.x > 0.0f)) {
      tint_symbol_123_2 = (tint_symbol_37_2 + (tint_symbol_119_1 * tint_symbol_58_3.x));
      let x_2145 = tint_symbol_58_3.y;
      let x_2143 = tint_ftoi(x_2145);
      let x_2147 = tint_symbol_123_2;
      let x_2146 = tint_symbol_128(x_2147, x_2143);
      let x_2148 = tint_symbol_100();
      let x_2149 = tint_symbol_130(x_2146, x_2143);
      let x_2151 = tint_symbol_101(x_2143);
      tint_symbol_121_1 = x_2151;
      let x_2153 = tint_symbol_133(x_2146, x_2143);
      tint_symbol_121_1 = (tint_symbol_121_1 * x_2153);
      let x_2156 = tint_symbol_103(x_2143);
      tint_symbol_122_1 = x_2156;
      let x_2159 = tint_symbol_122_1;
      let x_2158 = tint_symbol_93(x_2159);
      tint_symbol_122_1 = x_2158;
      let x_2162 = tint_symbol_81.inner.tint_symbol_64;
      let x_2160 = tint_symbol_21(x_2162);
      let x_2165 = tint_symbol_84.inner.tint_symbol_77;
      let x_2163 = tint_symbol_60(x_2165.xyz, x_2160);
      let x_2169 = tint_symbol_81.inner.tint_symbol_64;
      let x_2167 = tint_symbol_21(x_2169);
      let x_2172 = tint_symbol_84.inner.tint_symbol_78;
      let x_2170 = tint_symbol_61(x_2172.xyz, x_2167);
      let x_2175 = tint_symbol_123_2;
      let x_2174 = tint_symbol_94(x_2175);
      tint_symbol_123_2 = x_2174;
      let x_2177 = tint_symbol_123_2;
      let x_2178 = tint_symbol_122_1;
      let x_2176 = tint_symbol_106(x_2163, x_2170, x_2177, x_2178);
      tint_symbol_121_1 = (tint_symbol_121_1 * (x_2176.tint_symbol_76 * max(0.0f, dot(tint_symbol_122_1, -(x_2176.tint_symbol_105)))));
      let x_2188 = tint_symbol_135(x_2146, x_2143);
      tint_symbol_136 = (x_1986 * x_2188);
      let x_2193 = tint_symbol_119_1;
      let x_2195 = -(x_2176.tint_symbol_105);
      let x_2197 = tint_symbol_122_1;
      let x_2198 = tint_symbol_140(x_2146, x_2143);
      tint_symbol_136 = (tint_symbol_136 * (x_2176.tint_symbol_76 * pow(max(0.0f, dot(normalize(-(x_2193)), reflect(x_2195, x_2197))), (10.0f + (x_2198 * 90.0f)))));
      let x_2209 = tint_symbol_144(x_2146, x_2143);
      tint_symbol_102_2 = ((((x_2148 * x_2149) + tint_symbol_121_1) + tint_symbol_136) + ((x_2210 * x_2209) * x_2176.tint_symbol_76));
    }
    let x_2221 = tint_symbol_102_2;
    textureStore(tint_symbol_83, x_2087, x_2221);
  }
  return;
}

fn tint_symbol_125_1() {
  let x_2225 = tint_symbol_115_2;
  tint_symbol_125_inner(x_2225);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMainPhong(@builtin(global_invocation_id) tint_symbol_115_2_param : vec3u) {
  tint_symbol_115_2 = tint_symbol_115_2_param;
  tint_symbol_125_1();
}

fn tint_symbol_160(tint_symbol_165 : f32) -> f32 {
  var tint_return_flag_7 = false;
  var tint_return_value_7 = 0.0f;
  if ((tint_symbol_165 < 0.10000000149011611938f)) {
    tint_return_flag_7 = true;
    tint_return_value_7 = 0.0f;
  } else {
    if ((tint_symbol_165 < 0.34999999403953552246f)) {
      tint_return_flag_7 = true;
      tint_return_value_7 = 0.20000000298023223877f;
    } else {
      if ((tint_symbol_165 < 0.64999997615814208984f)) {
        tint_return_flag_7 = true;
        tint_return_value_7 = 0.5f;
      } else {
        if ((tint_symbol_165 < 0.89999997615814208984f)) {
          tint_return_flag_7 = true;
          tint_return_value_7 = 0.80000001192092895508f;
        } else {
          tint_return_flag_7 = true;
          tint_return_value_7 = 1.0f;
        }
      }
    }
  }
  let x_2250 = tint_return_value_7;
  return x_2250;
}

fn tint_symbol_164(tint_symbol_122_2 : vec3f, tint_symbol_137 : vec3f) -> bool {
  return (dot(tint_symbol_122_2, tint_symbol_137) < 0.20000000298023223877f);
}

fn tint_symbol_157_inner(tint_symbol_115_6 : vec3u) {
  var tint_symbol_37_3 = vec3f();
  var tint_symbol_119_2 = vec3f();
  var tint_symbol_58_4 = vec2f();
  var tint_symbol_102_3 = vec4f();
  var tint_symbol_123_3 = vec3f();
  var tint_symbol_121_2 = vec4f();
  var tint_symbol_122_3 = vec3f();
  var tint_symbol_136_1 = vec4f();
  var x_2273 : bool;
  var x_2274 : bool;
  let x_2261 = bitcast<vec2i>(tint_symbol_115_6.xy);
  let x_2263 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_83)));
  let x_2268 = (x_2261.x < x_2263.x);
  x_2274 = x_2268;
  if (x_2268) {
    x_2273 = (x_2261.y < x_2263.y);
    x_2274 = x_2273;
  }
  if (x_2274) {
    let x_2280 = (x_1755 / tint_symbol_81.inner.tint_symbol_66.xy);
    tint_symbol_37_3 = vec3f((((f32(x_2261.x) + 0.5f) * x_2280.x) - 1.0f), (((f32(x_2261.y) + 0.5f) * x_2280.y) - 1.0f), 0.0f);
    tint_symbol_119_2 = x_1776;
    let x_2297 = tint_symbol_37_3;
    let x_2296 = tint_symbol_91(x_2297);
    tint_symbol_37_3 = x_2296;
    let x_2299 = tint_symbol_119_2;
    let x_2298 = tint_symbol_89(x_2299);
    tint_symbol_119_2 = x_2298;
    let x_2301 = tint_symbol_37_3;
    let x_2302 = tint_symbol_119_2;
    let x_2300 = tint_symbol_95(x_2301, x_2302);
    tint_symbol_58_4 = x_2300;
    tint_symbol_102_3 = x_1788;
    if ((tint_symbol_58_4.x > 0.0f)) {
      tint_symbol_123_3 = (tint_symbol_37_3 + (tint_symbol_119_2 * tint_symbol_58_4.x));
      let x_2319 = tint_symbol_58_4.y;
      let x_2317 = tint_ftoi(x_2319);
      let x_2321 = tint_symbol_123_3;
      let x_2320 = tint_symbol_128(x_2321, x_2317);
      let x_2322 = tint_symbol_100();
      let x_2323 = tint_symbol_130(x_2320, x_2317);
      let x_2325 = tint_symbol_101(x_2317);
      tint_symbol_121_2 = x_2325;
      let x_2327 = tint_symbol_133(x_2320, x_2317);
      tint_symbol_121_2 = (tint_symbol_121_2 * x_2327);
      let x_2330 = tint_symbol_103(x_2317);
      tint_symbol_122_3 = x_2330;
      let x_2333 = tint_symbol_122_3;
      let x_2332 = tint_symbol_93(x_2333);
      tint_symbol_122_3 = x_2332;
      let x_2336 = tint_symbol_81.inner.tint_symbol_64;
      let x_2334 = tint_symbol_21(x_2336);
      let x_2339 = tint_symbol_84.inner.tint_symbol_77;
      let x_2337 = tint_symbol_60(x_2339.xyz, x_2334);
      let x_2343 = tint_symbol_81.inner.tint_symbol_64;
      let x_2341 = tint_symbol_21(x_2343);
      let x_2346 = tint_symbol_84.inner.tint_symbol_78;
      let x_2344 = tint_symbol_61(x_2346.xyz, x_2341);
      let x_2349 = tint_symbol_123_3;
      let x_2348 = tint_symbol_94(x_2349);
      tint_symbol_123_3 = x_2348;
      let x_2351 = tint_symbol_123_3;
      let x_2352 = tint_symbol_122_3;
      let x_2350 = tint_symbol_106(x_2337, x_2344, x_2351, x_2352);
      let x_2355 = tint_symbol_122_3;
      let x_2358 = tint_symbol_160(max(0.0f, dot(x_2355, -(x_2350.tint_symbol_105))));
      tint_symbol_121_2 = (tint_symbol_121_2 * (x_2350.tint_symbol_76 * x_2358));
      let x_2363 = tint_symbol_135(x_2320, x_2317);
      tint_symbol_136_1 = (x_1986 * x_2363);
      let x_2366 = normalize(-(tint_symbol_119_2));
      let x_2370 = -(x_2350.tint_symbol_105);
      let x_2372 = tint_symbol_122_3;
      let x_2373 = tint_symbol_140(x_2320, x_2317);
      let x_2379 = tint_symbol_160(pow(max(0.0f, dot(x_2366, reflect(x_2370, x_2372))), (10.0f + (x_2373 * 90.0f))));
      tint_symbol_136_1 = (tint_symbol_136_1 * (x_2350.tint_symbol_76 * x_2379));
      let x_2384 = tint_symbol_144(x_2320, x_2317);
      let x_2388 = tint_symbol_160(length(x_2384.xyz));
      tint_symbol_102_3 = ((((x_2322 * x_2323) + tint_symbol_121_2) + tint_symbol_136_1) + (((x_2210 * x_2384) * x_2350.tint_symbol_76) * x_2388));
      let x_2398 = tint_symbol_122_3;
      let x_2397 = tint_symbol_164(x_2398, x_2366);
      if (x_2397) {
        tint_symbol_102_3 = x_1629;
      }
    }
    let x_2403 = tint_symbol_102_3;
    textureStore(tint_symbol_83, x_2261, x_2403);
  }
  return;
}

fn tint_symbol_157_1() {
  let x_2407 = tint_symbol_115_3;
  tint_symbol_157_inner(x_2407);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMainToon(@builtin(global_invocation_id) tint_symbol_115_3_param : vec3u) {
  tint_symbol_115_3 = tint_symbol_115_3_param;
  tint_symbol_157_1();
}

fn tint_symbol_167_inner(tint_symbol_115_7 : vec3u) {
  return;
}

fn tint_symbol_167_1() {
  let x_2414 = tint_symbol_115_4;
  tint_symbol_167_inner(x_2414);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_115_4_param : vec3u) {
  tint_symbol_115_4 = tint_symbol_115_4_param;
  tint_symbol_167_1();
}
