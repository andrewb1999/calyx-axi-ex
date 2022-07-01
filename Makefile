MODE=hw_emu
DEVICE=xilinx_u280_xdma_201920_3

all: build/kernel.xclbin

build:
	mkdir -p build

build/kernel.xo: build src/kernel.xml
	cp src/* build/
	cd build && vivado -mode batch -source ../src/gen_xo.tcl -tclargs kernel.xo m0_axi m1_axi m2_axi

build/kernel.xclbin: build/kernel.xo
	v++ -g -t $(MODE) --config design.cfg --platform $(DEVICE) --save-temps --profile.data all:all:all --profile.exec all:all:all -lo build/kernel.xclbin build/kernel.xo

clean:
	rm -rf build
