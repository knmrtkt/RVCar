
#ifndef _INTERRUPT_H_
#define _INTERRUPT_H_

#include <FreeRTOS.h>
#include <queue.h>
#include <semphr.h>

enum EXINT_Q_FULL_ACTION {WASTE_NEW, WASTE_OLD};

typedef struct{
    uint32_t IRQ_no;
    QueueHandle_t Queue;
    xSemaphoreHandle Semaphore;
    enum EXINT_Q_FULL_ACTION q_full_action;
    //TickType_t get_delay;
} EXINT;

// irq no, queue size, q_full_action
EXINT* init_EXINT(uint32_t, uint32_t, enum EXINT_Q_FULL_ACTION);

BaseType_t get_EXINT(EXINT *, uint32_t*, TickType_t, uint32_t);

#endif