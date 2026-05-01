@16x16x3 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Convolution/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Convolution_Template \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input0.ppm,$dataset_dir/input1.raw" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.162249 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.64018 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.14029 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.055153 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.10154 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 128 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.161479 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.64305 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.12564 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.088484 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.1205 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.170578 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.67295 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.13994 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.097026 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.18345 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 5 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.157095 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.6467 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.1343 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.020256 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.0592 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 3 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.152492 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.62671 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.13654 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.020044 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.03763 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 228 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.179838 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.66756 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.13004 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.262883 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.34296 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 28 x 12 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.159125 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 1.66642 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.13975 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 0.021184 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 3.08856 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 1024 x 1024 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.262123 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 2.67311 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 1.30925 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 7.56773 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 11.9232 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4096 x 4096 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.716434 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 22.3159 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 3.58373 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 121.218 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 147.969 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4100 x 4000 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 113-117] Elapsed time: 0.713297 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 119-123] Elapsed time: 21.5197 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 125-149] Elapsed time: 4.43183 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 151-154] Elapsed time: 116.855 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template.cu: 111-156] Elapsed time: 143.654 ms
The solution is correct
===========================================================================================
