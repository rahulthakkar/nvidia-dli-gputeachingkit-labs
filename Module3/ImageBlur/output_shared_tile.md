@32x32 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in ./ImageBlur/Dataset/*; do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./ImageBlur_Template_shared_tile \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The image is of shape 256 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.209355 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.070814 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.88496 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 0.236353 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 2.52112 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The image is of shape 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.176225 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.171381 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.77285 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 0.753943 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 2.99099 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The image is of shape 512 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.150867 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.093261 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.46969 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 0.316271 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 2.11488 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The image is of shape 89 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.693095 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.073214 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.63254 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 0.210464 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 2.69409 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The image is of shape 1023 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 1.39429 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.592265 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 2.14637 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 2.69155 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 6.95129 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The image is of shape 1023 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.283244 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.593309 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.86508 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 2.88662 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 5.75434 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The image is of shape 1923 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.273871 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.931015 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 1.97813 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 5.32059 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 8.63209 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The image is of shape 1920 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.279284 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 1.07214 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 2.05131 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 5.12278 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 8.65274 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The image is of shape 1020 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 1.42207 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.559401 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 2.54033 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 2.67054 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 7.31455 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The image is of shape 3020 x 124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 80-83] Elapsed time: 0.488775 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 85-88] Elapsed time: 0.317194 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 91-99] Elapsed time: 3.39899 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 102-105] Elapsed time: 2.30868 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageBlur/template_shared_tile.cu: 78-107] Elapsed time: 6.77375 ms
The solution is correct
===========================================================================================