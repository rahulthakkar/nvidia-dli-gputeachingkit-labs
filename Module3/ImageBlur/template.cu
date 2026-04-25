#include <gputk.h>

#define BLUR_SIZE 5

//@@ INSERT CODE HERE
__global__ void imageBlur(const float* inputImageData, float* outputImageData, int width, int height) {
  int outIdy = blockDim.y * blockIdx.y + threadIdx.y;
  int outIdx = blockDim.x * blockIdx.x + threadIdx.x;

  if (outIdy < height && outIdx < width) {
    float out = 0.f;
    int count = 0;
    for (int i = -BLUR_SIZE; i <= BLUR_SIZE; ++i) {
      int inIdy = outIdy + i;     
      for (int j = -BLUR_SIZE; j <= BLUR_SIZE; ++j) {
        int inIdx = outIdx + j;
        if (0 <= inIdy && inIdy < height && 0 <= inIdx && inIdx < width) {
          out += inputImageData[inIdy * width + inIdx];
          count += 1;
        }
      }
    }
    outputImageData[outIdy * width + outIdx] = out / count;
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
  dim3 blockSize(32, 32);
  dim3 gridSize((imageWidth + blockSize.x - 1) / blockSize.x,
                (imageHeight + blockSize.y - 1) / blockSize.y);
  // TODO Try shared memory or seperable horizontal and vertical blurs for optimization              
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
