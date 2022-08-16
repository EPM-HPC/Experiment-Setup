CUOPTS = -arch=sm_80


CC := nvcc

INCLUDE := 
LIB := 

SRC = l1_bw_128.cu

EXE = l1_bw_128

release:
	$(CC) $(CUOPTS) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(LIB) -lcudart

run:
	./$(EXE)

profile:
	nvprof ./$(EXE)

events:
	nvprof  --events elapsed_cycles_sm ./$(EXE)
