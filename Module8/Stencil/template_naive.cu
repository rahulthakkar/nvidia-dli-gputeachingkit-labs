#include <gputk.h>

__device__ __forceinline__ float clamp(float x, float start, float end) {
  return fminf(fmaxf(x, start), end);
}


__global__ void stencil(float* __restrict__ output, const float* __restrict__ input, 
                        int width, int height, int depth) {
  int k = blockDim.x * blockIdx.x + threadIdx.x;
  int j = blockDim.y * blockIdx.y + threadIdx.y;
  int i = blockDim.z * blockIdx.z + threadIdx.z;
  
  if (0 < k && k < depth-1 && 0 < j && j < width-1 && 0 < i && i < height-1) {
    float ans = input[(i * width + j) * depth + (k - 1)] +
                input[(i * width + j) * depth + (k + 1)] +
                input[(i * width + (j - 1)) * depth + k] +
                input[(i * width + (j + 1)) * depth + k] +
                input[((i - 1) * width + j) * depth + k] +
                input[((i + 1) * width + j) * depth + k] -
                6.f * input[(i * width + j) * depth + k];
    output[(i * width + j) * depth + k] = clamp(ans, 0.f, 255.f);
  } 
}

static void launch_stencil(float* __restrict__  deviceOutputData, const float* __restrict__ deviceInputData,
                           int width, int height, int depth) {
  dim3 blockDim(8, 8, 8);
  dim3 gridDim((depth + blockDim.x - 1) / blockDim.x,
               (width + blockDim.y - 1) / blockDim.y, 
               (height + blockDim.z - 1) / blockDim.z);
  
  stencil<<<gridDim, blockDim>>>(deviceOutputData, deviceInputData, width, height, depth); 
}

int main(int argc, char *argv[]) {
  gpuTKArg_t arg;
  int width;
  int height;
  int depth;
  char *inputFile;
  gpuTKImage_t input;
  gpuTKImage_t output;
  float *hostInputData;
  float *hostOutputData;
  float *deviceInputData;
  float *deviceOutputData;

  arg = gpuTKArg_read(argc, argv);

  inputFile = gpuTKArg_getInputFile(arg, 0);

  input = gpuTKImport(inputFile);

  width  = gpuTKImage_getWidth(input);
  height = gpuTKImage_getHeight(input);
  depth  = gpuTKImage_getChannels(input);
  gpuTKLog(TRACE, "The dimensions of the array are ", height, " x ", width, " x ", depth);

  output = gpuTKImage_new(width, height, depth);

  hostInputData  = gpuTKImage_getData(input);
  hostOutputData = gpuTKImage_getData(output);

  const size_t sizeInBytes = static_cast<size_t>(width) * height * depth * sizeof(float);
  gpuTKTime_start(GPU, "Doing GPU memory allocation");
  gpuTKCheck(cudaMalloc((void **) &deviceInputData, sizeInBytes));
  gpuTKCheck(cudaMalloc((void **) &deviceOutputData, sizeInBytes));
  gpuTKCheck(cudaMemset(deviceOutputData, 0, sizeInBytes));
  gpuTKTime_stop(GPU, "Doing GPU memory allocation");

  gpuTKTime_start(Copy, "Copying data to the GPU");
  gpuTKCheck(cudaMemcpy(deviceInputData, hostInputData, sizeInBytes, cudaMemcpyHostToDevice));
  gpuTKTime_stop(Copy, "Copying data to the GPU");

  gpuTKTime_start(Compute, "Doing the computation on the GPU");
  launch_stencil(deviceOutputData, deviceInputData, width, height, depth);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());
  gpuTKTime_stop(Compute, "Doing the computation on the GPU");

  gpuTKTime_start(Copy, "Copying data from the GPU");
  gpuTKCheck(cudaMemcpy(hostOutputData, deviceOutputData, sizeInBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying data from the GPU");

  gpuTKSolution(arg, output);

  gpuTKCheck(cudaFree(deviceInputData));
  gpuTKCheck(cudaFree(deviceOutputData));

  gpuTKImage_delete(output);
  gpuTKImage_delete(input);

  return 0;
}