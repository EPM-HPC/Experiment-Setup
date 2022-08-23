

all: microbench-oo-vfunc-test microbench-tensor-core-test

microbench-oo-vfunc-test: oo-vfunc-test.cu
	nvcc -arch=sm_80 -O0 -Xcompiler -O0 -Xptxas -O0 oo-vfunc-test.cu -o microbench-oo-vfunc-test


microbench-tensor-core-test: tensorcore_test.cu
	nvcc -arch=sm_80 -O0 -Xcompiler -O0 -Xptxas -O0 tensorcore_test.cu -o microbench-tensor-core-test
