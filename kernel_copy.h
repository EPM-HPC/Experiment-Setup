#ifndef __KERNEL_COPY
#define __KERNEL_COPY

#include <cuda.h>

#define NUM_ITER 50

#define wrapper_kernel_begin  for(int kernel_run_time=0; kernel_run_time<NUM_ITER;kernel_run_time++){

#define wrapper_kernel_end    cudaDeviceSynchronize();}






#endif

