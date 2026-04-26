@16x16 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./TiledMatrixMultiplication/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./BasicMatrixMultiplication_Template \
    -e "$dataset_dir/output.raw" \
    -i "$dataset_dir/input0.raw,$dataset_dir/input1.raw" \
    -t matrix;

  echo "$footer";
done
```


======================================== Dataset 0 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 0.390825 ms
The dimensions of A are 16 x 16
The dimensions of B are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.163516 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.036638 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.76236 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.022802 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.110269 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 2.25604 ms
The dimensions of A are 64 x 64
The dimensions of B are 64 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.167139 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.042788 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.73077 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.02562 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.109183 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 4.02492 ms
The dimensions of A are 64 x 128
The dimensions of B are 128 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 2.83863 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.057125 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.78261 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.025397 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 1.45987 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 1.88504 ms
The dimensions of A are 112 x 48
The dimensions of B are 48 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.556877 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.037005 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 2.05862 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.022671 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.292243 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 3.50855 ms
The dimensions of A are 84 x 84
The dimensions of B are 84 x 84
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.186967 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.046748 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.83924 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.026379 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.11524 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 4.82923 ms
The dimensions of A are 80 x 99
The dimensions of B are 99 x 128
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.178639 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.054026 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.71305 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.030456 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.111185 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 1.94546 ms
The dimensions of A are 67 x 53
The dimensions of B are 53 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.209154 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.06316 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 2.03286 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.043408 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.119089 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 3.6632 ms
The dimensions of A are 29 x 117
The dimensions of B are 117 x 85
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 1.10607 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.057954 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 2.44174 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.030274 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.891472 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 3.29491 ms
The dimensions of A are 191 x 19
The dimensions of B are 19 x 241
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.221474 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 0.048265 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 1.98864 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 0.166444 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.122399 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 42-76] Elapsed time: 5103.41 ms
The dimensions of A are 4096 x 4096
The dimensions of B are 4096 x 4096
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 81-86] Elapsed time: 0.562824 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 88-92] Elapsed time: 15.7575 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 98-106] Elapsed time: 104.381 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 108-111] Elapsed time: 38.9984 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 113-118] Elapsed time: 0.415136 ms
The solution is correct