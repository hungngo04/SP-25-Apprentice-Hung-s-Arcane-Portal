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

alias RTArr = array<u32>;

struct tint_symbol_18_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_20 {
  /* @offset(0) */
  tint_symbol_21 : vec4f,
  /* @offset(16) */
  tint_symbol_22 : f32,
}

var<private> tint_symbol_21_1 : vec2f;

var<private> tint_symbol_24_1 : u32;

var<private> tint_symbol_21_2 = vec4f();

var<private> tint_symbol_22_1 = 0.0f;

var<private> tint_symbol_22_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_30_1 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

@group(0) @binding(1) var<storage> tint_symbol_18 : tint_symbol_18_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_19 : tint_symbol_18_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_98 = tint_symbol_11(tint_symbol_14);
  let x_99 = tint_symbol_8(tint_symbol_13, x_98);
  let x_100 = tint_symbol_8(tint_symbol_14, x_99);
  return x_100;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_106 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_106.tint_symbol_3 / x_106.tint_symbol_2), (x_106.tint_symbol_4 / x_106.tint_symbol_2));
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_23_inner(tint_symbol_21 : vec2f, tint_symbol_24 : u32) -> tint_symbol_20 {
  var x_153 = vec2f();
  var x_160 = vec2f();
  var x_165 = vec2f();
  var x_171 = vec2f();
  var tint_symbol_34 = tint_symbol_20(vec4f(), 0.0f);
  let x_145 = tint_mod(tint_symbol_24, 256u);
  let x_147 = tint_div(tint_symbol_24, 256u);
  let x_158 = (1.0f * 2.0f);
  let x_162 = -(1.0f);
  let x_169 = ((x_158 / 256.0f) * 0.5f);
  let x_178 = tint_symbol_17.inner.tint_symbol_6;
  let x_174 = tint_symbol_11(x_178);
  let x_179 = tint_symbol_15(((tint_symbol_21 / vec2f(256.0f)) + ((vec2f(x_162) + ((vec2f(f32(x_145), f32(x_147)) / vec2f(256.0f)) * x_158)) + vec2f(x_169))), x_174);
  let x_183 = (x_179 * tint_symbol_17.inner.tint_symbol_7);
  tint_symbol_34.tint_symbol_21 = vec4f(x_183.x, x_183.y, 0.0f, 1.0f);
  tint_symbol_34.tint_symbol_22 = f32(tint_symbol_18.inner[tint_symbol_24]);
  let x_198 = tint_symbol_34;
  return x_198;
}

fn tint_symbol_23_1() {
  let x_204 = tint_symbol_21_1;
  let x_205 = tint_symbol_24_1;
  let x_203 = tint_symbol_23_inner(x_204, x_205);
  tint_symbol_21_2 = x_203.tint_symbol_21;
  tint_symbol_22_1 = x_203.tint_symbol_22;
  return;
}

struct tint_symbol_23_out {
  @builtin(position)
  tint_symbol_21_2_1 : vec4f,
  @location(0)
  tint_symbol_22_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_21_1_param : vec2f, @builtin(instance_index) tint_symbol_24_1_param : u32) -> tint_symbol_23_out {
  tint_symbol_21_1 = tint_symbol_21_1_param;
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_23_1();
  return tint_symbol_23_out(tint_symbol_21_2, tint_symbol_22_1);
}

fn tint_symbol_35_inner(tint_symbol_22 : f32) -> vec4f {
  if ((tint_symbol_22 == 2.0f)) {
    return vec4f(0.0f, 1.0f, 0.0f, 1.0f);
  } else {
    if ((tint_symbol_22 == 1.0f)) {
      return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
    } else {
      return vec4f(0.0f, 0.0f, 0.0f, 1.0f);
    }
  }
}

fn tint_symbol_35_1() {
  let x_229 = tint_symbol_22_2;
  let x_228 = tint_symbol_35_inner(x_229);
  value = x_228;
  return;
}

struct tint_symbol_35_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_22_2_param : f32) -> tint_symbol_35_out {
  tint_symbol_22_2 = tint_symbol_22_2_param;
  tint_symbol_35_1();
  return tint_symbol_35_out(value);
}

fn tint_mod_1(lhs_2 : i32, rhs_2 : i32) -> i32 {
  let x_235 = select(rhs_2, 1i, ((rhs_2 == 0i) | ((lhs_2 == i32(-2147483648)) & (rhs_2 == -1i))));
  if (((bitcast<u32>((lhs_2 | x_235)) & 2147483648u) != 0u)) {
    return (lhs_2 - ((lhs_2 / x_235) * x_235));
  } else {
    return (lhs_2 % x_235);
  }
}

fn tint_symbol_37_inner(tint_symbol_30 : vec3u) {
  var tint_symbol_39 = 0u;
  var tint_symbol_40 = 0i;
  var tint_symbol_41 = 0i;
  var tint_symbol_47 = 0u;
  var x_265 : bool;
  var x_266 : bool;
  let x_261 = (tint_symbol_30.x >= 256u);
  x_266 = x_261;
  if (x_261) {
  } else {
    x_265 = (tint_symbol_30.y >= 256u);
    x_266 = x_265;
  }
  if (x_266) {
    return;
  }
  let x_272 = ((tint_symbol_30.y * 256u) + tint_symbol_30.x);
  tint_symbol_39 = 0u;
  tint_symbol_40 = -1i;
  loop {
    if (!((tint_symbol_40 <= 1i))) {
      break;
    }
    tint_symbol_41 = -1i;
    loop {
      var x_301 : bool;
      var x_302 : bool;
      if (!((tint_symbol_41 <= 1i))) {
        break;
      }
      let x_297 = (tint_symbol_41 == 0i);
      x_302 = x_297;
      if (x_297) {
        x_301 = (tint_symbol_40 == 0i);
        x_302 = x_301;
      }
      if (x_302) {
        continue;
      }
      let x_307 = tint_symbol_41;
      let x_311 = tint_symbol_40;
      let x_314 = tint_mod_1(((bitcast<i32>(tint_symbol_30.x) + x_307) + 256i), 256i);
      let x_318 = tint_mod_1(((bitcast<i32>(tint_symbol_30.y) + x_311) + 256i), 256i);
      tint_symbol_39 = (tint_symbol_39 + tint_symbol_18.inner[((bitcast<u32>(x_318) * 256u) + bitcast<u32>(x_314))]);

      continuing {
        tint_symbol_41 = (tint_symbol_41 + 1i);
      }
    }

    continuing {
      tint_symbol_40 = (tint_symbol_40 + 1i);
    }
  }
  var x_331 : u32;
  x_331 = tint_symbol_18.inner[x_272];
  tint_symbol_47 = x_331;
  if ((x_331 == 2u)) {
    tint_symbol_47 = 2u;
  } else {
    var x_348 : bool;
    var x_349 : bool;
    if ((x_331 == 1u)) {
      let x_343 = (tint_symbol_39 < 2u);
      x_349 = x_343;
      if (x_343) {
      } else {
        x_348 = (tint_symbol_39 > 3u);
        x_349 = x_348;
      }
      if (x_349) {
        tint_symbol_47 = 0u;
      } else {
        tint_symbol_47 = 1u;
      }
    } else {
      if ((tint_symbol_39 == 3u)) {
        tint_symbol_47 = 1u;
      } else {
        tint_symbol_47 = 0u;
      }
    }
  }
  tint_symbol_19.inner[x_272] = tint_symbol_47;
  return;
}

fn tint_symbol_37_1() {
  let x_363 = tint_symbol_30_1;
  tint_symbol_37_inner(x_363);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_30_1_param : vec3u) {
  tint_symbol_30_1 = tint_symbol_30_1_param;
  tint_symbol_37_1();
}
