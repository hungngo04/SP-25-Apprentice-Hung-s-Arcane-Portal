export default class VoxelGrid {
  constructor(minBounds, maxBounds, resolution = 16) {
    this._minBounds = minBounds; // vec3f
    this._maxBounds = maxBounds; // vec3f
    this._resolution = resolution; // Number of cells in each dimension
    
    // Calculate cell size
    const size = [
      (maxBounds[0] - minBounds[0]) / resolution,
      (maxBounds[1] - minBounds[1]) / resolution,
      (maxBounds[2] - minBounds[2]) / resolution
    ];
    this._cellSize = size;
    
    // Create grid structure
    this._gridSize = [resolution, resolution, resolution];
    
    // Create voxel data array
    this._voxels = new Array(resolution * resolution * resolution);
    for (let i = 0; i < this._voxels.length; i++) {
      this._voxels[i] = {
        count: 0,
        triangleIndices: new Uint32Array(64) // Max 64 triangles per voxel
      };
    }
  }
  
  positionToVoxelIndex(position) {
    const normalizedPos = [
      (position[0] - this._minBounds[0]) / (this._maxBounds[0] - this._minBounds[0]),
      (position[1] - this._minBounds[1]) / (this._maxBounds[1] - this._minBounds[1]),
      (position[2] - this._minBounds[2]) / (this._maxBounds[2] - this._minBounds[2])
    ];
    
    const voxelIndex = [
      Math.min(Math.floor(normalizedPos[0] * this._resolution), this._resolution - 1),
      Math.min(Math.floor(normalizedPos[1] * this._resolution), this._resolution - 1),
      Math.min(Math.floor(normalizedPos[2] * this._resolution), this._resolution - 1)
    ];
    
    return voxelIndex;
  }
  
  voxelIndexTo1D(index) {
    return index[0] + index[1] * this._resolution + index[2] * this._resolution * this._resolution;
  }
  
  addTriangle(triangleIndex, v0, v1, v2) {
    const minX = Math.min(v0[0], v1[0], v2[0]);
    const minY = Math.min(v0[1], v1[1], v2[1]);
    const minZ = Math.min(v0[2], v1[2], v2[2]);
    
    const maxX = Math.max(v0[0], v1[0], v2[0]);
    const maxY = Math.max(v0[1], v1[1], v2[1]);
    const maxZ = Math.max(v0[2], v1[2], v2[2]);
    
    const minVoxel = this.positionToVoxelIndex([minX, minY, minZ]);
    const maxVoxel = this.positionToVoxelIndex([maxX, maxY, maxZ]);
    
    for (let x = minVoxel[0]; x <= maxVoxel[0]; x++) {
      for (let y = minVoxel[1]; y <= maxVoxel[1]; y++) {
        for (let z = minVoxel[2]; z <= maxVoxel[2]; z++) {
          const voxelIdx = this.voxelIndexTo1D([x, y, z]);
          const voxel = this._voxels[voxelIdx];
          
          // Check if we have space in this voxel
          if (voxel.count < 64) {
            voxel.triangleIndices[voxel.count] = triangleIndex;
            voxel.count++;
          }
        }
      }
    }
  }
  
  buildFromMesh(vertices, triangles) {
    for (let i = 0; i < this._voxels.length; i++) {
      this._voxels[i].count = 0;
    }
    
    for (let i = 0; i < triangles.length; i += 3) {
      const v0 = [
        vertices[triangles[i]][0],
        vertices[triangles[i]][1],
        vertices[triangles[i]][2]
      ];
      
      const v1 = [
        vertices[triangles[i + 1]][0],
        vertices[triangles[i + 1]][1],
        vertices[triangles[i + 1]][2]
      ];
      
      const v2 = [
        vertices[triangles[i + 2]][0],
        vertices[triangles[i + 2]][1],
        vertices[triangles[i + 2]][2]
      ];
      
      this.addTriangle(i / 3, v0, v1, v2);
    }
  }
  
  createBuffers(device) {
    this._gridBuffer = device.createBuffer({
      label: "Voxel Grid Structure",
      size: 4 * 4 * 3, // 3 vec4f (gridSize, cellSize, minBounds, maxBounds)
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    });
    
    const voxelDataSize = this._voxels.length * (4 + 64 * 4); // count (u32) + 64 triangle indices (u32)
    this._voxelDataBuffer = device.createBuffer({
      label: "Voxel Data",
      size: voxelDataSize,
      usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
    });
    
    this.updateBuffers(device);
    
    return {
      gridBuffer: this._gridBuffer,
      voxelDataBuffer: this._voxelDataBuffer
    };
  }
  
  updateBuffers(device) {
    const gridData = new Float32Array([
      this._gridSize[0], this._gridSize[1], this._gridSize[2], 0, // gridSize (vec3u + padding)
      this._cellSize[0], this._cellSize[1], this._cellSize[2], 0, // cellSize (vec3f + padding)
      this._minBounds[0], this._minBounds[1], this._minBounds[2], 0, // minBounds (vec3f + padding)
      this._maxBounds[0], this._maxBounds[1], this._maxBounds[2], 0  // maxBounds (vec3f + padding)
    ]);
    device.queue.writeBuffer(this._gridBuffer, 0, gridData);
    
    const voxelData = new Uint32Array(this._voxels.length * (1 + 64)); // count + 64 triangle indices
    
    for (let i = 0; i < this._voxels.length; i++) {
      const voxel = this._voxels[i];
      const offset = i * (1 + 64);
      
      voxelData[offset] = voxel.count;
      for (let j = 0; j < voxel.count; j++) {
        voxelData[offset + 1 + j] = voxel.triangleIndices[j];
      }
    }
    
    device.queue.writeBuffer(this._voxelDataBuffer, 0, voxelData);
  }
}
