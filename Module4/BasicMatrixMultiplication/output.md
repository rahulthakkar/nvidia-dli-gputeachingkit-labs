@16x16 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in ./MatrixMultiplication/Dataset/*; do
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
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 0.422889 ms
The dimensions of A are 16 x 16
The dimensions of B are 16 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.173254 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.037249 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.92851 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.024307 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.138961 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 2.20493 ms
The dimensions of A are 64 x 64
The dimensions of B are 64 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.175706 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.041556 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.73372 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.025393 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.110948 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 3.44115 ms
The dimensions of A are 64 x 128
The dimensions of B are 128 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.138028 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.041617 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.40594 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.020505 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.090281 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 1.29823 ms
The dimensions of A are 112 x 48
The dimensions of B are 48 x 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.135415 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.031559 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.38367 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.021946 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.086176 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 3.50072 ms
The dimensions of A are 84 x 84
The dimensions of B are 84 x 84
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.259501 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.061095 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 2.10473 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.028587 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.117271 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 4.84108 ms
The dimensions of A are 80 x 99
The dimensions of B are 99 x 128
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.18894 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.060396 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.76558 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.026914 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.112777 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 1.9361 ms
The dimensions of A are 67 x 53
The dimensions of B are 53 x 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.179567 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.03863 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.81814 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.031954 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.117787 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 3.30208 ms
The dimensions of A are 29 x 117
The dimensions of B are 117 x 85
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.182323 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.045391 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.77038 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.024616 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.117775 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 40-55] Elapsed time: 2.48376 ms
The dimensions of A are 191 x 19
The dimensions of B are 19 x 241
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 60-65] Elapsed time: 0.186006 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 67-71] Elapsed time: 0.03934 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 77-85] Elapsed time: 1.73213 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 87-90] Elapsed time: 0.166261 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module4/BasicMatrixMultiplication/template.cu: 92-97] Elapsed time: 0.123263 ms
The solution is correct
===========================================================================================
