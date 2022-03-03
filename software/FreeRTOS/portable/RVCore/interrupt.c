#include <FreeRTOS.h>
#include <queue.h>
#include <stdio.h>
#include <semphr.h>

#include "riscv-virt.h"
#include "interrupt.h"
#include "console.h"

EXINT* exints[IRQ_MAX];

inline int xGetCoreID( void )
{
	int id;
	__asm ("csrr %0, mhartid" : "=r" ( id ) );
	return id;
}

void plic_enable(uint32_t irq)
{
    uint32_t hart = xGetCoreID();
    if(irq != 0) *(uint32_t*)PLIC_MENABLE(hart) |= (1<<(irq-1));
}

uint32_t plic_claim(void)
{
	uint32_t hart = xGetCoreID();
	uint32_t irq = *(uint32_t*)PLIC_MCLAIM(hart);
  	return irq;
}

void plic_complete(uint32_t irq)
{
	uint32_t hart = xGetCoreID();
	*(uint32_t*)PLIC_MCLAIM(hart) = irq;
}

EXINT* init_EXINT(uint32_t irq, uint32_t queue_size, enum EXINT_Q_FULL_ACTION q_full_action)
{
    plic_enable(irq);
    EXINT* exint = (EXINT *)pvPortMalloc(sizeof(EXINT));

    //exint->Semaphore = xSemaphoreCreateBinary();
    exint->Queue = xQueueCreate(queue_size, sizeof(uint32_t));
    exint->IRQ_no = irq;
    exint->q_full_action = q_full_action;

    exints[irq] = exint;
    return exint;
}

BaseType_t get_EXINT(EXINT *exint, uint32_t *val_p, TickType_t delay, uint32_t arg)
{
    *(((uint32_t *)EXINT_BASR_ADDR)+exint->IRQ_no) = arg|0x00000001;
    *(((uint32_t *)EXINT_BASR_ADDR)+exint->IRQ_no) = 0;
    //xSemaphoreTake(exint->Semaphore, delay);
    xQueueReceive(exint->Queue, val_p, delay);
    //*val_p = *(((uint32_t *)EXINT_BASR_ADDR)+exint->IRQ_no);
    return pdTRUE;
}

void handle_EXINT(uint32_t irq)
{
    if(exints[irq] != NULL){
        //xSemaphoreGiveFromISR(exints[irq]->Semaphore, pdFALSE);
        uint32_t val = *(((uint32_t *)EXINT_BASR_ADDR)+irq);
        xQueueSendFromISR( exints[irq]->Queue, &val, 0 );
    }
}

// do not call methods which contains 
// portENTER_CRITICAL() and portEXIT_CRITICAL() 
// like vSendString() in trap handler!!
// this memory contains interrupt ID
void handle_trap(void)
{	
	uint32_t irq = plic_claim();
	
    handle_EXINT(irq);
    
	plic_complete(irq);
}