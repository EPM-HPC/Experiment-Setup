CUOPTS = -arch=sm_80 -O0 -Xcompiler -O0 -Xptxas -O0


CC := nvcc

INCLUDE := 
LIB := 

SRC = atomic_add_lat.cu

EXE = atomic_add_lat

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
