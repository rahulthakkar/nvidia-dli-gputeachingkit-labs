#include <gputk.h>

__global__ void vecAdd(const float *in1, const float *in2, float *out, int len) {
  //@@ Insert code to implement vector addition here
  unsigned int idx = blockDim.x * blockIdx.x + threadIdx.x;
  if (idx < len) {
    out[idx] = in1[idx] + in2[idx];
  } 
}

int main(int argc, char **argv) {
  gpuTKArg_t args;
  int inputLength;
  float *hostInput1;
  float *hostInput2;
  float *hostOutput;
  float *deviceInput1;
  float *deviceInput2;
  float *deviceOutput;

  args = gpuTKArg_read(argc, argv);

  gpuTKTime_start(Generic, "Importing data and creating memory on host");
  hostInput1 =
      (float *) gpuTKImport(gpuTKArg_getInputFile(args, 0), &inputLength);
  hostInput2 =
      (float *) gpuTKImport(gpuTKArg_getInputFile(args, 1), &inputLength);
  size_t arraySizeBytes = inputLength * sizeof(float);   
  hostOutput = (float *) malloc(arraySizeBytes);
  gpuTKTime_stop(Generic, "Importing data and creating memory on host");

  gpuTKLog(TRACE, "The input length is ", inputLength);

  gpuTKTime_start(GPU, "Allocating GPU memory.");
  //@@ Allocate GPU memory here
  gpuTKCheck(cudaMalloc((void**) &deviceInput1, arraySizeBytes));
  gpuTKCheck(cudaMalloc((void**) &deviceInput2, arraySizeBytes));
  gpuTKCheck(cudaMalloc((void**) &deviceOutput, arraySizeBytes));
  gpuTKTime_stop(GPU, "Allocating GPU memory.");

  gpuTKTime_start(GPU, "Copying input memory to the GPU.");
  //@@ Copy memory to the GPU here
  gpuTKCheck(cudaMemcpy(deviceInput1, hostInput1, arraySizeBytes, cudaMemcpyHostToDevice));
  gpuTKCheck(cudaMemcpy(deviceInput2, hostInput2, arraySizeBytes, cudaMemcpyHostToDevice));
  gpuTKTime_stop(GPU, "Copying input memory to the GPU.");

  //@@ Initialize the grid and block dimensions here
  // TODO Try to benchmark this
  int blockSize = 256;
  int numBlocks = (inputLength + blockSize - 1) / blockSize;
  
  gpuTKTime_start(Compute, "Performing CUDA computation");
  //@@ Launch the GPU Kernel here
  vecAdd<<<numBlocks, blockSize>>>(deviceInput1, deviceInput2, deviceOutput, inputLength);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());
  gpuTKTime_stop(Compute, "Performing CUDA computation");

  gpuTKTime_start(Copy, "Copying output memory to the CPU");
  //@@ Copy the GPU memory back to the CPU here
  gpuTKCheck(cudaMemcpy(hostOutput, deviceOutput, arraySizeBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying output memory to the CPU");

  gpuTKTime_start(GPU, "Freeing GPU Memory");
  //@@ Free the GPU memory here
  gpuTKCheck(cudaFree(deviceInput1));
  gpuTKCheck(cudaFree(deviceInput2));
  gpuTKCheck(cudaFree(deviceOutput));
  gpuTKTime_stop(GPU, "Freeing GPU Memory");

  gpuTKSolution(args, hostOutput, inputLength);

  free(hostInput1);
  free(hostInput2);
  free(hostOutput);

  return 0;
}
