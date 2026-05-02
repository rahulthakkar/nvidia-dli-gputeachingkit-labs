#include <gputk.h>

constexpr int TILE_SIZE = 8;
constexpr int HALO_RADIUS = 1;
constexpr int TILE_HALO_SIZE = TILE_SIZE + 2 * HALO_RADIUS;

__device__ __forceinline__ float clamp(float x, float start, float end) {
  return fminf(fmaxf(x, start), end);
}

__global__ void stencil(float* __restrict__ output, const float* __restrict__ input, 
                        int width, int height, int depth) {
  int outK = blockDim.x * blockIdx.x + threadIdx.x;
  int outJ = blockDim.y * blockIdx.y + threadIdx.y;
  int outI = blockDim.z * blockIdx.z + threadIdx.z;

  __shared__ float tile[TILE_HALO_SIZE][TILE_HALO_SIZE][TILE_HALO_SIZE];
  
  int linearThread = (threadIdx.z * blockDim.y + threadIdx.y) * blockDim.x + threadIdx.x;
  int stride = blockDim.z * blockDim.y * blockDim.x;
  int boundary = TILE_HALO_SIZE * TILE_HALO_SIZE * TILE_HALO_SIZE;
  for (int idx = linearThread; idx < boundary; idx += stride) {
    int i = idx / (TILE_HALO_SIZE * TILE_HALO_SIZE);
    int j = (idx - i * TILE_HALO_SIZE * TILE_HALO_SIZE) / TILE_HALO_SIZE;
    int k = (idx - i * TILE_HALO_SIZE * TILE_HALO_SIZE - j * TILE_HALO_SIZE);
    
    int inI = (blockDim.z * blockIdx.z - HALO_RADIUS + i);
    int inJ = (blockDim.y * blockIdx.y - HALO_RADIUS + j);
    int inK = (blockDim.x * blockIdx.x - HALO_RADIUS + k);

    float val = 0.f;
    if (0 <= inK && inK < depth && 0 <= inJ && inJ < width && 0 <= inI && inI < height) {
      val = input[(inI * width + inJ) * depth + inK];
    }
    tile[i][j][k] = val;
  }

  __syncthreads();

  if (0 < outK && outK < depth-1 && 0 < outJ && outJ < width-1 && 0 < outI && outI < height-1) {
    float ans = tile[threadIdx.z + HALO_RADIUS][threadIdx.y + HALO_RADIUS][threadIdx.x + HALO_RADIUS - 1] +
                tile[threadIdx.z + HALO_RADIUS][threadIdx.y + HALO_RADIUS][threadIdx.x + HALO_RADIUS + 1] +
                tile[threadIdx.z + HALO_RADIUS][threadIdx.y + HALO_RADIUS - 1][threadIdx.x + HALO_RADIUS] +
                tile[threadIdx.z + HALO_RADIUS][threadIdx.y + HALO_RADIUS + 1][threadIdx.x + HALO_RADIUS] +
                tile[threadIdx.z + HALO_RADIUS - 1][threadIdx.y + HALO_RADIUS][threadIdx.x + HALO_RADIUS] +
                tile[threadIdx.z + HALO_RADIUS + 1][threadIdx.y + HALO_RADIUS][threadIdx.x + HALO_RADIUS] -
                6.f * tile[threadIdx.z + HALO_RADIUS][threadIdx.y + HALO_RADIUS][threadIdx.x + HALO_RADIUS]; 

    output[(outI * width + outJ) * depth + outK] = clamp(ans, 0.f, 255.f);
  } 
}

static void launch_stencil(float* __restrict__  deviceOutputData, const float* __restrict__ deviceInputData,
                           int width, int height, int depth) {
  dim3 blockDim(TILE_SIZE, TILE_SIZE, TILE_SIZE);
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