#include <gputk.h>

constexpr int MASK_RADIUS = 2;
constexpr int MASK_SIZE = 2 * MASK_RADIUS + 1;
constexpr int TILE_SIZE = 16;

__device__ __forceinline__ float clamp(float x) {
  return min(max(x, 0.f), 1.f);
}

//@@ INSERT CODE HERE
__constant__ float constantMask[MASK_SIZE * MASK_SIZE];
  
__global__ void convolution(const float* __restrict__ deviceInputImageData, float* __restrict__ deviceOutputImageData, 
                             int imageChannels, int imageWidth, int imageHeight) {
  // Set based on the value of the config setting chosen  
  int channel = blockIdx.x * blockDim.x + threadIdx.x;
  int outCol = blockIdx.y * blockDim.y + threadIdx.y;
  int outRow = blockIdx.z * blockDim.z + threadIdx.z;
  // int channel = blockIdx.z * blockDim.z + threadIdx.z;
  // int outRow = blockIdx.y * blockDim.y + threadIdx.y;
  // int outCol = blockIdx.x * blockDim.x + threadIdx.x;
  
  if(channel <imageChannels && outCol < imageWidth && outRow < imageHeight) {
    float acc = 0.f;
    for(int maskRow = -MASK_RADIUS; maskRow <= MASK_RADIUS; ++maskRow) {
      int inRow = outRow + maskRow;
      for(int maskCol = -MASK_RADIUS; maskCol <= MASK_RADIUS; ++maskCol) {
        int inCol = outCol + maskCol;
        if (0 <= inCol && inCol < imageWidth && 0 <= inRow && inRow < imageHeight) {
          acc += constantMask[(maskRow + MASK_RADIUS) * MASK_SIZE + (maskCol + MASK_RADIUS)] * 
                 deviceInputImageData[(inRow * imageWidth + inCol) * imageChannels + channel];
        }
      }
    } 
    deviceOutputImageData[(outRow * imageWidth + outCol) * imageChannels + channel] = clamp(acc);
  }
}


int main(int argc, char *argv[]) {
  gpuTKArg_t arg;
  int maskRows;
  int maskColumns;
  int imageChannels;
  int imageWidth;
  int imageHeight;
  char *inputImageFile;
  char *inputMaskFile;
  gpuTKImage_t inputImage;
  gpuTKImage_t outputImage;
  float *hostInputImageData;
  float *hostOutputImageData;
  float *hostMaskData;
  float *deviceInputImageData;
  float *deviceOutputImageData;
  // float *deviceMaskData;

  arg = gpuTKArg_read(argc, argv); /* parse the input arguments */

  inputImageFile = gpuTKArg_getInputFile(arg, 0);
  inputMaskFile  = gpuTKArg_getInputFile(arg, 1);

  inputImage   = gpuTKImport(inputImageFile);
  hostMaskData = (float *)gpuTKImport(inputMaskFile, &maskRows, &maskColumns);

  gpuTKLog(TRACE, "The dimensions of the mask are ", maskRows, " x ", maskColumns);
  assert(maskRows == MASK_SIZE);    /* mask height is fixed to 5 in this mp */
  assert(maskColumns == MASK_SIZE); /* mask width is fixed to 5 in this mp */

  imageWidth    = gpuTKImage_getWidth(inputImage);
  imageHeight   = gpuTKImage_getHeight(inputImage);
  imageChannels = gpuTKImage_getChannels(inputImage);
  gpuTKLog(TRACE, "The dimensions of the image are ", imageHeight, " x ", imageWidth, " x ", imageChannels);

  outputImage = gpuTKImage_new(imageWidth, imageHeight, imageChannels);

  hostInputImageData  = gpuTKImage_getData(inputImage);
  hostOutputImageData = gpuTKImage_getData(outputImage);
  const size_t imageBytes = static_cast<size_t>(imageHeight) * imageWidth * imageChannels * sizeof(float);
  gpuTKTime_start(GPU, "Doing GPU Computation (memory + compute)");

  gpuTKTime_start(GPU, "Doing GPU memory allocation");
  //@@ INSERT CODE HERE
  gpuTKCheck(cudaMalloc((void**) &deviceInputImageData, imageBytes));
  gpuTKCheck(cudaMalloc((void**) &deviceOutputImageData, imageBytes));
  gpuTKTime_stop(GPU, "Doing GPU memory allocation");

  gpuTKTime_start(Copy, "Copying data to the GPU");
  //@@ INSERT CODE HERE
  gpuTKCheck(cudaMemcpy(deviceInputImageData, hostInputImageData, imageBytes, cudaMemcpyHostToDevice));
  gpuTKCheck(cudaMemcpyToSymbol(constantMask, hostMaskData, maskRows * maskColumns * sizeof(float)));
  gpuTKTime_stop(Copy, "Copying data to the GPU");

  gpuTKTime_start(Compute, "Doing the computation on the GPU");
  //@@ INSERT CODE HERE
  cudaDeviceProp prop;
  gpuTKCheck(cudaGetDeviceProperties(&prop, 0));

  int threadsPerBlock = imageChannels * TILE_SIZE * TILE_SIZE;
  if (threadsPerBlock > prop.maxThreadsPerBlock) {
    gpuTKLog(ERROR, "Too many threads per block: ", threadsPerBlock);
    //TODO Add data cleanup
    return 1; 
  }

  // TODO this configuration would have better memory coalescing comapre to other - benchmark? 
  dim3 dimBlock(imageChannels, TILE_SIZE, TILE_SIZE);
  dim3 dimGrid(1, (imageWidth + TILE_SIZE - 1) / TILE_SIZE, (imageHeight + TILE_SIZE - 1) / TILE_SIZE);
  // max*Dim.z have lower limits - does it make sense to put lower dim things like channels in x?
  // dim3 dimBlock(TILE_SIZE, TILE_SIZE, imageChannels);
  // dim3 dimGrid((imageWidth + TILE_SIZE - 1) / TILE_SIZE, (imageHeight + TILE_SIZE - 1) / TILE_SIZE, 1);
  // TODO Try best of both configs and use x for (col+channel) and y for row or just 1D config?
  convolution<<<dimGrid, dimBlock>>>(deviceInputImageData, deviceOutputImageData, 
                                     imageChannels, imageWidth, imageHeight);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());                                     
  gpuTKTime_stop(Compute, "Doing the computation on the GPU");

  gpuTKTime_start(Copy, "Copying data from the GPU");
  //@@ INSERT CODE HERE
  gpuTKCheck(cudaMemcpy(hostOutputImageData, deviceOutputImageData, imageBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying data from the GPU");

  gpuTKTime_stop(GPU, "Doing GPU Computation (memory + compute)");

  gpuTKSolution(arg, outputImage);

  //@@ Insert code here
  gpuTKCheck(cudaFree(deviceInputImageData));
  gpuTKCheck(cudaFree(deviceOutputImageData));
  
  free(hostMaskData);
  gpuTKImage_delete(outputImage);
  gpuTKImage_delete(inputImage);

  return 0;
}
