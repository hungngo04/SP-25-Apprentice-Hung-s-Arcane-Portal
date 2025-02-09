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

export default class CameraLineStrip2DAliveDeadObject extends SceneObject {
  constructor(device, canvasFormat, cameraPose, vertices) {
    super(device, canvasFormat);
    // This assume each vertex has (x, y)
    this._cameraPose = cameraPose;
    if (typeof this._vertices === Float32Array) this._vertices = vertices; 
    else this._vertices = new Float32Array(vertices);
    this._paused = false;
    this._simSpeed = 1;
    this._computeAccumulator = 0;
  }

  increaseSimSpeed() {
    this._simSpeed *= 2;
    console.log("Simulation speed increased to", this._simSpeed);
  }
  
  decreaseSimSpeed() {
    this._simSpeed /= 2;
    console.log("Simulation speed decreased to", this._simSpeed);
  }  

  setPaused(paused) {
    this._paused = paused;
  }

  resetSimulation() {
    const GRID_SIZE = 256;
    this._cellStatus = new Uint32Array(GRID_SIZE * GRID_SIZE);
    for (let i = 0; i < this._cellStatus.length; i++) {
      if (Math.random() < 0.02) { // randomly assign a never-dead cell
        this._cellStatus[i] = 2;
      } else {
        this._cellStatus[i] = Math.random() < 0.5 ? 1 : 0;
      }
    }

    this._device.queue.writeBuffer(this._cellStateBuffers[0], 0, this._cellStatus);
    this._device.queue.writeBuffer(this._cellStateBuffers[1], 0, this._cellStatus);
    this._step = 0;
  }
    
  async createGeometry() {
    // Create vertex buffer to store the vertices in GPU
    this._vertexBuffer = this._device.createBuffer({
      label: "Vertices " + this.getName(),
      size: this._vertices.byteLength,
      usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
    });
    // Copy from CPU to GPU
    this._device.queue.writeBuffer(this._vertexBuffer, 0, this._vertices);
    // Defne vertex buffer layout - how the GPU should read the buffer
    this._vertexBufferLayout = {
      arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
      attributes: [{ 
        // position 0 has two floats
        shaderLocation: 0,   // position in the vertex shader
        format: "float32x2", // two coordiantes
        offset: 0,           // no offset in the vertex buffer
      }],
    };
    // Create camera pose buffer to store the uniform color in GPU
    this._cameraPoseBuffer = this._device.createBuffer({
      label: "Camera Pose " + this.getName(),
      size: this._cameraPose.byteLength,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    }); 
    // Copy from CPU to GPU
    this._device.queue.writeBuffer(this._cameraPoseBuffer, 0, this._cameraPose);
    // an array of cell statuses in CPU
    this._cellStatus = new Uint32Array(256 * 256); 

    for (let i = 0; i < this._cellStatus.length; ++i) {
      this._cellStatus[i] = Math.random() < 0.5 ? 1 : 0;
    }

    // Create a storage ping-pong-buffer to hold the cell status.
    this._cellStateBuffers = [
      this._device.createBuffer({
        label: "Grid status Buffer 1 " + this.getName(),
        size: this._cellStatus.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      }),
      this._device.createBuffer({
        label: "Grid status Buffer 2 " + this.getName(),
        size: this._cellStatus.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      })
    ];
    // Copy from CPU to GPU
    this._device.queue.writeBuffer(this._cellStateBuffers[0], 0, this._cellStatus);
    this._device.queue.writeBuffer(this._cellStateBuffers[1], 0, this._cellStatus);
    // Set a step counter
    this._step = 0;
  }
  
  updateCameraPose() {
    this._device.queue.writeBuffer(this._cameraPoseBuffer, 0, this._cameraPose);
  }
  
  async createShaders() {
    let shaderCode = await this.loadShader("/shaders/camera2dalivedead.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: " Shader " + this.getName(),
      code: shaderCode,
    });
    // Create the bind group layout
    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "Grid Bind Group Layout " + this.getName(),
      entries: [{
        binding: 0,
        visibility: GPUShaderStage.VERTEX ,
        buffer: {} // Camera uniform buffer
      }, {
        binding: 1,
        visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"} // Cell status input buffer
      }, {
        binding: 2,
        visibility: GPUShaderStage.COMPUTE,
        buffer: { type: "storage"} // Cell status output buffer
      }]
    });
    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Grid Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createRenderPipeline() {
    this._renderPipeline = this._device.createRenderPipeline({
      label: "Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule,         // the shader code
        entryPoint: "vertexMain",           // the shader function
        buffers: [this._vertexBufferLayout] // the binded buffer layout
      },
      fragment: {
        module: this._shaderModule,    // the shader code
        entryPoint: "fragmentMain",    // the shader function
        targets: [{
          format: this._canvasFormat   // the target canvas format
        }]
      },
      primitive: {                     // instead of drawing triangles
        topology: 'line-strip'         // draw line strip
      }
    }); 
    // create bind group to bind the uniform buffer
    this._bindGroups = [
      this._device.createBindGroup({
        label: "Renderer Bind Group 1 " + this.getName(),
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [{
          binding: 0,
          resource: { buffer: this._cameraPoseBuffer }
        }, {
          binding: 1,
          resource: { buffer: this._cellStateBuffers[0] }
        },
        {
          binding: 2,
          resource: { buffer: this._cellStateBuffers[1] }
        }],
      }),
      this._device.createBindGroup({
        label: "Renderer Bind Group 2 " + this.getName(),
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [{
          binding: 0,
          resource: { buffer: this._cameraPoseBuffer }
        }, {
          binding: 1,
          resource: { buffer: this._cellStateBuffers[1] }
        },
        {
          binding: 2,
          resource: { buffer: this._cellStateBuffers[0] }
        }],
      })
    ];
  }
  
  render(pass) {
    // add to render pass to draw the object
    pass.setPipeline(this._renderPipeline);      // which render pipeline to use
    pass.setVertexBuffer(0, this._vertexBuffer); // how the buffer are binded
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);       // bind the uniform buffer
    pass.draw(this._vertices.length / 2, 256 * 256);  // number of vertices to draw and number of instances to draw (100 here)
  }
  
  async createComputePipeline() {
    // Create a compute pipeline that updates the game state.
    this._computePipeline = this._device.createComputePipeline({
      label: "Grid update pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeMain",
      }
    });
  }
  
  compute(pass) { 
    // add to compute pass
    if (this._paused) {
      console.log("skip computing - paused");
      return;
    }

    this._computeAccumulator += this._simSpeed;

    while (this._computeAccumulator >= 1) {
      pass.setPipeline(this._computePipeline);
      pass.setBindGroup(0, this._bindGroups[this._step % 2]);     // bind the uniform buffer
      pass.dispatchWorkgroups(Math.ceil(256 / 4), Math.ceil(256 / 4)); // sending how many instances to compute for each work group
      ++this._step;
      this._computeAccumulator -= 1;
    }

  }
}