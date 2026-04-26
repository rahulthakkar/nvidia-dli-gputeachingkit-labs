@16x16 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./TiledMatrixMultiplication/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./TiledMatrixMultiplication_Template \
    -e "$dataset_dir/output.raw" \
    -i "$dataset_dir/input0.raw,$dataset_dir/input1.raw" \
    -t matrix;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 0.406674 ms
The dimensions of A are 16 x 16
The dimensions of B are 16 x 16
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.181792 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.044103 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 1.82395 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.022223 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.120279 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 2.2121 ms
The dimensions of A are 64 x 64
The dimensions of B are 64 x 64
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.1737 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.046279 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 1.90793 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.025441 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.131659 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 4.06541 ms
The dimensions of A are 64 x 128
The dimensions of B are 128 x 64
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 2.51286 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.063561 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 3.06515 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.025303 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 5.17708 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 1.89266 ms
The dimensions of A are 112 x 48
The dimensions of B are 48 x 16
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.892766 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.045505 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 2.57104 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.022383 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.480317 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 3.48947 ms
The dimensions of A are 84 x 84
The dimensions of B are 84 x 84
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.192028 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.055764 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 1.87161 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.02683 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.119968 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 4.8224 ms
The dimensions of A are 80 x 99
The dimensions of B are 99 x 128
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.18475 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.060772 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 1.78268 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.030532 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.122167 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 2.00462 ms
The dimensions of A are 67 x 53
The dimensions of B are 53 x 64
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.181147 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.04564 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 1.88971 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.032447 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.135645 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 3.28996 ms
The dimensions of A are 29 x 117
The dimensions of B are 117 x 85
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.590008 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.053871 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 2.3942 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.025619 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.320484 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 6.94348 ms
The dimensions of A are 191 x 19
The dimensions of B are 19 x 241
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.42948 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 0.078919 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 4.13927 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 0.346315 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.243507 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 65-99] Elapsed time: 5223.11 ms
The dimensions of A are 4096 x 4096
The dimensions of B are 4096 x 4096
The dimensions of tiles are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 105-110] Elapsed time: 0.916569 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 112-116] Elapsed time: 14.057 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 122-130] Elapsed time: 72.3052 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 132-135] Elapsed time: 33.464 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/TiledMatrixMultiplication/template.cu: 137-142] Elapsed time: 0.40794 ms
The solution is correct
===========================================================================================