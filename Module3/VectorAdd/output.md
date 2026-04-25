@256 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in ./VectorAdd/Dataset/*; do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./VectorAdd_Template \
    -e "$dataset_dir/output.raw" \
    -i "$dataset_dir/input0.raw,$dataset_dir/input1.raw" \
    -t vector;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 0.231288 ms
The input length is 16
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.130725 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.031431 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.48336 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.017973 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.100965 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 0.599641 ms
The input length is 64
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.169992 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.03193 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.77742 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.021743 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.128096 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 0.777142 ms
The input length is 93
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.166823 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.032943 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.95745 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.022703 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.123089 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 1.05005 ms
The input length is 112
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.160908 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.031741 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.74121 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.022995 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.122852 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 7.21135 ms
The input length is 1120
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.180778 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.035102 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.74547 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.022576 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.124918 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 62.567 ms
The input length is 9921
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.284105 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.060255 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.85029 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.03035 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.133746 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 7.93843 ms
The input length is 1233
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.190598 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.039295 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.79129 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.023287 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.128658 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 6.71579 ms
The input length is 1033
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.192341 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.043714 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 2.07986 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.023185 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.143762 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 26.0409 ms
The input length is 4098
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.286296 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.04756 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.8426 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.02555 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.135136 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
[TIME][Generic][Importing data and creating memory on host][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 23-30] Elapsed time: 26.1549 ms
The input length is 4018
[TIME][GPU][Allocating GPU memory.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 34-39] Elapsed time: 0.287541 ms
[TIME][GPU][Copying input memory to the GPU.][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 41-45] Elapsed time: 0.043492 ms
[TIME][Compute][Performing CUDA computation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 52-58] Elapsed time: 1.83413 ms
[TIME][Copy][Copying output memory to the CPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 60-63] Elapsed time: 0.026286 ms
[TIME][GPU][Freeing GPU Memory][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/VectorAdd/template.cu: 65-70] Elapsed time: 0.132765 ms
The solution is correct
===========================================================================================