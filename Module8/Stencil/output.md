@16x16x1 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Stencil/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Stencil_Template \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the array are 1024 x 1024 x 4
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 0.832027 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 1.58547 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.46593 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 8.87856 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the array are 2048 x 1024 x 5
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 1.13534 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 4.26431 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 4.96113 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 21.7761 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the array are 9 x 1023 x 1048
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 2.38713 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 4.42804 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.07804 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 24.5036 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the array are 1022 x 1023 x 8
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 1.22405 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 3.59783 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.65659 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 17.3573 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the array are 1012 x 10 x 1023
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 2.26022 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 4.39172 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.09549 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 21.7525 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the array are 9 x 1003 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 2.12391 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 3.92862 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.59426 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 19.0176 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the array are 1021 x 6 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 1.41028 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 3.40982 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 5.92728 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 19.1926 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the array are 9 x 9 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 1.89578 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 0.084825 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 4.80138 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 0.342906 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the array are 19 x 1921 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 3.04387 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 21.4648 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 11.3644 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 114.976 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the array are 512 x 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 2.93003 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 54.3036 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 29.4431 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 275.334 ms
The solution is correct
===========================================================================================

======================================== Dataset 10 ========================================
The dimensions of the array are 1000 x 65 x 500
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 98-102] Elapsed time: 3.03644 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 104-106] Elapsed time: 14.1141 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 108-112] Elapsed time: 7.47185 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template.cu: 114-116] Elapsed time: 90.4238 ms
The solution is correct
============================================================================================