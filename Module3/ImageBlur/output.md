@32x32 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in ./ImageBlur/Dataset/*; do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./ImageBlur_Template \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The image is of shape 256 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.144171 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.058133 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.54858 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 0.177871 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 2.01642 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The image is of shape 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.146195 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.152305 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.59544 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 0.64413 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 2.63147 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The image is of shape 512 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.178018 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.097981 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.83721 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 0.379014 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 2.59739 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The image is of shape 89 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.177982 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.079417 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.57994 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 0.216855 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 2.14181 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The image is of shape 1023 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.257335 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.494101 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.98773 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 2.70491 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 5.56104 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The image is of shape 1023 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.205403 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.468211 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.68105 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 2.39713 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 4.84694 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The image is of shape 1923 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.295672 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.933919 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.99182 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 5.44527 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 8.79307 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The image is of shape 1920 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.228716 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.987148 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.65557 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 4.46152 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 7.43145 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The image is of shape 1020 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.290145 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 1.03975 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 2.11473 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 2.9767 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 6.54478 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The image is of shape 3020 x 124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 59-62] Elapsed time: 0.261635 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 64-67] Elapsed time: 0.226666 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 70-78] Elapsed time: 1.76997 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 81-84] Elapsed time: 1.0429 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template.cu: 57-86] Elapsed time: 3.42215 ms
The solution is correct
===========================================================================================