#
# Copyright 2011-2015 NVIDIA Corporation. All rights reserved
#
INCLUDES=
export LD_LIBRARY_PATH=/opt/cuda/lib:/opt/cuda/lib64:$LD_LIBRARY_PATH
LIBS= -lcuda


BIN_DIR =/home/wwr/Desktop/EXEs/ExeGM-akhi-CE
ARCH = 80
FLAGS_NV= -gencode=arch=compute_$(ARCH),code=compute_$(ARCH)

SRCS = $(wildcard *.cu)
PROGS = $(patsubst %.cu,%,$(SRCS))
PTXS = $(patsubst %.cu,%.ptx,$(SRCS))

all: $(PROGS)

ptx: $(PTXS)

%: %.cu
	nvcc $(FLAGS_NV) -O0 -Xcompiler -O0 -Xptxas -O0  -o $@ $< $(LIBS)

%.ptx: %.cu
	nvcc $(FLAGS_NV) -O0 -Xcompiler -O0 -Xptxas -O0 -ptx -o $@ $< $(LIBS)


#cp $(PROGS) $(BIN_DIR)

clean:
	rm -f  $(PROGS) *.ptx *.cubin
