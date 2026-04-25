#include <gputk.h>

//@@ INSERT CODE HERE
__global__ void imageColorToGrayscale(const float* inputImageData, float* outputImageData, int width, int height) {
  unsigned int i = blockDim.y * blockIdx.y + threadIdx.y;
  unsigned int j = blockDim.x * blockIdx.x + threadIdx.x;

  if (i < height && j < width) {
    unsigned int idx = i * width + j;
    float r = inputImageData[3 * idx];
    float g = inputImageData[3 * idx + 1];
    float b = inputImageData[3 * idx + 2];
    outputImageData[idx] = (0.21f * r + 0.71f * g + 0.07f * b);
  }
}

int main(int argc, char *argv[]) {
  gpuTKArg_t args;
  int imageChannels;
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

  imageWidth  = gpuTKImage_getWidth(inputImage);
  imageHeight = gpuTKImage_getHeight(inputImage);
  gpuTKLog(TRACE, "The image is of size ", imageHeight, " x ", imageWidth);

  // For this lab the value is always 3
  imageChannels = gpuTKImage_getChannels(inputImage);

  // Since the image is monochromatic, it only contains one channel
  outputImage = gpuTKImage_new(imageWidth, imageHeight, 1);

  hostInputImageData  = gpuTKImage_getData(inputImage);
  hostOutputImageData = gpuTKImage_getData(outputImage);

  gpuTKTime_start(GPU, "Doing GPU Computation (memory + compute)");
  const size_t inputImageBytes = static_cast<size_t>(imageWidth) * imageHeight * imageChannels * sizeof(float);
  const size_t outputImageBytes = static_cast<size_t>(imageWidth) * imageHeight * sizeof(float);
  gpuTKTime_start(GPU, "Doing GPU memory allocation");
  gpuTKCheck(cudaMalloc((void **) &deviceInputImageData, inputImageBytes));
  gpuTKCheck(cudaMalloc((void **) &deviceOutputImageData, outputImageBytes));
  gpuTKTime_stop(GPU, "Doing GPU memory allocation");

  gpuTKTime_start(Copy, "Copying data to the GPU");
  gpuTKCheck(cudaMemcpy(deviceInputImageData, hostInputImageData,
                inputImageBytes, cudaMemcpyHostToDevice));
  gpuTKTime_stop(Copy, "Copying data to the GPU");

  ///////////////////////////////////////////////////////
  gpuTKTime_start(Compute, "Doing the computation on the GPU");
  //@@ INSERT CODE HERE
  // TODO perf check
  dim3 blockSize(16, 16);
  dim3 numBlocks((imageWidth + blockSize.x - 1) / blockSize.x, 
                 (imageHeight + blockSize.y - 1) / blockSize.y);
               
  imageColorToGrayscale<<<numBlocks, blockSize>>>(deviceInputImageData, deviceOutputImageData, 
                                                  imageWidth, imageHeight);
  gpuTKCheck(cudaGetLastError());
  gpuTKCheck(cudaDeviceSynchronize());                                                   
  gpuTKTime_stop(Compute, "Doing the computation on the GPU");

  ///////////////////////////////////////////////////////
  gpuTKTime_start(Copy, "Copying data from the GPU");
  gpuTKCheck(cudaMemcpy(hostOutputImageData, deviceOutputImageData,
                outputImageBytes, cudaMemcpyDeviceToHost));
  gpuTKTime_stop(Copy, "Copying data from the GPU");

  gpuTKTime_stop(GPU, "Doing GPU Computation (memory + compute)");

  gpuTKSolution(args, outputImage);

  gpuTKCheck(cudaFree(deviceInputImageData));
  gpuTKCheck(cudaFree(deviceOutputImageData));

  gpuTKImage_delete(outputImage);
  gpuTKImage_delete(inputImage);

  return 0;
}
