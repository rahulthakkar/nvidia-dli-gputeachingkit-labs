@3x16x16 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Convolution/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Convolution_Template_naive \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input0.ppm,$dataset_dir/input1.raw" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.178263 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.64116 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.13223 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.055582 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.11566 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 128 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.165404 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.6643 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.10488 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.10523 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.1429 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.177446 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.64671 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.11787 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.087255 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.13185 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 5 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.154984 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.62676 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.12768 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.021396 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.03849 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 3 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.161345 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.66261 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.13209 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.020766 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.09021 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 228 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.171432 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.64828 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.12343 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.299109 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.34807 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 28 x 12 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.170388 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 1.65807 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.12979 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 0.020604 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 3.08032 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 1024 x 1024 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.265735 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 2.68682 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 1.28111 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 7.62306 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 11.9719 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4096 x 4096 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.71981 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 22.0179 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 3.25821 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 120.957 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 147.084 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4100 x 4000 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 83-87] Elapsed time: 0.702001 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 89-93] Elapsed time: 20.579 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 95-118] Elapsed time: 3.24487 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 120-123] Elapsed time: 88.7665 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_naive.cu: 81-125] Elapsed time: 113.404 ms
The solution is correct
===========================================================================================

