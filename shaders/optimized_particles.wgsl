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
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : f32,
  /* @offset(28) */
  tint_symbol_5 : f32,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_6_block {
  /* @offset(0) */
  inner : RTArr,
}

var<private> tint_symbol_14_1 : u32;

var<private> tint_symbol_15_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_25_1 : vec3u;

@group(0) @binding(0) var<storage, read_write> tint_symbol_6 : tint_symbol_6_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_7 : tint_symbol_6_block;

fn tint_symbol_8(tint_symbol_9 : f32, tint_symbol_10 : f32, tint_symbol_11 : f32) -> vec2f {
  let x_34 = (sin((tint_symbol_9 * tint_symbol_10)) * 3.14159274101257324219f);
  return (vec2f(cos(x_34), sin(x_34)) * tint_symbol_11);
}

fn tint_symbol_13_inner(tint_symbol_14 : u32, tint_symbol_15 : u32) -> vec4f {
  let x_47 = tint_symbol_6.inner[tint_symbol_14];
  let x_52 = (0.01250000018626451492f * (x_47.tint_symbol_4 / 255.0f));
  let x_58 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_15));
  let x_65 = (x_47.tint_symbol_1 + vec2f((cos(x_58) * x_52), (sin(x_58) * x_52)));
  return vec4f(x_65.x, x_65.y, 0.0f, 1.0f);
}

fn tint_symbol_13_1() {
  let x_75 = tint_symbol_14_1;
  let x_76 = tint_symbol_15_1;
  let x_74 = tint_symbol_13_inner(x_75, x_76);
  value = x_74;
  return;
}

struct tint_symbol_13_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_14_1_param : u32, @builtin(vertex_index) tint_symbol_15_1_param : u32) -> tint_symbol_13_out {
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_15_1 = tint_symbol_15_1_param;
  tint_symbol_13_1();
  return tint_symbol_13_out(value);
}

fn tint_symbol_23_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_23_1() {
  let x_86 = tint_symbol_23_inner();
  value_1 = x_86;
  return;
}

struct tint_symbol_23_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_23_out {
  tint_symbol_23_1();
  return tint_symbol_23_out(value_1);
}

fn tint_symbol_24_inner(tint_symbol_25 : vec3u) {
  var tint_symbol_16 = tint_symbol(vec2f(), vec2f(), vec2f(), 0.0f, 0.0f);
  var x_91 : u32;
  var x_152 : bool;
  var x_153 : bool;
  var x_158 : bool;
  var x_159 : bool;
  var x_164 : bool;
  var x_165 : bool;
  x_91 = tint_symbol_25.x;
  if ((x_91 < arrayLength(&(tint_symbol_6.inner)))) {
    tint_symbol_16 = tint_symbol_6.inner[x_91];
    tint_symbol_16.tint_symbol_1 = (tint_symbol_16.tint_symbol_1 + tint_symbol_16.tint_symbol_3);
    tint_symbol_16.tint_symbol_4 = (tint_symbol_16.tint_symbol_4 - 1.0f);
    tint_symbol_16.tint_symbol_3 = (tint_symbol_16.tint_symbol_3 + vec2f(0.0f, -0.00004999999873689376f));
    let x_125 = tint_symbol_16.tint_symbol_1.y;
    let x_122 = tint_symbol_8(x_125, 1.5f, 0.00004999999873689376f);
    tint_symbol_16.tint_symbol_3 = (tint_symbol_16.tint_symbol_3 + x_122);
    if ((tint_symbol_16.tint_symbol_4 <= 0.0f)) {
      tint_symbol_16.tint_symbol_1 = tint_symbol_16.tint_symbol_2;
      tint_symbol_16.tint_symbol_4 = tint_symbol_16.tint_symbol_5;
    }
    let x_147 = (tint_symbol_16.tint_symbol_1.x < -1.0f);
    x_153 = x_147;
    if (x_147) {
    } else {
      x_152 = (tint_symbol_16.tint_symbol_1.x > 1.0f);
      x_153 = x_152;
    }
    x_159 = x_153;
    if (x_153) {
    } else {
      x_158 = (tint_symbol_16.tint_symbol_1.y < -1.0f);
      x_159 = x_158;
    }
    x_165 = x_159;
    if (x_159) {
    } else {
      x_164 = (tint_symbol_16.tint_symbol_1.y > 1.0f);
      x_165 = x_164;
    }
    if (x_165) {
      tint_symbol_16.tint_symbol_1 = tint_symbol_16.tint_symbol_2;
      tint_symbol_16.tint_symbol_4 = tint_symbol_16.tint_symbol_5;
    }
    tint_symbol_7.inner[x_91] = tint_symbol_16;
  }
  return;
}

fn tint_symbol_24_1() {
  let x_179 = tint_symbol_25_1;
  tint_symbol_24_inner(x_179);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_25_1_param : vec3u) {
  tint_symbol_25_1 = tint_symbol_25_1_param;
  tint_symbol_24_1();
}
