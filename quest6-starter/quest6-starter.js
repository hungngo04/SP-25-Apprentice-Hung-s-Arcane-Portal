import RayTracer from '/lib/Viz/RayTracer.js';
import StandardTextObject from '/lib/DSViz/StandardTextObject.js';
import RayTracingBoxObject from '/lib/DSViz/RayTracingBoxObject.js';
import Camera from '/lib/Viz/3DCamera.js';

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);

  // Create a ray tracer
  const tracer = new RayTracer(canvasTag);
  await tracer.init();

  // Create a 3D Camera
  const camera = new Camera();
  camera._isProjective = true;

  // Create an object to trace (box + camera)
  const tracerObj = new RayTracingBoxObject(tracer._device, tracer._canvasFormat, camera);
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

  // ====== Render loop ======
  let fps = '??';
  const fpsText = new StandardTextObject('fps: ' + fps);

  let frameCnt = 0;
  const tgtFPS = 60;
  const secPerFrame = 1.0 / tgtFPS;
  const frameInterval = secPerFrame * 1000;
  let lastCalled;
  
  const renderFrame = () => {
    const elapsed = Date.now() - lastCalled;
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
  }, 1000);

  return tracer;
}

init().then((ret) => {
  console.log(ret);
}).catch((error) => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
