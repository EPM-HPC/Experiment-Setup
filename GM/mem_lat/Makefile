CUOPTS = -arch=sm_80


CC := nvcc

INCLUDE := 
LIB := 

SRC = mem_lat.cu

EXE = mem_lat

NVCC_FLGAS = -Xptxas -dlcm=cv -Xptxas -dscm=wt

release:
	$(CC) $(NVCC_FLGAS) $(CUOPTS) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(LIB) -lcudart

run:
	./$(EXE)

profile:
	nvprof ./$(EXE)

events:
	nvprof  --events elapsed_cycles_sm ./$(EXE)
