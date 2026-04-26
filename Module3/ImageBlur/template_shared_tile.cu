#include <gputk.h>

constexpr int BLUR_SIZE = 5;
constexpr int TILE_SIZE = 32;

//@@ INSERT CODE HERE
__global__ void imageBlur(const float* inputImageData, float* outputImageData, int width, int height) {
  __shared__ float tile[TILE_SIZE][TILE_SIZE];
  
  dim3 effectiveOutBlockDim(blockDim.x - 2 * BLUR_SIZE, blockDim.y - 2 * BLUR_SIZE); 
  int idy = effectiveOutBlockDim.y * blockIdx.y + threadIdx.y - BLUR_SIZE;
  int idx = effectiveOutBlockDim.x * blockIdx.x + threadIdx.x - BLUR_SIZE;
  
  tile[threadIdx.y][threadIdx.x] = 0.f;
  if (0 <= idy && idy < height && 0 <= idx && idx < width) {
    tile[threadIdx.y][threadIdx.x] = inputImageData[idy * width + idx];
  }
  __syncthreads();

  float out = 0.f;   
  int count = 0;
  if (BLUR_SIZE <= threadIdx.x && threadIdx.x < (blockDim.x - BLUR_SIZE) && BLUR_SIZE <= threadIdx.y && threadIdx.y < (blockDim.y - BLUR_SIZE) && 
      0 <= idy && idy < height && 0 <= idx && idx < width) {
    for (int i = -BLUR_SIZE; i <= BLUR_SIZE; ++i) {
      int iny = threadIdx.y + i;     
      for (int j = -BLUR_SIZE; j <= BLUR_SIZE; ++j) {
        int inx = threadIdx.x + j;
        if (0 <= (idy + i) && (idy + i) < height && 0 <= (idx + j) && (idx + j) < width) {
          out += tile[iny][inx];
          count += 1;
        }
      }
    }
    outputImageData[idy * width + idx] = out / count;
  }  
}

int main(int argc, char *argv[]) {
  gpuTKArg_t args;
  int imageWidth;
  int imageHeight;
  char *inputImageFile;
  gpuTKImage_t inputImage;
  gpuTKImage_t outputImage;
  float *hostInputImageData;
  float *hostOutputImageData;
  float *deviceInputImageData;
  float *deviceOutputImageData;

  args = gpuTKArg_read(argc, argv); /* parse the input arguments */

  inputImageFile = gpuTKArg_getInputFile(args, 0);

  inputImage = gpuTKImport(inputImageFile);

  // The input image is in grayscale, so the number of channels
  // is 1
  imageWidth  = gpuTKImage_getWidth(inputImage);
  imageHeight = gpuTKImage_getHeight(inputImage);

  // Since the image is monochromatic, it only contains only one channel
  outputImage = gpuTKImage_new(imageWidth, imageHeight, 1);
  gpuTKLog(TRACE, "The image is of shape ", imageHeight, " x ", imageWidth);

  hostInputImageData  = gpuTKImage_getData(inputImage);
  hostOutputImageData = gpuTKImage_getData(outputImage);

  const int effectiveTileWidth = TILE_SIZE - 2 * BLUR_SIZE;
  const int effectiveTileHeight = TILE_SIZE - 2 * BLUR_SIZE;
  if (effectiveTileWidth <= 0 || effectiveTileHeight <= 0) {
    gpuTKLog(ERROR, "Invalid tile/blur configuration: TILE_SIZE must be greater than 2 * BLUR_SIZE. TILE_SIZE = ",
             TILE_SIZE, ", BLUR_SIZE = ", BLUR_SIZE);
    gpuTKImage_delete(outputImage);
    gpuTKImage_delete(inputImage);
    return 1;
  }

  gpuTKTime_start(GPU, "Doing GPU Computation (memory + compute)");
  const size_t imageBytes = static_cast<size_t>(imageWidth) * imageHeight * sizeof(float);
  gpuTKTime_start(GPU, "Doing GPU memory allocation");
  gpuTKCheck(cudaMalloc((void **) &deviceInputImageData, imageBytes));
  gpuTKCheck(cudaMalloc((void **) &deviceOutputImageData, imageBytes));
  gpuTKTime_stop(GPU, "Doing GPU memory allocation");

  gpuTKTime_start(Copy, "Copying data to the GPU");
  gpuTKCheck(cudaMemcpy(deviceInputImageData, hostInputImageData,
                        imageBytes, cudaMemcpyHostToDevice));
  gpuTKTime_stop(Copy, "Copying data to the GPU");

  ///////////////////////////////////////////////////////
  gpuTKTime_start(Compute, "Doing the computation on the GPU");
  dim3 blockSize(TILE_SIZE, TILE_SIZE);
  dim3 outEffectiveBlockSize(effectiveTileWidth, effectiveTileHeight);
  dim3 gridSize((imageWidth + outEffectiveBlockSize.x - 1) / outEffectiveBlockSize.x,
                (imageHeight + outEffectiveBlockSize.y - 1) / outEffectiveBlockSize.y);
  imageBlur<<<gridSize, blockSize>>>(deviceInputImageData, deviceOutputImageData, imageWidth, imageHeight);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());
  gpuTKTime_stop(Compute, "Doing the computation on the GPU");

  ///////////////////////////////////////////////////////
  gpuTKTime_start(Copy, "Copying data from the GPU");
  gpuTKCheck(cudaMemcpy(hostOutputImageData, deviceOutputImageData,
                        imageBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying data from the GPU");

  gpuTKTime_stop(GPU, "Doing GPU Computation (memory + compute)");

  gpuTKSolution(args, outputImage);

  gpuTKCheck(cudaFree(deviceInputImageData));
  gpuTKCheck(cudaFree(deviceOutputImageData));

  gpuTKImage_delete(outputImage);
  gpuTKImage_delete(inputImage);

  return 0;
}
