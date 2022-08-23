ARCH := -arch=sm_80
NVCC_FLAGS += -w -Xptxas -O3

CUFILE = SN.cu
EXECUTABLE = SN.out

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o ${EXECUTABLE} 
clean:
	rm -f *~ *.out
