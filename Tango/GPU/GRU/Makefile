ARCH := -arch=sm_80
NVCC_FLAGS += -Xptxas -O3

CUFILE = gru_host.cu
EXECUTABLE = GRU.out

all:
	nvcc $(NVCC_FLAGS) $(ARCH) ${CUFILE} -o ${EXECUTABLE} 
clean:
	rm -f *~ *.out
