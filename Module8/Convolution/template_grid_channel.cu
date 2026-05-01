#include <gputk.h>

constexpr int MASK_RADIUS = 2;
constexpr int MASK_SIZE = 2 * MASK_RADIUS + 1;
constexpr int TILE_SIZE = 16;
constexpr int TILE_WITH_HALO = TILE_SIZE + MASK_SIZE - 1;

__device__ __forceinline__ float clamp(float x) {
  return min(max(x, 0.f), 1.f);
}

//@@ INSERT CODE HERE
__constant__ float constantMask[MASK_SIZE * MASK_SIZE];
  
__global__ void convolution(const float* __restrict__ deviceInputImageData, float* __restrict__ deviceOutputImageData, 
                             int imageChannels, int imageWidth, int imageHeight) {
  int channel = blockIdx.z * blockDim.z + threadIdx.z; // threadIdx.z always zero in the blockDim.z of 1 
  int outRow = blockIdx.y * blockDim.y + threadIdx.y;
  int outCol = blockIdx.x * blockDim.x + threadIdx.x;
  
  // Storing in shared mem - row, col 
  __shared__ float tile[TILE_WITH_HALO][TILE_WITH_HALO];

  int linearThread = threadIdx.y * blockDim.x + threadIdx.x; 
  int stride = blockDim.y * blockDim.x;
  int boundary = TILE_WITH_HALO * TILE_WITH_HALO;
  for(int idx = linearThread; idx < boundary; idx += stride) {
    int tileRow = idx / TILE_WITH_HALO;
    int tileCol = idx - tileRow * TILE_WITH_HALO;
    int inRow = blockIdx.y * blockDim.y - MASK_RADIUS + tileRow; 
    int inCol = blockIdx.x * blockDim.x - MASK_RADIUS + tileCol;
    float val = 0.f;
    if (0 <= inRow && inRow < imageHeight && 0 <= inCol && inCol < imageWidth) {
      // Non coalesced reads
      val = deviceInputImageData[(inRow * imageWidth + inCol) * imageChannels + channel]; 
    }
    tile[tileRow][tileCol] = val;
  }

  __syncthreads();

  if(outCol < imageWidth && outRow < imageHeight) {
    float acc = 0.f;
    // Try with pragma unroll? 
    for(int maskRow = 0; maskRow <= 2*MASK_RADIUS; ++maskRow) {
      int inRow = threadIdx.y + maskRow;
      for(int maskCol = 0; maskCol <= 2*MASK_RADIUS; ++maskCol) {
        int inCol = threadIdx.x + maskCol;
        acc += constantMask[maskRow * MASK_SIZE + maskCol] * tile[inRow][inCol];
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

  dim3 dimBlock(TILE_SIZE, TILE_SIZE, 1);
  dim3 dimGrid((imageWidth + TILE_SIZE - 1) / TILE_SIZE, (imageHeight + TILE_SIZE - 1) / TILE_SIZE, imageChannels);
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
