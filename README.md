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
+ We recommend that write the bitstream file to USB memory. (```hardware/bin/nexys4ddr.bit```)
+ Format an USB memory as FAT-32 and copy the bitstream file into the root directory of it, and insert the USB memory into USB connector of NexysA7 board.

### RISC-V program binary
+ Compile RISC-V program binary for linetrace.
```
$ cd ../software/linetrace
$ make
```

+ Format an micro SD card as FAT-32 and copy the RISC-V program binary file (```hardware/bin/boot.bin```) into the root directory of it, and insert the micro SD card into micro SD connector of NexysA7 board.

### Runnning the cource

+ Turn on the power of motor car and adjust the gain value of the camera using switch 0-7 (0-min, 255-max).

## Simulate RVCarSoC by Verilator

+ Run FreeRTOS demo program in Verilog simulation.

```
$ cd RVCar/software/demo
$ ls
FreeRTOSConfig.h  main.c  Makefile
$ make
$ cd ../../hardware
$ make
...
./simv
Hello FreeRTOS!!
Task B is called!!
External Key
Task B is called!!
External Key
External Key
Task B is called!!
...
# ctrl + c
```

+ See the top testbench module that is ```hardware/testbench/top.v```.
```
$ less hardware/testbench/top.v
...

    reg  [22:0] r_key_cnt  = 1;

    always @(posedge CLK) begin
        r_key_cnt  <= (w_rst) ? 1 : r_key_cnt + 1;
        r_key_data <= (w_rst) ? 0 : 8'h41;
        r_key_en   <= (w_rst) ? 0 : (r_key_cnt==0) ? 1     : 0;
    end
    
    ...

    wire [31:0] w_nn_0_arg, w_nn_0_data;
    wire        w_nn_0_en;
    soc #(
        .BOOTLOADER_FILE(`BOOTLOADER_FILE),
        .START_PC(`START_PC),
        .MAINMEM_FILE(`MAINMEM_FILE),
        .MAINMEM_SIZE(`MEM_SIZE)
    )m(
        .CLK(CLK), 
        .RST(w_rst), 
        .w_txd(w_txd), 
        .p_dout(p_dout),

        .w_key_data(r_key_data), 
        .w_key_en(r_key_en), 

        .w_nn_0_data(w_nn_0_data), 
        .w_nn_0_arg(w_nn_0_arg),
        .w_nn_0_en(w_nn_0_en), 

        .w_pwm_data(pwm_data),
        .w_seg_data(),

        .w_sdcram_addr(w_sdcram_addr),
        .w_sdcram_ren(w_sdcram_ren),
        .w_sdcram_wen(w_sdcram_wen),
        .w_sdcram_wdata(w_sdcram_wdata),
        .w_sdcram_rdata(w_sdcram_rdata),
        .w_sdcram_busy(w_sdcram_busy),
        
        .V_ADDR(V_ADDR), 
        .V_WE(V_WE), 
        .V_WDATA(V_WDATA), 
        .V_RDATA(V_RDATA)
    );
...
```

+ This top module generate interrupt signal of keyboard input every 2^23 cycles.

+ RVCarSoC and FreeRTOS get and handle the interrupts, print the messages when each interruputs occur.

```
$ less software/demo/main.c
...
void TaskA(void *pvParameters)  // This is a task.
{
    (void) pvParameters;
    uint32_t key;

    EXINT *key_exint = init_EXINT(EXKEY_IRQ, 4, WASTE_OLD);

    for (;;) // A Task shall never return or exit.
    {
        get_EXINT(key_exint, &key, portMAX_DELAY, 0);
        if(key == 0x00)
        {
            vSendString("Key Q is empty\n");
        }
        else{
            vSendString("External Key\n");
        }
    }
}
...

```

+ ```init_EXINT()``` and ```get_EXINT()``` are defined in ```software/FreeRTOS/portable/RVCore/include/interrupt.h``` and implemented in ```software/FreeRTOS/portable/RVCore/interrupt.c```.

+ ```EXINT* init_EXINT(uint32_t irq_no, uint32_t queue_size, enum EXINT_Q_FULL_ACTION q_full_action)```
    The function initializes and returns pointer of ```EXINT``` type struct that is handled external interrupt handler.
    ```uint32_t irq_no``` is external interrupt source identify number. These are defined in ```software/FreeRTOS/portable/RVCore/include/riscv-virt.h```.
    ```uint32_t queue_size``` is the size of external interrupts container queue.
    ```enum EXINT_Q_FULL_ACTION q_full_action``` is type of action when the queue is full. ```WASTE_NEW``` or ```WASTE_OLD```.


+ ```BaseType_t get_EXINT(EXINT *exint, uint32_t *val_p, TickType_t delay, uint32_t arg)```
    The function gets an external interrupt which is managed ```EXINT exint``` struct.
    ```uint32_t *val_p``` is the address that stores the sent value from the interrupt source.
    ```TickType_t delay``` is the maximam wait time. If 0 is set and the queue is empty, the funtion does not wait an interrupt and returns ```pdFALSE```. If ```portMAX_DELAY``` is set and the queue is empty, the function waits forever. 
    ```uint32_t arg``` is argument value for an external interrupt source.

## Directory discription

+ The **hardware** directory contains the RVCore system source codes.

+ The **software** directory contains the FreeRTOS source codes and the demo project.

+ The **pytorch2hls** directory contains the Pytorch2HLS source codes.


