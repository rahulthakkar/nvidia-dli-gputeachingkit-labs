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
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.210971 ms
The number of input elements in the input is 16
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.02511 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41988 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.02645 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.035996 ms
The total is 12.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.200446 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.349611 ms
The number of input elements in the input is 64
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.92274 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.42835 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.04652 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.027923 ms
The total is 48
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.183313 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.511772 ms
The number of input elements in the input is 93
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.72047 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41388 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.04348 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.043377 ms
The total is 85.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.276097 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.489203 ms
The number of input elements in the input is 112
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.73445 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.44471 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.93517 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.031506 ms
The total is 95.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.181741 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 3.07815 ms
The number of input elements in the input is 1120
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.26802 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.42317 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.92955 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.027869 ms
The total is 1053
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.16454 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 3.23226 ms
The number of input elements in the input is 1233
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.12524 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.42079 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.93671 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.028352 ms
The total is 1063.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.158646 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 2.94558 ms
The number of input elements in the input is 1033
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.36124 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.40598 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.03395 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.037694 ms
The total is 947.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.207181 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 10.835 ms
The number of input elements in the input is 4098
The number of output elements in the input is 5
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 1.90164 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.41852 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.94254 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.027608 ms
The total is 3609.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.165366 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 10.6035 ms
The number of input elements in the input is 4018
The number of output elements in the input is 4
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.14311 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.45599 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 7.09024 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.032834 ms
The total is 3572.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.199287 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 50-60] Elapsed time: 0.183724 ms
The number of input elements in the input is 1
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 65-69] Elapsed time: 2.07351 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 71-74] Elapsed time: 2.3755 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 78-83] Elapsed time: 4.93141 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 85-88] Elapsed time: 0.029526 ms
The total is 2.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template_shared.cu: 103-107] Elapsed time: 0.164491 ms
The solution is correct
===========================================================================================