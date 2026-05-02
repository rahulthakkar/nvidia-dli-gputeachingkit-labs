@512 Block size with coarsening factor 4 - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Reduction/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Reduction_Template \
    -e "$dataset_dir/output.raw" \
    -i "$dataset_dir/input.raw" \
    -t vector;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.181744 ms
The number of input elements in the input is 16
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.13703 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42545 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92441 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.028451 ms
The total is 12.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.145642 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.374992 ms
The number of input elements in the input is 64
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.92409 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.43187 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.94146 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.025226 ms
The total is 48
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.192922 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.504325 ms
The number of input elements in the input is 93
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.76186 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42188 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 7.04545 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.036488 ms
The total is 85.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.210912 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.457629 ms
The number of input elements in the input is 112
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.81308 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.43132 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.96413 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.036472 ms
The total is 95.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.210256 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 2.97243 ms
The number of input elements in the input is 1120
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.43382 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42867 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92667 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.030412 ms
The total is 1053
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.168778 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 3.47256 ms
The number of input elements in the input is 1233
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 0.868597 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 1.90129 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 6.7346 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.034494 ms
The total is 1063.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.210709 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 2.83804 ms
The number of input elements in the input is 1033
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.51318 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42815 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 7.03109 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.033314 ms
The total is 947.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.215494 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 10.5313 ms
The number of input elements in the input is 4098
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.24705 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.43148 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92677 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.026444 ms
The total is 3609.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.1881 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 10.7244 ms
The number of input elements in the input is 4018
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.97883 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.43066 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 7.03515 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.041494 ms
The total is 3572.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.212669 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.164071 ms
The number of input elements in the input is 1
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.10292 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42377 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.91967 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.030977 ms
The total is 2.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.154343 ms
The solution is correct
===========================================================================================

======================================== Dataset 10 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 180.918 ms
The number of input elements in the input is 70000
The number of output elements in the input is 18
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.56393 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 0.074634 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.82997 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.026597 ms
The total is 62673.6
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.165814 ms
The solution is correct
============================================================================================

======================================== Dataset 11 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 2669.27 ms
The number of input elements in the input is 1000000
The number of output elements in the input is 245
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.95893 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 0.815844 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 6.17662 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.028803 ms
The total is 901936
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.223516 ms
The solution is correct
============================================================================================