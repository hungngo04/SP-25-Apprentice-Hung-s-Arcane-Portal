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

import RayTracer from '/lib/Viz/RayTracer.js'
import StandardTextObject from '/lib/DSViz/StandardTextObject.js'
import VolumeRenderingSimpleObject from '/lib/DSViz/VolumeRenderingSimpleObject.js'
import Camera from '/lib/Viz/3DCamera.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a ray tracer
  const tracer = new RayTracer(canvasTag);
  await tracer.init();
  // Create a 3D Camera
  var camera = new Camera();
  // Create an object to trace
  var tracerObj = new VolumeRenderingSimpleObject(tracer._device, tracer._canvasFormat, camera);
  await tracer.setTracerObject(tracerObj);

  // ====== UI container ======
  const controlsDiv = document.createElement("div");
  controlsDiv.style.position = "absolute";
  controlsDiv.style.top = "10px";
  controlsDiv.style.left = "10px";
  controlsDiv.style.padding = "8px";
  controlsDiv.style.border = "1px solid black";
  controlsDiv.style.background = "white";
  controlsDiv.style.fontFamily = "sans-serif";
  controlsDiv.innerHTML = `
      <h3>Camera Controls</h3>
      <!-- Translation buttons -->
      <button id="btnForward">Forward (Z-)</button>
      <button id="btnBackward">Backward (Z+)</button><br/><br/>
      <button id="btnLeft">Left (X-)</button>
      <button id="btnRight">Right (X+)</button><br/><br/>
      <button id="btnUp">Up (Y+)</button>
      <button id="btnDown">Down (Y-)</button>
      <hr/>
      <!-- Rotation buttons -->
      <button id="btnRotXPos">Rotate +X</button>
      <button id="btnRotXNeg">Rotate -X</button><br/><br/>
      <button id="btnRotYPos">Rotate +Y</button>
      <button id="btnRotYNeg">Rotate -Y</button><br/><br/>
      <button id="btnRotZPos">Rotate +Z</button>
      <button id="btnRotZNeg">Rotate -Z</button>
      <hr/>
      <!-- Trace Type Selection -->
      <h3>Trace Type</h3>
      <button id="btnMIP">MIP</button>
      <button id="btnDRR">DRR</button><br/><br/>
      <button id="btnDepth">Depth Encoding</button>
      <button id="btnEdge">Spectral Edge</button>
    `;
  document.body.appendChild(controlsDiv);

  // ====== Movement parameters ======
  const moveStep = 0.05;
  const rotateStep = 0.1;

  // ====== Event listener for button ======
  document.getElementById("btnForward").addEventListener("click", () => {
    camera.moveZ(-moveStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnBackward").addEventListener("click", () => {
    camera.moveZ(moveStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnLeft").addEventListener("click", () => {
    camera.moveX(-moveStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRight").addEventListener("click", () => {
    camera.moveX(moveStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnUp").addEventListener("click", () => {
    camera.moveY(moveStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnDown").addEventListener("click", () => {
    camera.moveY(-moveStep);
    tracerObj.updateCameraPose();
  });

  document.getElementById("btnRotXPos").addEventListener("click", () => {
    camera.rotateX(rotateStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRotXNeg").addEventListener("click", () => {
    camera.rotateX(-rotateStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRotYPos").addEventListener("click", () => {
    camera.rotateY(rotateStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRotYNeg").addEventListener("click", () => {
    camera.rotateY(-rotateStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRotZPos").addEventListener("click", () => {
    camera.rotateZ(rotateStep);
    tracerObj.updateCameraPose();
  });
  document.getElementById("btnRotZNeg").addEventListener("click", () => {
    camera.rotateZ(-rotateStep);
    tracerObj.updateCameraPose();
  });

  // ====== Trace Type Buttons ======
  document.getElementById("btnMIP").addEventListener("click", () => {
    tracerObj.setTraceType(0); // MIP
  });
  document.getElementById("btnDRR").addEventListener("click", () => {
    tracerObj.setTraceType(1); // DRR
  });
  document.getElementById("btnDepth").addEventListener("click", () => {
    tracerObj.setTraceType(2); // Depth Encoding
  });
  document.getElementById("btnEdge").addEventListener("click", () => {
    tracerObj.setTraceType(3); // Spectral Edge Detection
  });

  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps);

  // run animation at 60 fps
  var frameCnt = 0;
  var tgtFPS = 60;
  var secPerFrame = 1. / tgtFPS;
  var frameInterval = secPerFrame * 1000;
  var lastCalled;
  let renderFrame = () => {
    let elapsed = Date.now() - lastCalled;
    if (elapsed > frameInterval) {
      ++frameCnt;
      lastCalled = Date.now() - (elapsed % frameInterval);
      tracer.render();
    }
    requestAnimationFrame(renderFrame);
  };
  lastCalled = Date.now();
  renderFrame();
  setInterval(() => {
    fpsText.updateText('fps: ' + frameCnt);
    frameCnt = 0;
  }, 1000); // call every 1000 ms
  return tracer;
}

init().then(ret => {
  console.log(ret);
}).catch(error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
