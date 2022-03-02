##############################################################################################
## RVCore (RISC-V Core Processor) vXXXX-XX-XXx        since  2018-08-07  ArchLab. TokyoTech ##
##############################################################################################
# Verilog HDL simulator
#SIM = iverilog
SIM = verilator

# General
TOPSOURCE    = testbench/top.v
OTHERSOURCE  = $(wildcard design/*.v)
BOOTIMAGE    = bin/boot.hex

FLAGS  = -DSERIAL_WCNT=2 -DNOREAL_MTIME -DSIM -DNO_SDCARD

ifdef verify
	FLAGS += -DVERIFY -DTR_BEGIN=${BEGIN} -DTR_END=${END} -DTR_FIN=${FIN}
endif

ifdef pipe
	FLAGS += -DPIPELINE
endif

ifeq (${SIM},iverilog)
	FLAGS += -o simv
endif

ifeq (${SIM},verilator)
	FLAGS += --public --top-module top --clk CLK
	FLAGS += --x-assign 0 --x-initial 0
	FLAGS += --no-threads -O2
	FLAGS += -Wno-WIDTH -Wno-UNSIGNED
	FLAGS += --exe testbench/sim.cpp --cc
	FLAGS += -Idesign
endif

.PHONY: all vex clean allclean run result
###############################################################################
all: rvcore run

rvcore: $(TOPSOURCE) $(OTHERSOURCE) $(BOOTIMAGE)
	${SIM} ${FLAGS} ${TOPSOURCE} ${OTHERSOURCE}
ifeq (${SIM},verilator)
	make -j -C obj_dir -f Vtop.mk Vtop
	cp obj_dir/Vtop simv
endif

###############################################################################
pipe:
	make pipe=1

###############################################################################
clean:
	rm -rf obj_dir
	rm -f simv
	rm -f verify.txt trace.txt diff.txt
	rm -f *.log *.jou
	rm -rf vivado/*
	rm -rf .Xil/
allclean:
	make clean
	rm -rf main.cache main.hw main.runs main.sim main.ip_user_files
	rm -rf cnn/*

resultclean:
	rm -f result/*.txt

###############################################################################
run: simv
	./simv

bit:
	mkdir -p vivado/ip
	${VIVADO} -mode batch -source build.tcl
	mv project.rpt vivado
	cp vivado/vivado.runs/impl_1/*.bit bin/
###############################################################################
# verify

VFILE = "freertos/freeRTOS_demo"
BEGIN = 0
END   = 21060555
FIN   = 21060556

trace:
#	simrv -a -m ${VFILE}.bin -t ${BEGIN} ${END} -e ${FIN}
	simrv -r -m ${VFILE}.bin -t ${BEGIN} ${END} -e ${FIN}
verify:

	make verify=1
	make run
diff:
	make clean
	make trace
	make verify
	diff -ur trace.txt verify.txt > diff.txt
