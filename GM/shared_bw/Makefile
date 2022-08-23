CUOPTS = -arch=sm_80 -O0 -Xcompiler -O0 -Xptxas -O0


CC := nvcc

INCLUDE := 
LIB := 

SRC = shared_bw.cu

EXE = shared_bw

NVCC_FLGAS = -Xptxas -dlcm=cv -Xptxas -dscm=wt

release:
	$(CC) $(NVCC_FLGAS) $(CUOPTS) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(LIB) -lcudart

run:
	./$(EXE)

profile:
	nvprof ./$(EXE)

events:
	nvprof  --events elapsed_cycles_sm ./$(EXE)
