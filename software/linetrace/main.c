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

/* FreeRTOS kernel includes. */
#include <FreeRTOS.h>
#include <task.h>

#include "riscv-virt.h"
#include "interrupt.h"
#include "console.h"

#define ms(x) (x/portTICK_RATE_MS)

#define DUTY_TURN 255
#define DUTY_HIGH 192
#define DUTY_LOW  0

#define GO_STRAIGHT(run_ms, stop_ms) \
    do { \
        set_PWM(DUTY_TURN, DUTY_TURN); \
        vTaskDelay(ms(run_ms)); \
        set_PWM(0, 0); \
        vTaskDelay(ms(stop_ms)); \
    } while(0)

#define TURN_RIGHT(turn_ms, stop_ms) \
    do { \
        set_PWM(DUTY_TURN, 0); \
        vTaskDelay(ms(turn_ms)); \
        set_PWM(0, 0); \
        vTaskDelay(ms(stop_ms)); \
    } while(0)

#define TURN_LEFT(turn_ms, stop_ms) \
    do { \
        set_PWM(0, DUTY_TURN); \
        vTaskDelay(ms(turn_ms)); \
        set_PWM(0, 0); \
        vTaskDelay(ms(stop_ms)); \
    } while(0)

void vApplicationMallocFailedHook( void );
void vApplicationIdleHook( void );
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );
void vApplicationTickHook( void );

// 0 is not over, 1 is over
// to avoid malloc in this function, give cnts array this.
int InferIsOverThresh(
    EXINT *exint, 
    unsigned int *cnts, 
    unsigned int labels, 
    unsigned int trials, 
    unsigned int thresh, 
    uint32_t *infered_label, 
    uint32_t arg
){
    uint32_t infer;
    for(int i=0; i<labels; i++) cnts[i] = 0;
    for(int i=0; i<trials; i++){
        if(get_EXINT(exint, &infer, portMAX_DELAY, arg) != pdTRUE) lcd_print("error 02");
        if(infer < labels) cnts[infer]++;
    }
    //argmax
    uint32_t max_val = 0, max_idx = 0;
    for(int i=0; i<labels; i++){
        if(cnts[i] > max_val){
            max_val = cnts[i];
            max_idx = i;
        }
    }
    *infered_label = max_idx;
    return max_val >= thresh ? 1 : 0;
}

/*-----------------------------------------------------------*/

void TaskHeartBeat(void *pvParameters)
{
    (void) pvParameters;
    static uint32_t cnt = 0;
    for(;;){
        set_SEG(cnt);
        cnt++;
        vTaskDelay(ms(1000));
    }
}

void TaskLineTrace(void *pvParameters)  // This is a task.
{
    (void) pvParameters;
    uint32_t infer;

    EXINT *nn0_exint = init_EXINT(EXNN_0_IRQ, 4, WASTE_OLD);

    for (;;) // A Task shall never return or exit.
    {
        //get_EXINT(nn0_exint, &infer, portMAX_DELAY, 0x0000000B);
        //get_EXINT(nn0_exint, &infer, portMAX_DELAY, EXNN_ARG_START | EXNN_ARG_BIN);
        get_EXINT(nn0_exint, &infer, portMAX_DELAY, EXNN_ARG_START);
		switch(infer){
        case 0 : set_PWM(DUTY_HIGH, DUTY_HIGH); break;
        case 1 : set_PWM(DUTY_TURN, DUTY_LOW ); break;
        case 2 : set_PWM(DUTY_LOW,  DUTY_TURN); break;
		default : break;
		}
    }
}


int main( void )
{
    _console_init();
	vSendString("Hello FreeRTOS!!\n");
    lcd_print("Hello FreeRTOS!!\n");

	xTaskCreate(
        TaskLineTrace
        ,  "TaskLineTrace"   // A name just for humans
        ,  1024  // This stack size can be checked & adjusted by reading the Stack Highwater
        ,  NULL
        ,  3  // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
        ,  NULL 
    );

	xTaskCreate(
        TaskHeartBeat
        ,  "TaskHeartBeat"   // A name just for humans
        ,  1024  // This stack size can be checked & adjusted by reading the Stack Highwater
        ,  NULL
        ,  3  // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
        ,  NULL 
    );

	vTaskStartScheduler();
	while(1){
	}
	
	return 0;
}


/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	vSendString( "Malloc Failed!" );
	simrv_exit();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook( void )
{
	/* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
	to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
	task.  It is essential that code added to this hook function never attempts
	to block in any way (for example, call xQueueReceive() with a block time
	specified, or call vTaskDelay()).  If the application makes use of the
	vTaskDelete() API function (as this demo application does) then it is also
	important that vApplicationIdleHook() is permitted to return to its calling
	function, because it is the responsibility of the idle task to clean up
	memory allocated by the kernel to any task that has since been deleted. */
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */
	taskDISABLE_INTERRUPTS();
	vSendString( "Stack Overflow!!" );
	simrv_exit();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationTickHook( void )
{
}
/*-----------------------------------------------------------*/

void vAssertCalled( void )
{
volatile uint32_t ulSetTo1ToExitFunction = 0;

	taskDISABLE_INTERRUPTS();
	vSendString( "Assert called!!" );
	simrv_exit();
	while( ulSetTo1ToExitFunction != 1 )
	{
		__asm volatile( "NOP" );
	}
}
