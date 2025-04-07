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

import SceneObject from "/lib/DSViz/SceneObject.js"
import TriangleMesh from "/lib/DS/TriangleMesh.js"

export default class CameraTriangleMeshLinearInterpolationObject extends SceneObject {
  constructor(device, canvasFormat, srcfile, tgtfile, camera) {
    super(device, canvasFormat);
    this._meshFiles = [srcfile, tgtfile, '/assets/TOSCA/cat10.ply']; 
    this._meshes = [];
    this._camera = camera;
    this._t = new Float32Array([0., 0., 0., 0.]); 
    this._delta = 0.01;
    this._currentKeyframe = 0;
    this._nextKeyframe = 1;
    this._transitionTime = 0;
  }
  
  async createGeometry() {
    for (let i = 0; i < this._meshFiles.length; i++) {
      const mesh = new TriangleMesh(this._meshFiles[i]);
      await mesh.init();
      this._meshes.push(mesh);
    }
    
    this._numV = this._meshes[0]._numV;
    this._numT = this._meshes[0]._numT;
    this._vProp = this._meshes[0]._vProp;
    this._vertices = new Array(this._numV);
    
    for (let i = 0; i < this._numV; ++i) {
      this._vertices[i] = [];
      for (let j = 0; j < this._meshes.length; j++) {
        this._vertices[i] = [...this._vertices[i], ...this._meshes[j]._vertices[i]];
      }
    }
    
    this._vertices = this._vertices.flat();
    this._triangles = this._meshes[0]._triangles.flat();
    
    this._vertexBuffer = this._device.createBuffer({
      label: "Vertices Normals and More",
      size: this._vertices.length * Float32Array.BYTES_PER_ELEMENT,
      usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
      mappedAtCreation: true
    });
    
    new Float32Array(this._vertexBuffer.getMappedRange()).set(this._vertices);
    this._vertexBuffer.unmap();
    
    const attributes = [];
    for (let i = 0; i < this._meshes.length; i++) {
      attributes.push({
        format: "float32x3", 
        offset: i * 6 * Float32Array.BYTES_PER_ELEMENT,
        shaderLocation: i * 2, 
      });
      attributes.push({
        format: "float32x3", 
        offset: (i * 6 + 3) * Float32Array.BYTES_PER_ELEMENT,
        shaderLocation: i * 2 + 1, 
      });
    }
    
    this._vertexBufferLayout = {
      arrayStride: this._vProp.length * Float32Array.BYTES_PER_ELEMENT * this._meshes.length, 
      attributes: attributes,
    };
    
    this._indexBuffer = this._device.createBuffer({
      label: "Indices",
      size: this._triangles.length * Uint32Array.BYTES_PER_ELEMENT,
      usage: GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST,
      mappedAtCreation: true
    }); 
    
    new Uint32Array(this._indexBuffer.getMappedRange()).set(this._triangles);
    this._indexBuffer.unmap();
    
    this._cameraBuffer = this._device.createBuffer({
      label: "Camera " + this.getName(),
      size: this._camera._pose.byteLength + this._camera._focal.byteLength + this._camera._resolutions.byteLength + this._t.byteLength,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    }); 
    
    this._device.queue.writeBuffer(this._cameraBuffer, 0, this._camera._pose);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength, this._camera._focal);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength + this._camera._focal.byteLength, this._camera._resolutions);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength + this._camera._focal.byteLength + this._camera._resolutions.byteLength, this._t);
  }
  
  updateCameraPose() {
    this._device.queue.writeBuffer(this._cameraBuffer, 0, this._camera._pose);
  }
  
  updateCameraFocal() {
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength, this._camera._focal);
  }
  
  updateGeometry() {
    this._transitionTime += this._delta;
    
    if (this._transitionTime >= 1.0) {
      this._transitionTime = 0;
      this._currentKeyframe = this._nextKeyframe;
      this._nextKeyframe = (this._nextKeyframe + 1) % this._meshes.length;
    }
    
    this._t[0] = this._transitionTime;
    
    this._t[1] = this._currentKeyframe;
    this._t[2] = this._nextKeyframe;
    
    this._device.queue.writeBuffer(
      this._cameraBuffer, 
      this._camera._pose.byteLength + this._camera._focal.byteLength + this._camera._resolutions.byteLength, 
      this._t
    );
  }
  
  async createShaders() {
    let shaderCode = await this.loadShader("/shaders/camerameshlinearinterpolation.wgsl");
    this._meshShaderModule = this._device.createShaderModule({
      label: "Mesh Shader",
      code: shaderCode,
    }); 
  }
  
  async createRenderPipeline() {
    this._meshRenderPipeline = this._device.createRenderPipeline({
      label: "Mesh Render Pipeline",
      layout: "auto",
      vertex: {
        module: this._meshShaderModule,     // the shader code
        entryPoint: "vertexMain",          // the shader function
        buffers: [this._vertexBufferLayout] // the binded buffer layout
      },
      fragment: {
        module: this._meshShaderModule,     // the shader code
        entryPoint: "fragmentMain",        // the shader function
        targets: [{
          format: this._canvasFormat        // the target canvas format
        }]
      },
      depthStencil: {
        format: "depth24plus",
        depthWriteEnabled: true, // enable z-buffer - depth test
        depthCompare: "less" // Closer pixels overwrite farther ones
      },
      primitive: {
        topology: "triangle-list",
        cullMode: "none" // Cull back faces for better performance
      }
    }); 
    
    this._bindGroup = this._device.createBindGroup({
      label: "Interpolation Bind Group ",
      layout: this._meshRenderPipeline.getBindGroupLayout(0),
      entries: [
        {
          binding: 0,
          resource: { buffer: this._cameraBuffer }
        }
      ]
    });
  }
  
  render(pass) {
    pass.setPipeline(this._meshRenderPipeline);
    pass.setBindGroup(0, this._bindGroup);                // bind the buffer
    pass.setVertexBuffer(0, this._vertexBuffer);          // bind the vertex buffer
    pass.setIndexBuffer(this._indexBuffer, 'uint32');     // bind the index buffer
    pass.drawIndexed(this._triangles.length, 1, 0, 0, 0); // draw using triangle lists
  }
  
  async createComputePipeline() {}
    
  compute(pass) {}
}
