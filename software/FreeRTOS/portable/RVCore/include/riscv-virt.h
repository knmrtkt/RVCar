/*
 * FreeRTOS V202104.00
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * https://www.FreeRTOS.org
 * https://www.github.com/FreeRTOS
 *
 * 1 tab == 4 spaces!
 */

#ifndef RISCV_VIRT_H_
#define RISCV_VIRT_H_

#include "riscv-reg.h"

#ifdef __ASSEMBLER__
#define CONS(NUM, TYPE)NUM
#else
#define CONS(NUM, TYPE)NUM##TYPE
#endif /* __ASSEMBLER__ */

#define PRIM_HART			0

// Physical memory layout
// based on memlayout.ld
//
// 00000000 -- Instruction memory
// 00020000 -- Data memory
// 40000000 -- MMIO Base
// 40000000 -- IRQ Source
// 40001000 -- Read Only
// 40002000 -- Write Only
// 40003000 -- Read and Write
// 40004000 -- LCD
// 40008000 -- TOHOST
// 50000000 -- PLIC
// 60000000 -- CLINT
// 80000000 -- SDCRAM
#define CORE_BASE_ADDR      CONS(0x00000000, UL)

#define MMIO_ADDR           CONS(0x40000000, UL)

#define EXINT_BASR_ADDR     MMIO_ADDR + 0
#define IRQ_MAX             32
#define EXKEY_IRQ           1
#define EXNN_0_IRQ          2

#define EXNN_ARG_START      1 << 1
#define EXNN_ARG_RESIZE     1 << 2
#define EXNN_ARG_BIN        1 << 3

#define READ_BASE_ADDR      MMIO_ADDR + 0x1000

#define WRITE_BASE_ADDR     MMIO_ADDR + 0x2000
#define PWM_ADDR            WRITE_BASE_ADDR + 0x0004
#define SEG_ADDR            WRITE_BASE_ADDR + 0x0008

#define RANDW_BASR_ADDR     MMIO_ADDR + 0x3000

#define LCD_ADDR            CONS(0x40004000, UL)

#define TOHOST_ADDR         CONS(0x40008000, UL)

#define CLINT_ADDR			CONS(0x60000000, UL)
#define CLINT_MSIP			CONS(0x0000, UL)
#define CLINT_MTIMECMP		CONS(0x4000, UL)
#define CLINT_MTIME			CONS(0xbff8, UL)

#define PLIC 0x50000000UL
#define PLIC_PRIORITY (PLIC + 0x0)
#define PLIC_PENDING (PLIC + 0x1000)
#define PLIC_MENABLE(hart) (PLIC + 0x2000 + (hart)*0x100)
#define PLIC_MPRIORITY(hart) (PLIC + 0x200000 + (hart)*0x2000)
#define PLIC_MCLAIM(hart) (PLIC + 0x200004 + (hart)*0x2000)



#define CMD_PRINT_CHAR 1
#define CMD_POWER_OFF  2

#ifndef __ASSEMBLER__

int xGetCoreID( void );
void vSendString( const char * s );

void simrv_exit ();
void simrv_putc (char c);
void simrv_puts (char *str);
void simrv_puth (unsigned int n);

//#define LCD_REVERSE
void lcd_write(int x, int y, unsigned char v);

void set_SEG(uint32_t);

void set_PWM(int, int);

#endif /* __ASSEMBLER__ */

#endif /* RISCV_VIRT_H_ */
