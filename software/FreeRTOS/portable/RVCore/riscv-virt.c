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

#include <FreeRTOS.h>
#include <string.h>

#include "riscv-virt.h"

#include "interrupt.h"

volatile uint32_t *TOHOST_PORT = (volatile uint32_t *)(TOHOST_ADDR);
volatile uint32_t *LCD_PORT    = (volatile uint32_t *)(LCD_ADDR);
volatile uint32_t *SEG_PORT = (volatile uint32_t *)(SEG_ADDR);
volatile uint32_t *PWM_PORT = (volatile uint32_t *)(PWM_ADDR);

void vSendString( const char *s )
{
	size_t i;
	portENTER_CRITICAL();
	for (i = 0; i < strlen(s); i++) {
		simrv_putc(s[i]);
	}
	//simrv_putc( '\n' );
	portEXIT_CRITICAL();
}


void simrv_exit ()
{
    *TOHOST_PORT = CMD_POWER_OFF << 16;
    while(1);
}

void simrv_putc (char c)
{
    *TOHOST_PORT = CMD_PRINT_CHAR << 16 | c;
}

void simrv_puts (char *str)
{
    for (char *c = str; *c != '\0'; c++) {
        simrv_putc(*c);
    }
}

void simrv_puth (unsigned int n)
{
    char str[8];
    unsigned int  hexn = 0;
    unsigned int  size = 0;

    do {
        hexn = n & 0xf;
        if(hexn < 10) str[size++] = (char) (hexn + '0');
        else          str[size++] = (char) (hexn - 10 + 'A');
        n = n >> 4;
    } while (n != 0);

    for (int i = size-1; i >= 0; i--) {
        simrv_putc(str[i]);
    }
}

void lcd_write(int x, int y, unsigned char v) {
    #ifdef LCD_REVERSE
    unsigned int addr = (7-y)*128 + (127-x);
    unsigned char tmp = 0;
    for(int i=0; i<8; i++){
        tmp |= ((v >> i) & 0x01) << (7-i); 
    }
    *LCD_PORT = (addr << 16) | tmp;
    #else
    unsigned int addr = y*128 + x;
    *LCD_PORT = (addr << 16) | v;
    #endif
}

inline void set_SEG(uint32_t seg){
    portENTER_CRITICAL();
    *SEG_PORT = seg;
    portEXIT_CRITICAL();
}



inline void set_PWM(int l_motor, int r_motor){
    portENTER_CRITICAL();
    *PWM_PORT = (l_motor <<  8) | r_motor;
    portEXIT_CRITICAL();
}