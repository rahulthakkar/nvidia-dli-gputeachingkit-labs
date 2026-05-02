
// Given a list (lst) of length n
// Output its sum = lst[0] + lst[1] + ... + lst[n-1];

#include <gputk.h>

constexpr int BLOCK_SIZE = 512; //@@ You can change this

__global__ void total(const float* __restrict__ input, float* __restrict__ output, int len) {
  unsigned int idx = blockDim.x * blockIdx.x * 2 + threadIdx.x;

  //@@ Load a segment of the input vector into shared memory
  __shared__ float mem[BLOCK_SIZE];
  float val = 0.f;
  if (idx < len) {
    val = input[idx]; 
  }
  if (idx + blockDim.x < len) {
    val += input[idx + blockDim.x]; 
  } 
  mem[threadIdx.x] = val;
  __syncthreads();

  //@@ Traverse the reduction tree
  for (int stride = blockDim.x / 2; stride > 0; stride /= 2) {
    if (threadIdx.x < stride) {
      mem[threadIdx.x] += mem[threadIdx.x + stride];
    }
    __syncthreads();
  }

  //@@ Write the computed sum of the block to the output vector at the correct index
  if (threadIdx.x == 0) {
    output[blockIdx.x] = mem[0];
  }
}

int main(int argc, char **argv) {
  int ii;
  gpuTKArg_t args;
  float *hostInput;  // The input 1D list
  float *hostOutput; // The output list
  float *deviceInput;
  float *deviceOutput;
  int numInputElements;  // number of elements in the input list
  int numOutputElements; // number of elements in the output list

  args = gpuTKArg_read(argc, argv);

  gpuTKTime_start(Generic, "Importing data and creating memory on host");
  hostInput = (float *)gpuTKImport(gpuTKArg_getInputFile(args, 0), &numInputElements);

  int blockElements = BLOCK_SIZE * 2;
  numOutputElements = (numInputElements + blockElements - 1) / blockElements;

  const size_t numInputBytes = numInputElements * sizeof(float); 
  const size_t numOutputBytes = numOutputElements * sizeof(float); 
  hostOutput = (float *)malloc(numOutputBytes);

  gpuTKTime_stop(Generic, "Importing data and creating memory on host");

  gpuTKLog(TRACE, "The number of input elements in the input is ", numInputElements);
  gpuTKLog(TRACE, "The number of output elements in the input is ", numOutputElements);

  gpuTKTime_start(GPU, "Allocating GPU memory.");
  //@@ Allocate GPU memory here
  gpuTKCheck(cudaMalloc((void**) &deviceInput, numInputBytes));
  gpuTKCheck(cudaMalloc((void**) &deviceOutput, numOutputBytes));
  gpuTKTime_stop(GPU, "Allocating GPU memory.");

  gpuTKTime_start(GPU, "Copying input memory to the GPU.");
  //@@ Copy memory to the GPU here
  gpuTKCheck(cudaMemcpy(deviceInput, hostInput, numInputBytes, cudaMemcpyHostToDevice));
  gpuTKTime_stop(GPU, "Copying input memory to the GPU.");
  //@@ Initialize the grid and block dimensions here
  dim3 blockDim(BLOCK_SIZE);
  dim3 gridDim(numOutputElements);
  gpuTKTime_start(Compute, "Performing CUDA computation");
  //@@ Launch the GPU Kernel here
  total<<<gridDim, blockDim>>>(deviceInput, deviceOutput, numInputElements);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());
  gpuTKTime_stop(Compute, "Performing CUDA computation");

  gpuTKTime_start(Copy, "Copying output memory to the CPU");
  //@@ Copy the GPU memory back to the CPU here
  gpuTKCheck(cudaMemcpy(hostOutput, deviceOutput, numOutputBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying output memory to the CPU");

  /********************************************************************
   * Reduce output vector on the host
   * NOTE: One could also perform the reduction of the output vector
   * recursively and support any size input. For simplicity, we do not
   * require that for this lab.
   ********************************************************************/
  float sum = 0.;
  for (ii = 0; ii < numOutputElements; ++ii) {
    sum += hostOutput[ii];
  }
  hostOutput[0] = sum;
  gpuTKLog(TRACE, "The total is ", sum);

  gpuTKTime_start(GPU, "Freeing GPU Memory");
  //@@ Free the GPU memory here
  gpuTKCheck(cudaFree(deviceInput));
  gpuTKCheck(cudaFree(deviceOutput));
  gpuTKTime_stop(GPU, "Freeing GPU Memory");

  gpuTKSolution(args, hostOutput, 1);

  free(hostInput);
  free(hostOutput);

  return 0;
}
