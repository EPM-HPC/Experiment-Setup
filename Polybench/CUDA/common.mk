# Compiler-specific flags (by default, we always use sm_10, sm_20, and sm_30), unless we use the SMVERSION template


CUDA_BIN_DIR :=  /home/wwr/Desktop/EXEs/PolybenchExe


all:
	nvcc -O3 -gencode=arch=compute_80,code=sm_80 -gencode=arch=compute_80,code=compute_80 ${NVCC_ADDITIONAL_ARGS} ${CUFILES} -o ${EXECUTABLE} ${LINK_FLAG}; cp ${EXECUTABLE} ${CUDA_BIN_DIR}
	 

clean:
	rm -f *~ *.out *.exe
