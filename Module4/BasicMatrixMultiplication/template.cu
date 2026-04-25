
#include <gputk.h>

// Compute C = A * B
__global__ void matrixMultiply(const float *__restrict__ A, 
                               const float *__restrict__ B, 
                               float *__restrict__ C, 
                               int numARows, int numAColumns, 
                               int numBRows, int numBColumns, 
                               int numCRows, int numCColumns) {
  //@@ Insert code to implement matrix multiplication here
  const unsigned int idy = blockIdx.y * blockDim.y + threadIdx.y;
  const unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;

  if (idy < numCRows && idx < numCColumns) {
    float ans = 0.f;
    for (int k = 0; k < numAColumns; ++k) {
      ans += A[idy * numAColumns + k] * B[k * numBColumns + idx];
    }
    C[idy * numCColumns + idx] = ans;
  }
}

int main(int argc, char **argv) {
  gpuTKArg_t args;
  float *hostA; // The A matrix
  float *hostB; // The B matrix
  float *hostC; // The output C matrix
  float *deviceA;
  float *deviceB;
  float *deviceC;
  int numARows;    // number of rows in the matrix A
  int numAColumns; // number of columns in the matrix A
  int numBRows;    // number of rows in the matrix B
  int numBColumns; // number of columns in the matrix B
  int numCRows;    // number of rows in the matrix C (you have to set this)
  int numCColumns; // number of columns in the matrix C (you have to set
                   // this)

  args = gpuTKArg_read(argc, argv);

  gpuTKTime_start(Generic, "Importing data and creating memory on host");
  hostA = (float *)gpuTKImport(gpuTKArg_getInputFile(args, 0), &numARows,
                            &numAColumns);
  hostB = (float *)gpuTKImport(gpuTKArg_getInputFile(args, 1), &numBRows,
                            &numBColumns);

  auto cleanupHostInputsAndStopTimer = [&]() {
    free(hostA);
    free(hostB);
    gpuTKTime_stop(Generic, "Importing data and creating memory on host");
  };

  if (numAColumns != numBRows) {
    gpuTKLog(ERROR, "Matrix dimensions are incompatible: A is ",
             numARows, " x ", numAColumns, ", B is ",
             numBRows, " x ", numBColumns);
    cleanupHostInputsAndStopTimer();
    return 1;
  }                          
  //@@ Set numCRows and numCColumns
  numCRows    = numARows;
  numCColumns = numBColumns;

  const size_t numBytesA =  static_cast<size_t>(numARows) * numAColumns * sizeof(float);
  const size_t numBytesB =  static_cast<size_t>(numBRows) * numBColumns * sizeof(float);
  const size_t numBytesC =  static_cast<size_t>(numCRows) * numCColumns * sizeof(float);

  //@@ Allocate the hostC matrix
  hostC = static_cast<float *>(malloc(numBytesC));
  if (hostC == nullptr) {
    gpuTKLog(ERROR, "Failed to allocate host memory for C");
    cleanupHostInputsAndStopTimer();
    return 1;
  }
  gpuTKTime_stop(Generic, "Importing data and creating memory on host");

  gpuTKLog(TRACE, "The dimensions of A are ", numARows, " x ", numAColumns);
  gpuTKLog(TRACE, "The dimensions of B are ", numBRows, " x ", numBColumns);

  gpuTKTime_start(GPU, "Allocating GPU memory.");
  //@@ Allocate GPU memory here
  gpuTKCheck(cudaMalloc((void **) &deviceA, numBytesA));
  gpuTKCheck(cudaMalloc((void **) &deviceB, numBytesB));
  gpuTKCheck(cudaMalloc((void **) &deviceC, numBytesC));
  gpuTKTime_stop(GPU, "Allocating GPU memory.");

  gpuTKTime_start(GPU, "Copying input memory to the GPU.");
  //@@ Copy memory to the GPU here
  gpuTKCheck(cudaMemcpy(deviceA, hostA, numBytesA, cudaMemcpyHostToDevice));
  gpuTKCheck(cudaMemcpy(deviceB, hostB, numBytesB, cudaMemcpyHostToDevice));
  gpuTKTime_stop(GPU, "Copying input memory to the GPU.");

  //@@ Initialize the grid and block dimensions here
  dim3 blockDim(16, 16);
  dim3 gridDim((numCColumns + blockDim.x - 1) / blockDim.x, (numCRows + blockDim.y - 1) / blockDim.y);
            
  gpuTKTime_start(Compute, "Performing CUDA computation");
  //@@ Launch the GPU Kernel here
  matrixMultiply<<<gridDim, blockDim>>>(deviceA, deviceB, deviceC, 
                                        numARows, numAColumns, 
                                        numBRows, numBColumns, 
                                        numCRows, numCColumns);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());                         
  gpuTKTime_stop(Compute, "Performing CUDA computation");

  gpuTKTime_start(Copy, "Copying output memory to the CPU");
  //@@ Copy the GPU memory back to the CPU here
  gpuTKCheck(cudaMemcpy(hostC, deviceC, numBytesC, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying output memory to the CPU");

  gpuTKTime_start(GPU, "Freeing GPU Memory");
  //@@ Free the GPU memory here
  gpuTKCheck(cudaFree(deviceA));
  gpuTKCheck(cudaFree(deviceB));
  gpuTKCheck(cudaFree(deviceC));
  gpuTKTime_stop(GPU, "Freeing GPU Memory");

  gpuTKSolution(args, hostC, numCRows, numCColumns);

  free(hostA);
  free(hostB);
  free(hostC);

  return 0;
}
