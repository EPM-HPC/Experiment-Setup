ARCH := -arch=sm_80
NVCC_FLAGS += -Xptxas -O3

CUFILE = CN_cuda.cu
EXECUTABLE = CN.out

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o ${EXECUTABLE} 
clean:
	rm -f *~ *.out
