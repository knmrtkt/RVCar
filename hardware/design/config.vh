/*****************************************************************************/

// support ArtyA7
//`define ARTYA7
// Real Time OS mode
`define RTOS
// no real mtime
//`define NOREAL_MTIME

/*****************************************************************************/
// use verilator as verilog simulator
//`define VERILATOR
// default net type
//`default_nettype none
// run vexriscv core
//`define VEXRV
// run processor not using clock IP
// run processor not initializing by serial data (using readmemh)
//`define NO_SERIAL
// display the progress of program execution
//`define PROGRESS
// display the pipeline chart
//`define PIPELINE

/*****************************************************************************/
// MEMORY (Byte)
`define MEM_SIZE 1024*128
`define BOOTLOADER_FILE "design/bootloader.hex"
`define MAINMEM_FILE "bin/boot.hex"
/*****************************************************************************/
// TOHOST_ADDR
`define TOHOST_ADDR 32'h40008000
// command for application mode using tohost
`define CMD_PRINT_CHAR 1
`define CMD_POWER_OFF  2
/*****************************************************************************/
// About nop instruction
`define NOP_IR  32'h00000013
`define NOP_OP  7'b0010011
`define NOP_PC  32'hffffffff
/*****************************************************************************/
// start PC
`ifdef NO_SDCARD
    `define START_PC 32'h00000000
`else
    `define START_PC 32'h00080000
`endif
/*****************************************************************************/
// time out
//`define TIMEOUT    1000000000

/*****************************************************************************/
//`define TR_BEGIN 0
//`define TR_END   1000000
//`define TR_FIN   1000100
/*****************************************************************************/
// uart queue size
`define QUEUE_SIZE 512
/*****************************************************************************/
/* Debug Definition                                                          */
/*****************************************************************************/
// DEBUG_SIZE >= DEBUG_STOP - DEBUG_START + 1
//`define DEBUG
`define DEBUG_SIZE  1024
`define DEBUG_START 1
`define DEBUG_STOP  1024
//`define VERIFY
/*****************************************************************************/
/* Clock Interval Definition                                                 */
/*****************************************************************************/
// b = baud rate (in Mbps)
// f = frequency of the clk for the MIPS core (in MHz)
// SERIAL_WCNT = f/b
// ex, f=100MHz b=5Mbaud -> WCNT = 100M/5M = 20
`ifndef SERIAL_WCNT
    `define SERIAL_WCNT  125
`endif
/*****************************************************************************/
// exception & interrupt
`define CAUSE_INTERRUPT 32'h80000000

/*****************************************************************************/
// CSR Addr
// User-Mode
`define CSR_USTATUS     12'h000
`define CSR_FFLAGS      12'h001
`define CSR_FRM         12'h002
`define CSR_FCSR        12'h003
`define CSR_UIE         12'h004
`define CSR_UTVEC       12'h005
`define CSR_USCRATCH    12'h040
`define CSR_UEPC        12'h041
`define CSR_UCAUSE      12'h042
`define CSR_UTVAL       12'h043
`define CSR_UIP         12'h044
`define CSR_CYCLE       12'hc00
`define CSR_TIME        12'hc01
`define CSR_INSTRET     12'hc02

// Superviser-Mode
`define CSR_SSTATUS     12'h100
`define CSR_SEDELEG     12'h102
`define CSR_SIDELEG     12'h103
`define CSR_SIE         12'h104
`define CSR_STVEC       12'h105
`define CSR_SCOUNTEREN  12'h106
`define CSR_SSCRATCH    12'h140
`define CSR_SEPC        12'h141
`define CSR_SCAUSE      12'h142
`define CSR_STVAL       12'h143
`define CSR_SIP         12'h144
`define CSR_SATP        12'h180

// Machine-Mode
`define CSR_MVENDORID   12'hf11
`define CSR_MARCHID     12'hf12
`define CSR_MIMPID      12'hf13
`define CSR_MHARTID     12'hf14
`define CSR_MSTATUS     12'h300
`define CSR_MISA        12'h301
`define CSR_MEDELEG     12'h302
`define CSR_MIDELEG     12'h303
`define CSR_MIE         12'h304
`define CSR_MTVEC       12'h305
`define CSR_MCOUNTEREN  12'h306
`define CSR_MSCRATCH    12'h340
`define CSR_MEPC        12'h341
`define CSR_MCAUSE      12'h342
`define CSR_MTVAL       12'h343
`define CSR_MIP         12'h344
`define CSR_MCYCLE      12'hb00
`define CSR_MINSTRET    12'hb02
`define CSR_MCYCLEH     12'hb80
`define CSR_MINSTRETH   12'hb82
`define CSR_CYCLEH      12'hc80
`define CSR_TIMEH       12'hc81
`define CSR_INSTRETH    12'hc82

/*****************************************************************************/
// CSR Mask
// PRIV MODE
`define PRIV_U 0
`define PRIV_S 1
`define PRIV_H 2
`define PRIV_M 3

// CSR Masks
`define COUNTEREN_MASK  32'h5   // ((1 << 0) | (1 << 2))

`define MSTATUS_UIE     32'h1       // (1 << 0)
`define MSTATUS_SIE     32'h2       // (1 << 1)
`define MSTATUS_HIE     32'h4       // (1 << 2)
`define MSTATUS_MIE     32'h8       // (1 << 3)
`define MSTATUS_UPIE    32'h10      // (1 << 4)
`define MSTATUS_SPIE    32'h20      // (1 << 5)
`define MSTATUS_HPIE    32'h40      // (1 << 6)
`define MSTATUS_MPIE    32'h80      // (1 << 7)
`define MSTATUS_SPP     32'h100     // (1 << 8)
`define MSTATUS_HPP     32'h600     // (3 << 9)
`define MSTATUS_MPP     32'h1800    // (3 << 11)
`define MSTATUS_FS      32'h6000    // (3 << 13)
`define MSTATUS_XS      32'h18000   // (3 << 15)
`define MSTATUS_MPRV    32'h20000   // (1 << 17)
`define MSTATUS_SUM     32'h40000   // (1 << 18)
`define MSTATUS_MXR     32'h80000   // (1 << 19)

`define MSTATUS_SPIE_SHIFT  5
`define MSTATUS_MPIE_SHIFT  7
`define MSTATUS_SPP_SHIFT   8
`define MSTATUS_MPP_SHIFT   11
`define MSTATUS_FS_SHIFT    13

`define MSTATUS_MASK    32'h000e79bb
`define SSTATUS_MASK0   32'h000de133
`define SSTATUS_MASK    `SSTATUS_MASK0

`define MIP_USIP        32'h1   // (1 << 0)
`define MIP_SSIP        32'h2   // (1 << 1)
`define MIP_HSIP        32'h4   // (1 << 2)
`define MIP_MSIP        32'h8   // (1 << 3)
`define MIP_UTIP        32'h10   // (1 << 4)
`define MIP_STIP        32'h20  // (1 << 5)
`define MIP_HTIP        32'h40  // (1 << 6)
`define MIP_MTIP        32'h80  // (1 << 7)
`define MIP_UEIP        32'h100  // (1 << 8)
`define MIP_SEIP        32'h200 // (1 << 9)
`define MIP_HEIP        32'h400 // (1 << 10)
`define MIP_MEIP        32'h800 // (1 << 11)

// Write CSR
`define WCSR_MASK1  32'hffff    // ((1 << (CAUSE_STORE_PAGE_FAULT + 1)) - 1;)
`define WCSR_MASK2  (`MIP_SSIP | `MIP_STIP | `MIP_SEIP)
`define WCSR_MASK3  (`MIP_MSIP | `MIP_MTIP | `MIP_SSIP | `MIP_STIP | `MIP_SEIP)
`define WCSR_MASK4  (`MIP_SSIP | `MIP_STIP)
`define WCSR_MASK5  (`MIP_MSIP | `MIP_MTIP | `MIP_SSIP | `MIP_STIP | `MIP_SEIP | `MIP_MEIP)

`define MASK_STATUS (`MSTATUS_MASK & ~`MSTATUS_FS)

/*****************************************************************************/
