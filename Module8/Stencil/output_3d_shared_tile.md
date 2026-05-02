@8x8x8 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in $(ls -d ./Stencil/Dataset/* | sort -V); do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./Stencil_Template_3d_shared_tile \
    -e "$dataset_dir/output.ppm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The dimensions of the array are 1024 x 1024 x 4
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 2.05327 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 1.94908 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 5.17387 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 10.2574 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The dimensions of the array are 2048 x 1024 x 5
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 3.29876 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 4.81281 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 6.71452 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 26.6009 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The dimensions of the array are 9 x 1023 x 1048
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 0.78078 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 4.3012 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 5.09746 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 24.0931 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The dimensions of the array are 1022 x 1023 x 8
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 0.807686 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 3.37915 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 5.89844 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 17.2756 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The dimensions of the array are 1012 x 10 x 1023
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 1.4146 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 4.43094 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 4.99534 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 25.2445 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The dimensions of the array are 9 x 1003 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 2.10943 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 4.05845 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 5.32559 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 22.6846 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The dimensions of the array are 1021 x 6 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 2.63652 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 3.28653 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 5.98869 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 20.4075 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The dimensions of the array are 9 x 9 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 1.92251 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 0.080209 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 4.80335 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 0.276856 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The dimensions of the array are 19 x 1921 x 1241
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 1.45298 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 18.9105 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 6.03082 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 114.937 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The dimensions of the array are 512 x 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 2.75908 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 57.6468 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 11.299 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 339.569 ms
The solution is correct
===========================================================================================

======================================== Dataset 10 ========================================
The dimensions of the array are 1000 x 65 x 500
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 95-98] Elapsed time: 1.55145 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 100-102] Elapsed time: 13.48 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 104-108] Elapsed time: 6.90434 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module8/Stencil/template_3d_shared_tile.cu: 110-112] Elapsed time: 80.66 ms
The solution is correct
============================================================================================

