.PHONY: clean vsim csim mnist line mix road movie

all: csim vsim

# work dir
WORK_DIR = sbox

DATASET_TYPE=mnist

MOVIE_DIR = movie
MOVIE_PKL = $(WORK_DIR)/movie.pkl
$(MOVIE_PKL): src/gen_pkl/gen_movie_pkl.py
	python3 src/gen_pkl/gen_movie_pkl.py --img-size=$(IMAGE_WIDTH) --dir-path=$(MOVIE_DIR) --pkl-name=$(MOVIE_PKL)

LINE_PKL = $(WORK_DIR)/line.pkl
$(LINE_PKL): src/gen_pkl/gen_line_pkl.py
	python3 src/gen_pkl/gen_line_pkl.py --img-num=${IMG_NUM} --pkl-name=${LINE_PKL}

MNIST_PKL = $(WORK_DIR)/mnist.pkl
#MNIST_OPT = --augment
$(MNIST_PKL): src/gen_pkl/gen_mnist_pkl.py
	python3 src/gen_pkl/gen_mnist_pkl.py ${MASK_MNIST_LABELS} ${MNIST_OPT} --img-num=${IMG_NUM} --pkl-name=${MNIST_PKL} --indexs $(MASK_MNIST_INDEXS)

ROAD_PKL = $(WORK_DIR)/road.pkl
$(ROAD_PKL): src/gen_pkl/gen_road_pkl.py
	python3 src/gen_pkl/gen_road_pkl.py --img-num=${IMG_NUM} --pkl-name=${ROAD_PKL}

# dataset type
mnist:
	make DATASET_TYPE=mnist all

line:
	make DATASET_TYPE=line all

mix:
	make DATASET_TYPE=mix all

road:
	make DATASET_TYPE=road all

movie:
	make DATASET_TYPE=movie all

# MNIST config
ifeq ($(DATASET_TYPE), mnist)
PKLS = $(MNIST_PKL)
IMG_NUM = 1000000
MASK_MNIST_LABELS = 0 1 2 3 4 5 6 7 8 9

# Linetrace config
else ifeq ($(DATASET_TYPE), line)
PKLS = $(LINE_PKL)
IMG_NUM = 20000

# MNIST and Linetrace config
else ifeq ($(DATASET_TYPE), mix)
PKLS = $(LINE_PKL) $(MNIST_PKL)
IMG_NUM = 20000
MASK_MNIST_LABELS = 0 3
MASK_MNIST_INDEXS = 3 4

# Roadtrace config
else ifeq ($(DATASET_TYPE), road)
PKLS = $(ROAD_PKL)
IMG_NUM = 20000

# generate dataset from movie
else ifeq ($(DATASET_TYPE), movie)
PKLS = $(MOVIE_PKL)

else

endif

# generate dataset
DATASET_NAME = $(WORK_DIR)/$(DATASET_TYPE).pkl
IMAGE_CHANNEL = 1
IMAGE_WIDTH = 32
IMAGE_HEIGHT = 32
DATASET_DEPEND = $(PKLS)

# training
epochs = 10
batch_size = 256
SEED = 42

# quantization
quant_bit_size = 8
int_bit_size = $(quant_bit_size)

# translate for HLS code
WEIGHT_H = $(WORK_DIR)/weight.h
KERNEL_CPP = $(WORK_DIR)/kernel.cpp
KERNEL_NAME = QuantCNN
KERNEL_FLAGS = 
#KERNEL_FLAGS+= --use-float 
#KERNEL_FLAGS+= --debug
#KERNEL_FLAGS+= --use-convolver
#KERNEL_FLAGS+= --use-stream


# generate hex data of image for sim
HEX_CSV_NAME = $(WORK_DIR)/$(DATASET_TYPE).csv
HEX_OFFSET = 0
HEX_IMAGE_NUM = 100

$(WEIGHT_H) $(KERNEL_CPP) $(HEX_CSV_NAME): src/pytorch2hls.py $(DATASET_DEPEND) src/layer.h
	python3 src/pytorch2hls.py --pkls $(PKLS) --height=$(IMAGE_HEIGHT) --width=$(IMAGE_WIDTH) --channel=$(IMAGE_CHANNEL) \
	--epochs=$(epochs) --batch-size=$(batch_size) --frac-bits=${quant_bit_size} --int-bits=$(int_bit_size) \
	--weight-file-name=$(WEIGHT_H) --kernel-file-name=$(KERNEL_CPP) --kernel-name=$(KERNEL_NAME) $(KERNEL_FLAGS) \
	--hex-num=$(HEX_IMAGE_NUM) --hex-outdir=$(WORK_DIR) --csv-file-name=$(HEX_CSV_NAME)
	cp src/layer.h $(WORK_DIR)

# CPP execution
CPP = g++
CPP_FLAGS = \
	-std=c++17 \
	-I ./src/ap_header \
    -DIMG_CHANNEL=$(IMAGE_CHANNEL) -DIMG_SIZE=$(IMAGE_HEIGHT)*$(IMAGE_WIDTH) -DKERNEL=$(KERNEL_NAME)

#CPP_FLAGS += -fopenmp
CPP_SOUECE = $(KERNEL_CPP) src/csim_top.cpp
CPP_PROG = $(WORK_DIR)/sim_cpp

csim: $(HEX_CSV_NAME) $(CPP_PROG) $(CPP_SOUECE)
	./$(CPP_PROG) $(HEX_CSV_NAME)

$(CPP_PROG): $(WEIGHT_H) $(KERNEL_CPP)
	$(CPP) $(CPP_FLAGS) $(CPP_SOUECE) -o $(CPP_PROG)

# HLS

HDL_DIR = $(WORK_DIR)/rtl

hls:
	rm -rf $(HDL_DIR)/
	make $(HDL_DIR)/

$(HDL_DIR)/: $(WEIGHT_H) $(KERNEL_CPP) src/build.tcl
	rm -rf $(WORK_DIR)/mynet_hls
	$(VITIS_HLS) src/build.tcl -tclargs $(KERNEL_CPP) $(WEIGHT_H) $(WORK_DIR) $(HDL_DIR) $(KERNEL_NAME)
	rm -rf $(HDL_DIR)
	cp -rf $(WORK_DIR)/mynet_hls/soulution1/syn/verilog $(HDL_DIR)


# Verilog sim
VERILATOR = verilator
VERI_PROG = $(WORK_DIR)/obj_dir/V$(KERNEL_NAME)
VERI_FLAGS = -Wno-STMTDLY -Wno-WIDTH -Wno-UNSIGNED
VERI_TOP = src/verilator_top.cpp
VERI_OUTD = $(WORK_DIR)/obj_dir

vsim: $(VERI_PROG) $(HEX_CSV_NAME)
	cd $(HDL_DIR) && ./../../$(VERI_PROG) ../../$(HEX_CSV_NAME) 

VERI_SRCS = $(filter-out $(HDL_DIR)/$(KERNEL_NAME).v, $(wildcard $(HDL_DIR)/*.v))
$(VERI_PROG): $(HDL_DIR)/ $(VERI_TOP)
	$(VERILATOR) -cc $(HDL_DIR)/$(KERNEL_NAME).v $(VERI_SRCS) $(VERI_FLAGS) -exe ../../$(VERI_TOP) -Mdir $(VERI_OUTD)
	echo '#define IMG_SIZE $(IMAGE_HEIGHT)*$(IMAGE_WIDTH)' > $(VERI_OUTD)/param.h
	echo '#define IMG_NUM  $(HEX_IMAGE_NUM)' >> $(VERI_OUTD)/param.h 
	echo '#define KERNEL V$(KERNEL_NAME)' >> $(VERI_OUTD)/param.h
	echo '#include "V$(KERNEL_NAME).h"' >> $(VERI_OUTD)/param.h
	make -C $(VERI_OUTD) -f V$(KERNEL_NAME).mk

allclean:
	make clean
	rm -rf dataset/*
	rm -rf src/__pycache__

clean:
	rm -rf $(WORK_DIR)/*
	rm -rf vitis_hls.log
	rm -rf *.log *.jou
	rm -rf vivado
	rm -rf .Xil
	rm -rf *.bit
	rm -rf project.rpt