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
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_17_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

var<private> tint_symbol_19_1 : vec2f;

var<private> tint_symbol_20_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_87 = tint_symbol_11(tint_symbol_14);
  let x_88 = tint_symbol_8(tint_symbol_13, x_87);
  let x_89 = tint_symbol_8(tint_symbol_14, x_88);
  return x_89;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_95 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_95.tint_symbol_3 / x_95.tint_symbol_2), (x_95.tint_symbol_4 / x_95.tint_symbol_2));
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_18_inner(tint_symbol_19 : vec2f, tint_symbol_20 : u32) -> vec4f {
  var x_141 = vec2f();
  var x_148 = vec2f();
  var x_153 = vec2f();
  var x_159 = vec2f();
  let x_133 = tint_mod(tint_symbol_20, 10u);
  let x_135 = tint_div(tint_symbol_20, 10u);
  let x_146 = (1.0f * 2.0f);
  let x_150 = -(1.0f);
  let x_157 = ((x_146 / 10.0f) * 0.5f);
  let x_166 = tint_symbol_17.inner.tint_symbol_6;
  let x_162 = tint_symbol_11(x_166);
  let x_167 = tint_symbol_15(((tint_symbol_19 / vec2f(10.0f)) + ((vec2f(x_150) + ((vec2f(f32(x_133), f32(x_135)) / vec2f(10.0f)) * x_146)) + vec2f(x_157))), x_162);
  let x_171 = (x_167 * tint_symbol_17.inner.tint_symbol_7);
  return vec4f(x_171.x, x_171.y, 0.0f, 1.0f);
}

fn tint_symbol_18_1() {
  let x_180 = tint_symbol_19_1;
  let x_181 = tint_symbol_20_1;
  let x_179 = tint_symbol_18_inner(x_180, x_181);
  value = x_179;
  return;
}

struct tint_symbol_18_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_19_1_param : vec2f, @builtin(instance_index) tint_symbol_20_1_param : u32) -> tint_symbol_18_out {
  tint_symbol_19_1 = tint_symbol_19_1_param;
  tint_symbol_20_1 = tint_symbol_20_1_param;
  tint_symbol_18_1();
  return tint_symbol_18_out(value);
}

fn tint_symbol_30_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_30_1() {
  let x_191 = tint_symbol_30_inner();
  value_1 = x_191;
  return;
}

struct tint_symbol_30_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_30_out {
  tint_symbol_30_1();
  return tint_symbol_30_out(value_1);
}
