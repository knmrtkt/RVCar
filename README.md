# RVCar (RISC-V motor car)

## Installation

### Requirements

+ Xilinx Vivado : 2021.2 or later
+ Xilinx Vitis HLS : 2021.2 or later
+ Python3 : 3.8.0 or later
+ GNU C++ compiler : 9.3.0 or later
+ RISC-V GNU Cross Compiler Toolchain (--with-arch=rv32i, --with-abi=ilp32) : v11.0.0 or later
  How to install RV32I RISC-V cross compiler : https://www.arch.cs.titech.ac.jp/wk/rvcore/doku.php?id=binary
+ Verilator : 4.028 or later 
    ``` $ sudo apt install verilator ```
+ make 
    ``` $ sudo apt install make ```
+ some python modules
    ``` pip install argparse numpy onnx torch torchvision scikit-learn opencv-python pillow tqdm```

### Settings

+ set PATH of Vivido, Vitis HLS, and RISC-V toolchain.
For example,
```
$ export VIVADO=/tools/Xilinx/Vivado/2021.2/bin/vivado
$ export VITIS_HLS=/tools/Xilinx/Vitis_HLS/2021.2/bin/vitis_hls
$ export RISCV=/opt/riscv/rv32i/bin
```

+ clone the RVCar repository 
```
$ git clone https://github.com/knmrtkt/RVCar.git 
$ cd RVCar
```


## Getting started (linetrace) 

### Assemble a motor car vehicle 

+ comming soon

### Prepare a cource for linetrace

+ comming soon

### Define a CNN model

+ Define MyNet class in pytorch2hls/src/mynet.py.
 
### Train the CNN and convert Verilog files

+ dataset generation, training, quantization, convert c++ files, c++ simulation, high-level-synthesis, and verilog simulation.

```
$ cd pytorch2hls
$ make line
```

### Generate bitstream
+ Copy the verilog files to **hardware** directory and generate bitstream.
```
$ cp -rf sbox/rtl/* ../hardware/cnn/
$ cd ../hardware
$ make bit
```

### Write bitstream
+ We recommend that write the bitstream file to USB memory. (hardware/bin/nexys4ddr.bit)
+ Format an USB memory as FAT-32 and copy the bitstream file into the root directory of it, and insert the USB memory into USB connector of NexysA7 board.

### RISC-V program binary
+ Compile RISC-V program binary for linetrace.
```
$ cd ../software/linetrace
$ make
```

+ Format an micro SD card as FAT-32 and copy the RISC-V program binary file (hardware/bin/boot.bin) into the root directory of it, and insert the micro SD card into micro SD connector of NexysA7 board.

### Runnning the cource

+ Turn on the power of motor car and adjust the gain value of the camera using switch 0-7 (0-min, 255-max).

## Source code description

+ The **hardware** directory contains the RVCore system source code.

+ The **software** directory contains the FreeRTOS source codes and the demo project.

``` $ export RISCV=/home/kanamori/riscv/11.1.0/rv32i/bin ```

``` $ export VIVADO=/tools/Xilinx/Vivado/2021.2/bin/vivado ```

``` software/FreeRTOS/portable/RVCore/include/riscv-virt.h ```

``` $ export VITIS_HLS=/tools/Xilinx/Vitis_HLS/2021.2/bin/vitis_hls```

arg[0] = WE, arg[1] = start, arg[2] = resize sw, arg[3] = binarized

