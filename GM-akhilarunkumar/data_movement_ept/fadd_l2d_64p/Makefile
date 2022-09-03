#
# Copyright 2011-2015 NVIDIA Corporation. All rights reserved
#
INCLUDES=
export LD_LIBRARY_PATH=/opt/cuda/lib:/opt/cuda/lib64:$LD_LIBRARY_PATH
LIBS= -lcuda


BIN_DIR=/home/wwr/Desktop/EXEs/ExeGM-akhi-DM3

ARCH = 80
FLAGS_NV= -arch=sm_80

SRCS = $(wildcard *.cu)
PROGS = $(patsubst %.cu,%.out,$(SRCS))
PTXS = $(patsubst %.cu,%.ptx,$(SRCS))

all: $(PROGS)

ptx: $(PTXS)

%.out: %.cu
	nvcc $(FLAGS_NV) -O0 -Xcompiler -O0 -Xptxas -O0 -o $@ $< $(LIBS)

%.ptx: %.cu
	nvcc $(FLAGS_NV) -O0 -Xcompiler -O0 -Xptxas -O0 -ptx -o $@ $< $(LIBS)


copy: $(PROGS)
	cp $(PROGS) $(BIN_DIR)



clean:
	rm -f  $(PROGS) *.ptx *.cubin
