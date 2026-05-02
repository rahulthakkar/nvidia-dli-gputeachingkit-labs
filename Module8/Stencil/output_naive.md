@8x8x8 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Stencil/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Stencil_Template_naive \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the array are 1024 x 1024 x 4
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 2.37841 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 1.6001 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 5.46888 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 10.177 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the array are 2048 x 1024 x 5
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 0.660221 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 4.87661 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 6.47594 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 26.0025 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the array are 9 x 1023 x 1048
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 1.63518 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 4.71861 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 6.57071 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 24.0711 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the array are 1022 x 1023 x 8
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 0.789569 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 3.68901 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 5.51915 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 20.9558 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the array are 1012 x 10 x 1023
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 1.28461 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 4.65491 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 4.61671 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 25.4333 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the array are 9 x 1003 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 2.39866 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 4.00299 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 5.20997 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 19.5047 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the array are 1021 x 6 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 1.5131 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 3.55498 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 5.61857 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 19.2388 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the array are 9 x 9 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 1.9697 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 0.069367 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 4.82897 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 0.277909 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the array are 19 x 1921 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 1.9142 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 20.2762 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 6.25082 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 115.787 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the array are 512 x 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 2.00179 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 53.4246 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 10.6486 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 337.677 ms
The solution is correct
===========================================================================================

======================================== Dataset 10 ========================================
The dimensions of the array are 1000 x 65 x 500
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 67-70] Elapsed time: 2.16788 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 72-74] Elapsed time: 13.948 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 76-80] Elapsed time: 6.0584 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_naive.cu: 82-84] Elapsed time: 81.9534 ms
The solution is correct
============================================================================================
