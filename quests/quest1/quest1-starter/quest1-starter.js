/*!
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

// Check your browser supports: https://github.com/gpuweb/gpuweb/wiki/Implementation-Status#implementation-status
// Need to enable experimental flags chrome://flags/
// Chrome & Edge 113+ : Enable Vulkan, Default ANGLE Vulkan, Vulkan from ANGLE, Unsafe WebGPU Support, and WebGPU Developer Features (if exsits)
// Firefox Nightly: sudo snap install firefox --channel=latext/edge or download from https://www.mozilla.org/en-US/firefox/channel/desktop/

import Renderer from '/lib/Viz/2DRenderer.js'
import Standard2DVertexObject from '/lib/DSViz/Standard2DVertexObject.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d renderer
  const renderer = new Renderer(canvasTag);
  await renderer.init();

  // House body
  const houseBodyVertices = new Float32Array([
    // Left triangle
    -0.2,  0.0,
    -0.2, -0.2,
     0.2, -0.2,

    // Right triangle
    -0.2,  0.0,
     0.2, -0.2,
     0.2,  0.0,
  ]);
  const houseBodyObj = new Standard2DVertexObject(
    renderer._device,
    renderer._canvasFormat,
    houseBodyVertices
  );
  await houseBodyObj.init();

  // House roof
  const houseRoofVertices = new Float32Array([
    -0.25,  0.0,
     0.25,  0.0,
     0.00,  0.2,
  ]);
  const houseRoofObj = new Standard2DVertexObject(
    renderer._device,
    renderer._canvasFormat,
    houseRoofVertices
  );
  await houseRoofObj.init();

  // A tree
  const trunkVertices = new Float32Array([
    // Left triangle
    0.3,  -0.1,
    0.3,  -0.2,
    0.35, -0.2,
    
    // Right triangle
    0.3,  -0.1,
    0.35, -0.2,
    0.35, -0.1,
  ]);
  const trunkObj = new Standard2DVertexObject(
    renderer._device,
    renderer._canvasFormat,
    trunkVertices
  );
  await trunkObj.init();

  // Tree leaf
  const leavesVertices = drawCircle(0.325, -0.1, 0.07, 20);
  const leavesObj = new Standard2DVertexObject(
    renderer._device,
    renderer._canvasFormat,
    leavesVertices
  );
  await leavesObj.init();

  await renderer.appendSceneObject(new Standard2DVertexObject(renderer._device, renderer._canvasFormat, houseBodyVertices));
  await renderer.appendSceneObject(new Standard2DVertexObject(renderer._device, renderer._canvasFormat, houseRoofVertices));
  await renderer.appendSceneObject(new Standard2DVertexObject(renderer._device, renderer._canvasFormat, trunkVertices));
  await renderer.appendSceneObject(new Standard2DVertexObject(renderer._device, renderer._canvasFormat, leavesVertices));

  renderer.render();
  return renderer;
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});

// Fill the circle by drawing a list of triangle list of the form
// center, perimeter[i], perimeter[i+1]
function drawCircle(cx, cy, r, segments) {
  const arr = [];
  const angleStep = (2 * Math.PI) / segments;
  for (let i = 0; i < segments; i++) {
    const angle0 = i * angleStep;
    const angle1 = (i + 1) * angleStep;

    const x0 = cx + r * Math.cos(angle0);
    const y0 = cy + r * Math.sin(angle0);

    const x1 = cx + r * Math.cos(angle1);
    const y1 = cy + r * Math.sin(angle1);

    arr.push(
      cx,  cy,
      x0,  y0,
      x1,  y1
    );
  }
  return new Float32Array(arr);
}
