CUOPTS = -arch=sm_80 -O0 -Xcompiler -O0 -Xptxas -O0

CC := nvcc

INCLUDE := 
LIB := 

SRC = mem_bw.cu

EXE = mem_bw

NVCC_FLGAS = -Xptxas -dlcm=cg -Xptxas -dscm=wt

release:
	$(CC) $(NVCC_FLGAS)  $(CUOPTS) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(LIB) -lcudart

run:
	./$(EXE)

profile:
	nvprof ./$(EXE)

profileall:
	nvprof --concurrent-kernels off --print-gpu-trace -u us --metrics all --demangling off --csv --log-file data.csv ./$(EXE)

events:
	nvprof  --events elapsed_cycles_sm ./$(EXE)
