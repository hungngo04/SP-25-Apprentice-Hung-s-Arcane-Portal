import FilteredRenderer from '/lib/Viz/2DFilteredRenderer.js'
import Standard2DFullScreenObject from '/lib/DSViz/Standard2DFullScreenObject.js'
import Standard2DPGAPosedVertexColorObject from '/lib/DSViz/Standard2DPGAPosedVertexColorObject.js'
import PGA2D from '/lib/Math/PGA2D.js'

function createFilledCircleVertices(radius, segments, r, g, b, a) {
  const vertices = [];
  const cx = 0, cy = 0; // Center of the circle

  for (let i = 0; i < segments; i++) {
    const theta1 = (i / segments) * 2 * Math.PI;
    const theta2 = ((i + 1) / segments) * 2 * Math.PI;
    
    vertices.push(cx, cy, r, g, b, a);    // Center vertex
    vertices.push(radius * Math.cos(theta1), radius * Math.sin(theta1), r, g, b, a);    // First vertex on the circumference
    vertices.push(radius * Math.cos(theta2), radius * Math.sin(theta2), r, g, b, a);    // Second vertex on the circumference
  }
  
  return new Float32Array(vertices);
}

async function init() {
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);

  const renderer = new FilteredRenderer(canvasTag);
  await renderer.init();

  await renderer.appendSceneObject(new Standard2DFullScreenObject(renderer._device, renderer._canvasFormat, "/assets/universe.jpg"));

  var vertices1 = createFilledCircleVertices(0.1, 50, 0, 0, 1, 1);
  var pose1 = new Float32Array([1, 0.2, 0.2, 0, 1, 1]);
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices1, pose1));

  // Create the sun (kept as before)
  var vertices2 = createFilledCircleVertices(0.3, 50, 1, 0, 0, 1);
  var pose2 = new Float32Array([1, 0, 0, 0, -0.5, -0.5]);
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices2, pose2));

  // Create the moon
  var vertices3 = createFilledCircleVertices(0.05, 50, 0.8, 0.8, 0.8, 1);
  var pose3 = new Float32Array([1, 0.3, 0.3, 0, pose1[4] + 0.3, pose1[5]]);
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices3, pose3));

  // Define the rotation angle to be applied each frame (2D rotation).
  let angle = Math.PI / 100;
  // Create a rotor for updating the planet and moon's motor parts.
  let dr_planet = PGA2D.normaliozeMotor([Math.cos(angle / 2), -Math.sin(angle / 2), 0, 0]);

  // Calculate the initial orbit offset for the moon relative to the planet’s center.
  let moonOrbitOffset = [pose3[4] - pose1[4], pose3[5] - pose1[5]];

  setInterval(() => { 
    renderer.render();

    // Update planet's rotation (motor part)
    let newPlanetMotor = PGA2D.normaliozeMotor(PGA2D.geometricProduct(dr_planet, [pose1[0], pose1[1], pose1[2], pose1[3]]));
    pose1[0] = newPlanetMotor[0];
    pose1[1] = newPlanetMotor[1];
    pose1[2] = newPlanetMotor[2];
    pose1[3] = newPlanetMotor[3];

    // Update moon's motor using the same rotation angle.
    let newMoonMotor = PGA2D.normaliozeMotor(PGA2D.geometricProduct(dr_planet, [pose3[0], pose3[1], pose3[2], pose3[3]]));
    pose3[0] = newMoonMotor[0];
    pose3[1] = newMoonMotor[1];
    pose3[2] = newMoonMotor[2];
    pose3[3] = newMoonMotor[3];

    let cosA = Math.cos(angle);
    let sinA = Math.sin(angle);
    let newOffsetX = moonOrbitOffset[0] * cosA - moonOrbitOffset[1] * sinA;
    let newOffsetY = moonOrbitOffset[0] * sinA + moonOrbitOffset[1] * cosA;
    moonOrbitOffset = [newOffsetX, newOffsetY];
    
    const planetCenter = [pose1[4], pose1[5]];
    pose3[4] = planetCenter[0] + moonOrbitOffset[0];
    pose3[5] = planetCenter[1] + moonOrbitOffset[1];
    
  }, 100);
  return renderer;
}

init().then(ret => {
  console.log(ret);
}).catch(error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
