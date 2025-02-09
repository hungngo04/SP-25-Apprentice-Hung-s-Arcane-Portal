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

// struct to store a multi vector
struct MultiVector {
  s: f32,
  e01: f32,
  eo0: f32,
  eo1: f32
};

// struct to store 2D Camera pose
struct Pose {
  motor: MultiVector,
  scale: vec2f
};

fn geometricProduct(a: MultiVector, b: MultiVector) -> MultiVector {
  // ref: https://geometricalgebratutorial.com/pga/
  // eoo = 0, e00 = 1 e11 = 1
  // s + e01 + eo0 + eo1
  // ss   = s   , se01   = e01  , seo0            = eo0  , seo1          = eo1
  // e01s = e01 , e01e01 = -s   , e01eo0 = e10e0o = -eo1 , e01eo1 = -e0o = eo0
  // eo0s = eo0 , eo0e01 = eo1  , eo0eo0          = 0    , eo0eo1        = 0
  // e01s = e01 , eo1e01 = -eo0 , eo1eo0          = 0    , eo1eo1        = 0
  return MultiVector(
    a.s * b.s   - a.e01 * b.e01 , // scalar
    a.s * b.e01 + a.e01 * b.s   , // e01
    a.s * b.eo0 + a.e01 * b.eo1 + a.eo0 * b.s   - a.eo1 * b.e01, // eo0
    a.s * b.eo1 - a.e01 * b.eo0 + a.eo0 * b.e01 + a.eo1 * b.s    // eo1
  );
}
fn reverse(a: MultiVector) -> MultiVector {
  return MultiVector( a.s, -a.e01, -a.eo0, -a.eo1 );
}

fn applyMotor(p: MultiVector, m: MultiVector) -> MultiVector {
  return geometricProduct(m, geometricProduct(p, reverse(m)));
}

fn applyMotorToPoint(p: vec2f, m: MultiVector) -> vec2f {
  // ref: https://geometricalgebratutorial.com/pga/
  // Three basic vectors e0, e1 and eo (origin)
  // Three basic bi-vectors e01, eo0, eo1
  // p = 0 1 + 1 e_01 - x e_o1 + y e_o0 
  // m = c 1 + s e_01 + dx / 2 e_o0 - dy / 2 e_o1 
  let new_p = applyMotor(MultiVector(0, 1, p[0], p[1]), m);
  return vec2f(new_p.eo0 / new_p.e01, new_p.eo1 / new_p.e01);
}

@group(0) @binding(0) var<uniform> camerapose: Pose;
@group(0) @binding(1) var<storage> cellStatusIn: array<u32>;
@group(0) @binding(2) var<storage, read_write> cellStatusOut: array<u32>;

struct VertexOutput {
  @builtin(position) pos: vec4f,
  @location(0) cellStatus: f32 // pass the cell status
};

@vertex // this compute the scene coordinate of each input vertex
fn vertexMain(@location(0) pos: vec2f, @builtin(instance_index) idx: u32) -> VertexOutput {
  let u = idx % 256; // we are expecting 10x10, so modulo 10 to get the x index
  let v = idx / 256; // divide by 10 to get the y index
  let uv = vec2f(f32(u), f32(v)) / 256; // normalize the coordinates to [0, 1]
  let halfLength = 1.f; // half cell length
  let cellLength = halfLength * 2.f; // full cell length
  let cell = pos / 256; // divide the input quad into 10x10 pieces
  let offset = - halfLength + uv * cellLength + cellLength / 256 * 0.5; // compute the offset for the instance
  // Apply motor
  let transformed = applyMotorToPoint(cell + offset, reverse(camerapose.motor));
  // Apply scale
  let scaled = transformed * camerapose.scale;
  var out: VertexOutput;
  out.pos = vec4f(scaled, 0, 1);
  out.cellStatus = f32(cellStatusIn[idx]);
  return out;
}

@fragment // this compute the color of each pixel
fn fragmentMain(@location(0) cellStatus: f32) -> @location(0) vec4f {
  if (cellStatus == 2.0) {
    return vec4f(0.0, 1.0, 0.0, 1.0);
  } else if (cellStatus == 1.0) {
    return vec4f(238.f/255.0, 118.f/255.0, 35.f/255.0, 1.0);
  } else {
    return vec4f(0.0, 0.0, 0.0, 1.0);
  }
}

const GRID_SIZE: u32 = 256u;

@compute
@workgroup_size(4, 4)
fn computeMain(@builtin(global_invocation_id) cell: vec3u) {
  if (cell.x >= GRID_SIZE || cell.y >= GRID_SIZE) {
    return;
  }
  let i: u32 = cell.y * GRID_SIZE + cell.x;
  var aliveCount: u32 = 0u;

  for (var dy: i32 = -1; dy <= 1; dy = dy + 1) {
    for (var dx: i32 = -1; dx <= 1; dx = dx + 1) {
      if (dx == 0 && dy == 0) {
        continue;
      }
      let nx: i32 = i32(cell.x) + dx;
      let ny: i32 = i32(cell.y) + dy;
      let wrappedX: u32 = u32((nx + i32(GRID_SIZE)) % i32(GRID_SIZE));
      let wrappedY: u32 = u32((ny + i32(GRID_SIZE)) % i32(GRID_SIZE));
      aliveCount = aliveCount + cellStatusIn[wrappedY * GRID_SIZE + wrappedX];
    }
  }

  // Get the current cell state: 1 = alive, 0 = dead.
  let currentState: u32 = cellStatusIn[i];
  var newState: u32 = currentState;

  if (currentState == 2u) {
    newState = 2u;
  } else if (currentState == 1u) {
    if (aliveCount < 2u || aliveCount > 3u) {
      newState = 0u;
    } else {
      newState = 1u;
    }
  } else {
    if (aliveCount == 3u) {
      newState = 1u;
    } else {
      newState = 0u;
    }
  }
  cellStatusOut[i] = newState;
}
