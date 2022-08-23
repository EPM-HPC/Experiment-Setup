
TangoDir=/home/wwr/Desktop/EXEs/ExeTango

all: CUDA

CUDA:
	cd AlexNet;	make;	cp -r data/ $(TangoDir)AlexNet; cp AN.out $(TangoDir)AlexNet
	cd CifarNet;	make;	cp -r data/ $(TangoDir)CifarNet; cp CN.out $(TangoDir)CifarNet
	cd GRU;		make; 	cp -r data/ $(TangoDir)GRU; cp GRU.out $(TangoDir)GRU
	cd LSTM;	make;	cp -r data/ $(TangoDir)LSTM; cp LSTM.out $(TangoDir)LSTM
	cd ResNet;	make;	cp -r data/ $(TangoDir)ResNet; cp RN.out $(TangoDir)ResNet
	cd SqueezeNet;  make;   cp -r data/ $(TangoDir)SqueezeNet; cp SN.out $(TangoDir)SqueezeNet
