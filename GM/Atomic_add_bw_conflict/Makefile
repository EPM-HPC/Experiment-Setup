CUOPTS = -arch=sm_80

CC := nvcc

INCLUDE := 
LIB := 

SRC = atomic_add_bw_conflict.cu

EXE = atomic_add_bw_conflict

release:
	$(CC) $(CUOPTS) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(LIB) -lcudart

clean:
	rm -f *.o; rm -f $(EXE)

run:
	./$(EXE)

profile:
	nvprof ./$(EXE)

events:
	nvprof  --events elapsed_cycles_sm ./$(EXE)
