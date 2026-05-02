@512 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Reduction/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Reduction_Template_shared \
    -e "$dataset_dir/output.raw" \
    -i "$dataset_dir/input.raw" \
    -t vector;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.243981 ms
The number of input elements in the input is 16
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.02299 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.42679 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.02244 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.026634 ms
The total is 12.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.166097 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.316351 ms
The number of input elements in the input is 64
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.96064 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41987 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.91255 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.02359 ms
The total is 48
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.137359 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.436828 ms
The number of input elements in the input is 93
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.83984 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41947 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.91716 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.02618 ms
The total is 85.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.152298 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.493849 ms
The number of input elements in the input is 112
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.75838 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41407 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.92759 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.027054 ms
The total is 95.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.161279 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 2.93887 ms
The number of input elements in the input is 1120
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.47537 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.42606 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.92457 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.027603 ms
The total is 1053
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.177173 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 3.36149 ms
The number of input elements in the input is 1233
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.05758 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.44585 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.97295 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.024531 ms
The total is 1063.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.152429 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 2.96976 ms
The number of input elements in the input is 1033
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.45793 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.4206 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.87816 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.030977 ms
The total is 947.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.15688 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 10.7656 ms
The number of input elements in the input is 4098
The number of output elements in the input is 5
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.00694 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41888 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.91745 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.026936 ms
The total is 3609.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.155114 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 10.782 ms
The number of input elements in the input is 4018
The number of output elements in the input is 4
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.97392 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.38525 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.92665 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.026182 ms
The total is 3572.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.180016 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.159806 ms
The number of input elements in the input is 1
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.13449 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.43022 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.93611 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.024978 ms
The total is 2.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.144059 ms
The solution is correct
===========================================================================================

======================================== Dataset 10 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 192.134 ms
The number of input elements in the input is 70000
The number of output elements in the input is 69
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.28548 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 0.08451 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 6.91938 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.031772 ms
The total is 62673.6
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.193433 ms
The solution is correct
============================================================================================

======================================== Dataset 11 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 2658.83 ms
The number of input elements in the input is 1000000
The number of output elements in the input is 977
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.51252 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 1.16418 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 5.86528 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.039233 ms
The total is 901935
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.263551 ms
The solution is correct
============================================================================================