@32x10x3 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Convolution/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Convolution_Template_non_square_tile \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input0.ppm,$dataset_dir/input1.raw" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.164152 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.7732 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.14938 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.056614 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.25431 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 128 x 64 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.132635 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.41407 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.11396 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.070444 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 2.81122 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.162159 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.79018 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.14153 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.094769 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.29719 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 5 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.16945 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.77027 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.13915 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.021118 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.20417 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 64 x 3 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.145644 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.74433 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.13611 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.020492 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.15306 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 228 x 128 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.167912 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.76705 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.14139 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.257317 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.44435 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 28 x 12 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.149874 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 1.75559 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.13549 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 0.020871 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 3.17238 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 1024 x 1024 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.271847 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 3.14318 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 1.27582 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 7.5403 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 12.351 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4096 x 4096 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.723226 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 25.8455 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 2.97365 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 116.516 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 146.206 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the mask are 5 x 5
The dimensions of the image are 4100 x 4000 x 3
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 111-115] Elapsed time: 0.69594 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 117-121] Elapsed time: 25.1099 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 123-141] Elapsed time: 3.8533 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 143-146] Elapsed time: 113.712 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Convolution/template_non_square_tile.cu: 109-148] Elapsed time: 143.515 ms
The solution is correct
===========================================================================================
