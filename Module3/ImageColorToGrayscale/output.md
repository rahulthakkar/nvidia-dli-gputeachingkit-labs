@16x16 Block size - A100 80GB MIG 4g.40gb

```
for dataset_dir in ./ImageColorToGrayscale/Dataset/*; do
  dataset_id=$(basename "$dataset_dir");
  line=$(printf '=%.0s' {1..40});
  header="${line} Dataset ${dataset_id} ${line}";
  width=${#header};
  footer=$(printf '=%.0s' $(seq 1 "$width"));

  echo -e "\n${header}";

  ./ImageColorToGrayscale_Template \
    -e "$dataset_dir/output.pbm" \
    -i "$dataset_dir/input.ppm" \
    -t image;

  echo "$footer";
done
```

======================================== Dataset 0 ========================================
The image is of size 256 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.17652 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 0.143988 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.82686 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 0.202054 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 2.45989 ms
The solution is correct
===========================================================================================

======================================== Dataset 1 ========================================
The image is of size 512 x 512
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.220712 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 0.365287 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.49755 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 0.27958 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 2.45264 ms
The solution is correct
===========================================================================================

======================================== Dataset 2 ========================================
The image is of size 512 x 256
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.181216 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 0.214443 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.68502 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 0.430994 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 2.62739 ms
The solution is correct
===========================================================================================

======================================== Dataset 3 ========================================
The image is of size 89 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.180668 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 0.164882 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.74673 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 0.27195 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 2.48063 ms
The solution is correct
===========================================================================================

======================================== Dataset 4 ========================================
The image is of size 1023 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.219438 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 1.39977 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.53883 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 2.15942 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 5.41848 ms
The solution is correct
===========================================================================================

======================================== Dataset 5 ========================================
The image is of size 1023 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.280927 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 1.51855 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.8597 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 2.84106 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 6.62353 ms
The solution is correct
===========================================================================================

======================================== Dataset 6 ========================================
The image is of size 1923 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.332429 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 2.77861 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.60268 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 4.38507 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 9.20972 ms
The solution is correct
===========================================================================================

======================================== Dataset 7 ========================================
The image is of size 1920 x 1124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.392069 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 2.90863 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.78926 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 4.63608 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 9.84909 ms
The solution is correct
===========================================================================================

======================================== Dataset 8 ========================================
The image is of size 1020 x 1024
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.261025 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 1.29651 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.70614 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 2.59126 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 5.98853 ms
The solution is correct
===========================================================================================

======================================== Dataset 9 ========================================
The image is of size 3020 x 124
[TIME][GPU][Doing GPU memory allocation][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 52-55] Elapsed time: 0.221976 ms
[TIME][Copy][Copying data to the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 57-60] Elapsed time: 0.488255 ms
[TIME][Compute][Doing the computation on the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 63-74] Elapsed time: 1.53895 ms
[TIME][Copy][Copying data from the GPU][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 77-80] Elapsed time: 0.426478 ms
[TIME][GPU][Doing GPU Computation (memory + compute)][/home/eagle/rahul/gpu/nvidia-dli-gputeachingkit-labs/Module3/ImageColorToGrayscale/template.cu: 49-82] Elapsed time: 2.77345 ms
The solution is correct
===========================================================================================