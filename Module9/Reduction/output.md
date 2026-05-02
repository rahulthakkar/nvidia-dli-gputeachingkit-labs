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
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.214883 ms
The number of input elements in the input is 16
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.06543 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42887 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.88197 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.027572 ms
The total is 12.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.147031 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.436326 ms
The number of input elements in the input is 64
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.80665 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.44245 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 7.09359 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.03932 ms
The total is 48
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.249004 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.541358 ms
The number of input elements in the input is 93
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 0.966487 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 0.030686 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 5.16393 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.023904 ms
The total is 85.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.165632 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.549115 ms
The number of input elements in the input is 112
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.75867 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.43447 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.9707 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.028445 ms
The total is 95.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.186576 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 2.91346 ms
The number of input elements in the input is 1120
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.47315 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.4279 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92867 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.026812 ms
The total is 1053
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.153205 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 3.40379 ms
The number of input elements in the input is 1233
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 0.935752 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42488 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92607 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.031325 ms
The total is 1063.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.200606 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 3.49984 ms
The number of input elements in the input is 1033
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 0.762628 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.41841 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.93362 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.0294 ms
The total is 947.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.186666 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 13.1803 ms
The number of input elements in the input is 4098
The number of output elements in the input is 2
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 1.43591 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.42514 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92551 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.026857 ms
The total is 3609.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.156289 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 10.4408 ms
The number of input elements in the input is 4018
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.32165 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.41801 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.94004 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.025664 ms
The total is 3572.4
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.141897 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 50-60] Elapsed time: 0.189922 ms
The number of input elements in the input is 1
The number of output elements in the input is 1
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 65-69] Elapsed time: 2.11257 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 71-74] Elapsed time: 2.41956 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 78-83] Elapsed time: 4.92019 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 85-88] Elapsed time: 0.037133 ms
The total is 2.8
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module9/Reduction/template.cu: 103-107] Elapsed time: 0.144168 ms
The solution is correct
===========================================================================================