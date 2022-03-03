
build/linetrace.axf:     file format elf32-littleriscv
build/linetrace.axf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x00003568 memsz 0x00015c50 flags rwx

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         000000d8  00000000  00000000  00001000  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00002ea4  00000100  00000100  00001100  2**8
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata.align 00000000  00002fa4  00003568  00004568  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  3 .rodata       00000598  00002fa4  00002fa4  00003fa4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .data.align   00000000  0000353c  00003568  00004568  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  5 .data         0000002c  0000353c  0000353c  0000453c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .bss.align    00000000  00003568  00003568  00000000  2**0
                  ALLOC
  7 .bss          000122dc  00003570  00003570  00004568  2**4
                  ALLOC
  8 .stack        00000404  0001584c  0001584c  00004568  2**0
                  ALLOC
  9 .comment      00000012  00000000  00000000  00004568  2**0
                  CONTENTS, READONLY
 10 .riscv.attributes 00000020  00000000  00000000  0000457a  2**0
                  CONTENTS, READONLY
 11 .debug_info   0000023e  00000000  00000000  0000459a  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_abbrev 0000014e  00000000  00000000  000047d8  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_loclists 00000062  00000000  00000000  00004926  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_aranges 00000058  00000000  00000000  00004988  2**3
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_rnglists 00000028  00000000  00000000  000049e0  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_line   00000184  00000000  00000000  00004a08  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_str    000001c3  00000000  00000000  00004b8c  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 18 .debug_line_str 000000d4  00000000  00000000  00004d4f  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_frame  00000020  00000000  00000000  00004e24  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
00000000 l    d  .init	00000000 .init
00000100 l    d  .text	00000000 .text
00002fa4 l    d  .rodata.align	00000000 .rodata.align
00002fa4 l    d  .rodata	00000000 .rodata
0000353c l    d  .data.align	00000000 .data.align
0000353c l    d  .data	00000000 .data
00003568 l    d  .bss.align	00000000 .bss.align
00003570 l    d  .bss	00000000 .bss
0001584c l    d  .stack	00000000 .stack
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .riscv.attributes	00000000 .riscv.attributes
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_loclists	00000000 .debug_loclists
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_rnglists	00000000 .debug_rnglists
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_line_str	00000000 .debug_line_str
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    df *ABS*	00000000 start.o
000000d0 l       .init	00000000 secondary
00000000 l    df *ABS*	00000000 main.c
000035e0 l     O .bss	00000004 cnt.0
00000000 l    df *ABS*	00000000 heap_2.c
000035e4 l     O .bss	00010000 ucHeap
00003570 l     O .bss	00000008 xEnd
00003578 l     O .bss	00000004 xHeapHasBeenInitialised.0
0000357c l     O .bss	00000008 xStart
00003540 l     O .data	00000004 xFreeBytesRemaining
00000000 l    df *ABS*	00000000 port.c
000135f0 l     O .bss	00002000 xISRStack
00000000 l    df *ABS*	00000000 queue.c
000003e8 l     F .text	00000130 prvCopyDataToQueue
00000518 l     F .text	000000fc prvUnlockQueue
00000000 l    df *ABS*	00000000 list.c
00000000 l    df *ABS*	00000000 tasks.c
00000cc8 l     F .text	00000128 prvAddCurrentTaskToDelayedList
00000df0 l     F .text	000000e8 prvIdleTask
00015630 l     O .bss	0000008c pxReadyTasksLists
000156bc l     O .bss	00000014 xDelayedTaskList1
000156d0 l     O .bss	00000014 xDelayedTaskList2
000156e4 l     O .bss	00000014 xPendingReadyList
000156f8 l     O .bss	00000014 xSuspendedTaskList
0001570c l     O .bss	00000014 xTasksWaitingTermination
00003594 l     O .bss	00000004 pxDelayedTaskList
00003598 l     O .bss	00000004 pxOverflowDelayedTaskList
0000359c l     O .bss	00000004 uxCurrentNumberOfTasks
000035a0 l     O .bss	00000004 uxDeletedTasksWaitingCleanUp
000035a4 l     O .bss	00000004 uxSchedulerSuspended
000035a8 l     O .bss	00000004 uxTaskNumber
000035ac l     O .bss	00000004 uxTopReadyPriority
000035b0 l     O .bss	00000004 xIdleTaskHandle
000035b4 l     O .bss	00000004 xNextTaskUnblockTime
000035b8 l     O .bss	00000004 xNumOfOverflows
000035bc l     O .bss	00000004 xPendedTicks
000035c0 l     O .bss	00000004 xSchedulerRunning
000035c4 l     O .bss	00000004 xTickCount
000035c8 l     O .bss	00000004 xYieldPending
00000000 l    df *ABS*	00000000 timers.c
00001bf0 l     F .text	00000098 prvCheckForValidListAndQueue
00001e84 l     F .text	000002e8 prvTimerTask
00001db4 l     F .text	000000d0 prvSwitchTimerLists
00015720 l     O .bss	00000014 xActiveTimerList1
00015734 l     O .bss	00000014 xActiveTimerList2
000035cc l     O .bss	00000004 pxCurrentTimerList
000035d0 l     O .bss	00000004 pxOverflowTimerList
000035d4 l     O .bss	00000004 xLastTime.0
000035d8 l     O .bss	00000004 xTimerQueue
000035dc l     O .bss	00000004 xTimerTaskHandle
00000000 l    df *ABS*	00000000 riscv-virt.c
00000000 l    df *ABS*	00000000 interrupt.c
00000000 l    df *ABS*	00000000 console.c
000023e8 l     F .text	000000d8 console_lcd_sync
000024c0 l     F .text	000000ac console_line_forward
000157c8 l     O .bss	00000082 console
00002fe4 l     O .rodata	00000400 fonts
00000000 l    df *ABS*	00000000 portASM.o
00002890 l       .text	00000000 test_if_asynchronous
00002914 l       .text	00000000 handle_synchronous
0000289c l       .text	00000000 handle_asynchronous
0000289c l       .text	00000000 test_if_mtimer
00002900 l       .text	00000000 test_if_external_interrupt
00002948 l       .text	00000000 processed_source
00002940 l       .text	00000000 as_yet_unhandled
0000291c l       .text	00000000 test_if_environment_call
00002930 l       .text	00000000 is_exception
00002b30 l       .text	00000000 chip_specific_stack_frame
00000000 l    df *ABS*	00000000 libgcc2.c
00000000 l    df *ABS*	00000000 memcpy.c
00000000 l    df *ABS*	00000000 memmove-stub.c
00000000 l    df *ABS*	00000000 strlen.c
00000000 l    df *ABS*	00000000 libgcc2.c
00003550 g     O .data	00000004 PWM_PORT
00003558 g     O .data	00000004 TOHOST_PORT
000026c8 g     F .text	00000080 TaskLineTrace
00002664 g     F .text	00000030 _console_init
00003d40 g       .data	00000000 __global_pointer$
00000b28 g     F .text	000000a8 vQueueWaitForMessageRestricted
00002270 g     F .text	000000b0 init_EXINT
000021e8 g     F .text	0000001c lcd_write
00002d1c g     F .text	00000120 memmove
00003544 g     O .data	00000004 pullNextTime
000014d0 g     F .text	00000030 vTaskEnterCritical
00000868 g     F .text	000000c4 xQueueGenericSendFromISR
00003590 g     O .bss	00000004 pxCurrentTCB
00002fa4 g       .text	00000000 _etext
00000400 g       *ABS*	00000000 __stack_size
00001398 g     F .text	0000001c vTaskInternalSetTimeOutState
000003bc g     F .text	0000002c xPortStartScheduler
00002bf4 g     F .text	00000128 memcpy
00001248 g     F .text	00000038 vTaskPlaceOnEventList
00000338  w    F .text	00000084 vPortSetupTimerInterrupt
00002230 g     F .text	00000040 set_PWM
000002d0 g     F .text	00000068 vPortFree
00002368 g     F .text	00000080 handle_trap
00000bf8 g     F .text	00000030 vListInsertEnd
00000bf0 g     F .text	00000008 vListInitialiseItem
0000092c g     F .text	000001bc xQueueReceive
000155f0 g     O .bss	00000040 xQueueRegistry
00003554 g     O .data	00000004 SEG_PORT
00015748 g     O .bss	00000080 exints
00002694 g     F .text	00000034 TaskHeartBeat
00000174 g     F .text	0000015c pvPortMalloc
00002320 g     F .text	00000048 get_EXINT
00000bd0 g     F .text	00000020 vListInitialise
00000ef0 g     F .text	0000000c xTaskGetTickCount
000006d0 g     F .text	00000198 xQueueGenericSend
0001584c g       .bss	00000000 _ebss
000013e8 g     F .text	000000e8 xTaskPriorityDisinherit
00015c50 g       .stack	00000000 _stack_top
00002800 g       .text	00000000 freertos_risc_v_trap_handler
00002204 g     F .text	0000002c set_SEG
00002fa4 g       .rodata.align	00000000 _rodata
000012cc g     F .text	000000cc xTaskRemoveFromEventList
00002748 g     F .text	00000020 vApplicationMallocFailedHook
00002788 g     F .text	00000004 vApplicationTickHook
00003564 g     O .data	00000004 xISRStackTop
00002b84 g     F .text	0000004c .hidden __clzsi2
00001aec g     F .text	00000104 xTaskCheckForTimeOut
00003568 g       .bss.align	00000000 _bss
00000000 g     F .init	00000000 _start
00000ed8 g     F .text	00000018 vTaskSuspendAll
00000c78 g     F .text	00000050 uxListRemove
0000256c g     F .text	000000f8 lcd_print
00002bd0 g     F .text	00000024 .hidden __mulsi3
00001150 g     F .text	000000f8 vTaskSwitchContext
00003568 g       *ABS*	00000000 _bss_lma
00001280 g     F .text	0000004c vTaskPlaceOnEventListRestricted
0000354c g     O .data	00000004 LCD_PORT
00001ce0 g     F .text	000000d4 xTimerGenericCommand
00002768 g     F .text	00000020 vApplicationStackOverflowHook
00000000 g       .init	00000000 _text
00002e3c g     F .text	000000dc memset
00000100 g     F .text	00000074 main
000021d8 g     F .text	00000010 simrv_exit
00000c28 g     F .text	00000050 vListInsert
00001c88 g     F .text	00000058 xTimerCreateTimerTask
00002fa4 g       *ABS*	00000000 _rodata_lma
00000614 g     F .text	000000bc xQueueGenericCreate
000018d8 g     F .text	000001cc xTaskResumeAll
00003548 g     O .data	00000004 uxTopUsedPriority
0000343c g     O .rodata	00000100 .hidden __clz_tab
00001844 g     F .text	00000094 vTaskStartScheduler
0000216c g     F .text	0000006c vSendString
00002a00 g       .text	00000000 xPortStartFirstTask
0000353c g       .data.align	00000000 _data
000013b4 g     F .text	00000010 vTaskMissedYield
00000ae8 g     F .text	00000040 vQueueAddToRegistry
00000efc g     F .text	00000254 xTaskIncrementTick
00003584 g     O .bss	00000004 pullMachineTimerCompareRegister
00003568 g       .data	00000000 _edata
00015850 g       .bss	00000000 _end
00001544 g     F .text	00000300 xTaskCreate
0000353c g       *ABS*	00000000 _data_lma
00003560 g     O .data	00000004 uxTimerIncrementsForOneTick
00001aa4 g     F .text	00000048 vTaskDelay
000013c4 g     F .text	00000024 xTaskGetSchedulerState
00001500 g     F .text	00000044 vTaskExitCritical
00002f18 g     F .text	0000008c strlen
00002b00 g       .text	00000000 pxPortInitialiseStack
00003588 g     O .bss	00000008 ullNextTime
0000353c g       .rodata	00000000 _erodata



Disassembly of section .init:

00000000 <_start>:
   0:	00000093          	li	ra,0
   4:	00000113          	li	sp,0
   8:	00000193          	li	gp,0
   c:	00000213          	li	tp,0
  10:	00000293          	li	t0,0
  14:	00000313          	li	t1,0
  18:	00000393          	li	t2,0
  1c:	00000413          	li	s0,0
  20:	00000493          	li	s1,0
  24:	00000513          	li	a0,0
  28:	00000593          	li	a1,0
  2c:	00000613          	li	a2,0
  30:	00000693          	li	a3,0
  34:	00000713          	li	a4,0
  38:	00000793          	li	a5,0
  3c:	00000813          	li	a6,0
  40:	00000893          	li	a7,0
  44:	00000913          	li	s2,0
  48:	00000993          	li	s3,0
  4c:	00000a13          	li	s4,0
  50:	00000a93          	li	s5,0
  54:	00000b13          	li	s6,0
  58:	00000b93          	li	s7,0
  5c:	00000c13          	li	s8,0
  60:	00000c93          	li	s9,0
  64:	00000d13          	li	s10,0
  68:	00000d93          	li	s11,0
  6c:	00000e13          	li	t3,0
  70:	00000e93          	li	t4,0
  74:	00000f13          	li	t5,0
  78:	00000f93          	li	t6,0
  7c:	00004197          	auipc	gp,0x4
  80:	cc418193          	addi	gp,gp,-828 # 3d40 <__global_pointer$>
  84:	f1402573          	csrr	a0,mhartid
  88:	00000593          	li	a1,0
  8c:	04b51263          	bne	a0,a1,d0 <secondary>
  90:	00016117          	auipc	sp,0x16
  94:	bc010113          	addi	sp,sp,-1088 # 15c50 <_stack_top>
  98:	00003517          	auipc	a0,0x3
  9c:	4d050513          	addi	a0,a0,1232 # 3568 <_bss>
  a0:	00015597          	auipc	a1,0x15
  a4:	7ac58593          	addi	a1,a1,1964 # 1584c <_ebss>
  a8:	00b57863          	bgeu	a0,a1,b8 <_start+0xb8>
  ac:	00052023          	sw	zero,0(a0)
  b0:	00450513          	addi	a0,a0,4
  b4:	feb56ce3          	bltu	a0,a1,ac <_start+0xac>
  b8:	00000513          	li	a0,0
  bc:	00000593          	li	a1,0
  c0:	00000613          	li	a2,0
  c4:	03c000ef          	jal	ra,100 <main>
  c8:	10500073          	wfi
  cc:	ffdff06f          	j	c8 <_start+0xc8>

000000d0 <secondary>:
  d0:	10500073          	wfi
  d4:	ffdff06f          	j	d0 <secondary>

Disassembly of section .text:

00000100 <main>:
     100:	ff010113          	addi	sp,sp,-16
     104:	00112623          	sw	ra,12(sp)
     108:	55c020ef          	jal	ra,2664 <_console_init>
     10c:	00003517          	auipc	a0,0x3
     110:	2d850513          	addi	a0,a0,728 # 33e4 <fonts+0x400>
     114:	058020ef          	jal	ra,216c <vSendString>
     118:	00003517          	auipc	a0,0x3
     11c:	2cc50513          	addi	a0,a0,716 # 33e4 <fonts+0x400>
     120:	44c020ef          	jal	ra,256c <lcd_print>
     124:	00000793          	li	a5,0
     128:	00300713          	li	a4,3
     12c:	00000693          	li	a3,0
     130:	40000613          	li	a2,1024
     134:	00003597          	auipc	a1,0x3
     138:	2c458593          	addi	a1,a1,708 # 33f8 <fonts+0x414>
     13c:	00002517          	auipc	a0,0x2
     140:	58c50513          	addi	a0,a0,1420 # 26c8 <TaskLineTrace>
     144:	400010ef          	jal	ra,1544 <xTaskCreate>
     148:	00000793          	li	a5,0
     14c:	00300713          	li	a4,3
     150:	00000693          	li	a3,0
     154:	40000613          	li	a2,1024
     158:	00003597          	auipc	a1,0x3
     15c:	2b058593          	addi	a1,a1,688 # 3408 <fonts+0x424>
     160:	00002517          	auipc	a0,0x2
     164:	53450513          	addi	a0,a0,1332 # 2694 <TaskHeartBeat>
     168:	3dc010ef          	jal	ra,1544 <xTaskCreate>
     16c:	6d8010ef          	jal	ra,1844 <vTaskStartScheduler>
     170:	0000006f          	j	170 <main+0x70>

00000174 <pvPortMalloc>:
     174:	ff010113          	addi	sp,sp,-16
     178:	00812423          	sw	s0,8(sp)
     17c:	00112623          	sw	ra,12(sp)
     180:	00050413          	mv	s0,a0
     184:	555000ef          	jal	ra,ed8 <vTaskSuspendAll>
     188:	00003717          	auipc	a4,0x3
     18c:	3f070713          	addi	a4,a4,1008 # 3578 <xHeapHasBeenInitialised.0>
     190:	00072783          	lw	a5,0(a4)
     194:	04079663          	bnez	a5,1e0 <pvPortMalloc+0x6c>
     198:	00003797          	auipc	a5,0x3
     19c:	45c78793          	addi	a5,a5,1116 # 35f4 <ucHeap+0x10>
     1a0:	000106b7          	lui	a3,0x10
     1a4:	ff07f793          	andi	a5,a5,-16
     1a8:	00003617          	auipc	a2,0x3
     1ac:	3c860613          	addi	a2,a2,968 # 3570 <xEnd>
     1b0:	ff068693          	addi	a3,a3,-16 # fff0 <__global_pointer$+0xc2b0>
     1b4:	00003597          	auipc	a1,0x3
     1b8:	3cf5a423          	sw	a5,968(a1) # 357c <xStart>
     1bc:	00d7a223          	sw	a3,4(a5)
     1c0:	00c7a023          	sw	a2,0(a5)
     1c4:	00100793          	li	a5,1
     1c8:	00003597          	auipc	a1,0x3
     1cc:	3a05ac23          	sw	zero,952(a1) # 3580 <xStart+0x4>
     1d0:	00d62223          	sw	a3,4(a2)
     1d4:	00003597          	auipc	a1,0x3
     1d8:	3805ae23          	sw	zero,924(a1) # 3570 <xEnd>
     1dc:	00f72023          	sw	a5,0(a4)
     1e0:	fff40793          	addi	a5,s0,-1
     1e4:	fee00713          	li	a4,-18
     1e8:	0cf76463          	bltu	a4,a5,2b0 <pvPortMalloc+0x13c>
     1ec:	01040413          	addi	s0,s0,16
     1f0:	ff047613          	andi	a2,s0,-16
     1f4:	01060613          	addi	a2,a2,16
     1f8:	0ac47c63          	bgeu	s0,a2,2b0 <pvPortMalloc+0x13c>
     1fc:	00003817          	auipc	a6,0x3
     200:	34480813          	addi	a6,a6,836 # 3540 <xFreeBytesRemaining>
     204:	00082503          	lw	a0,0(a6)
     208:	0ac56463          	bltu	a0,a2,2b0 <pvPortMalloc+0x13c>
     20c:	00003597          	auipc	a1,0x3
     210:	37058593          	addi	a1,a1,880 # 357c <xStart>
     214:	0005a783          	lw	a5,0(a1)
     218:	0140006f          	j	22c <pvPortMalloc+0xb8>
     21c:	0007a703          	lw	a4,0(a5)
     220:	00070a63          	beqz	a4,234 <pvPortMalloc+0xc0>
     224:	00078593          	mv	a1,a5
     228:	00070793          	mv	a5,a4
     22c:	0047a683          	lw	a3,4(a5)
     230:	fec6e6e3          	bltu	a3,a2,21c <pvPortMalloc+0xa8>
     234:	00003717          	auipc	a4,0x3
     238:	33c70713          	addi	a4,a4,828 # 3570 <xEnd>
     23c:	06e78a63          	beq	a5,a4,2b0 <pvPortMalloc+0x13c>
     240:	0007a883          	lw	a7,0(a5)
     244:	0005a403          	lw	s0,0(a1)
     248:	40c68733          	sub	a4,a3,a2
     24c:	0115a023          	sw	a7,0(a1)
     250:	02000593          	li	a1,32
     254:	01040413          	addi	s0,s0,16
     258:	02e5fc63          	bgeu	a1,a4,290 <pvPortMalloc+0x11c>
     25c:	00c788b3          	add	a7,a5,a2
     260:	00e8a223          	sw	a4,4(a7)
     264:	00c7a223          	sw	a2,4(a5)
     268:	0048a583          	lw	a1,4(a7)
     26c:	00003797          	auipc	a5,0x3
     270:	31078793          	addi	a5,a5,784 # 357c <xStart>
     274:	00078693          	mv	a3,a5
     278:	0007a783          	lw	a5,0(a5)
     27c:	0047a703          	lw	a4,4(a5)
     280:	feb76ae3          	bltu	a4,a1,274 <pvPortMalloc+0x100>
     284:	00f8a023          	sw	a5,0(a7)
     288:	0116a023          	sw	a7,0(a3)
     28c:	00060693          	mv	a3,a2
     290:	40d50533          	sub	a0,a0,a3
     294:	00a82023          	sw	a0,0(a6)
     298:	640010ef          	jal	ra,18d8 <xTaskResumeAll>
     29c:	00c12083          	lw	ra,12(sp)
     2a0:	00040513          	mv	a0,s0
     2a4:	00812403          	lw	s0,8(sp)
     2a8:	01010113          	addi	sp,sp,16
     2ac:	00008067          	ret
     2b0:	628010ef          	jal	ra,18d8 <xTaskResumeAll>
     2b4:	494020ef          	jal	ra,2748 <vApplicationMallocFailedHook>
     2b8:	00000413          	li	s0,0
     2bc:	00c12083          	lw	ra,12(sp)
     2c0:	00040513          	mv	a0,s0
     2c4:	00812403          	lw	s0,8(sp)
     2c8:	01010113          	addi	sp,sp,16
     2cc:	00008067          	ret

000002d0 <vPortFree>:
     2d0:	06050263          	beqz	a0,334 <vPortFree+0x64>
     2d4:	ff010113          	addi	sp,sp,-16
     2d8:	00812423          	sw	s0,8(sp)
     2dc:	00112623          	sw	ra,12(sp)
     2e0:	00050413          	mv	s0,a0
     2e4:	3f5000ef          	jal	ra,ed8 <vTaskSuspendAll>
     2e8:	ff442683          	lw	a3,-12(s0)
     2ec:	ff040513          	addi	a0,s0,-16
     2f0:	00003797          	auipc	a5,0x3
     2f4:	28c78793          	addi	a5,a5,652 # 357c <xStart>
     2f8:	00078613          	mv	a2,a5
     2fc:	0007a783          	lw	a5,0(a5)
     300:	0047a703          	lw	a4,4(a5)
     304:	fed76ae3          	bltu	a4,a3,2f8 <vPortFree+0x28>
     308:	00003597          	auipc	a1,0x3
     30c:	23858593          	addi	a1,a1,568 # 3540 <xFreeBytesRemaining>
     310:	0005a703          	lw	a4,0(a1)
     314:	fef42823          	sw	a5,-16(s0)
     318:	00812403          	lw	s0,8(sp)
     31c:	00c12083          	lw	ra,12(sp)
     320:	00d707b3          	add	a5,a4,a3
     324:	00a62023          	sw	a0,0(a2)
     328:	00f5a023          	sw	a5,0(a1)
     32c:	01010113          	addi	sp,sp,16
     330:	5a80106f          	j	18d8 <xTaskResumeAll>
     334:	00008067          	ret

00000338 <vPortSetupTimerInterrupt>:
     338:	ff010113          	addi	sp,sp,-16
     33c:	f14027f3          	csrr	a5,mhartid
     340:	00f12623          	sw	a5,12(sp)
     344:	00c12583          	lw	a1,12(sp)
     348:	0c0017b7          	lui	a5,0xc001
     34c:	80078793          	addi	a5,a5,-2048 # c000800 <_stack_top+0xbfeabb0>
     350:	00f585b3          	add	a1,a1,a5
     354:	00359593          	slli	a1,a1,0x3
     358:	00003797          	auipc	a5,0x3
     35c:	22b7a623          	sw	a1,556(a5) # 3584 <pullMachineTimerCompareRegister>
     360:	6000c7b7          	lui	a5,0x6000c
     364:	ffc7a683          	lw	a3,-4(a5) # 6000bffc <_stack_top+0x5fff63ac>
     368:	ff87a603          	lw	a2,-8(a5)
     36c:	ffc7a703          	lw	a4,-4(a5)
     370:	fed71ae3          	bne	a4,a3,364 <vPortSetupTimerInterrupt+0x2c>
     374:	000186b7          	lui	a3,0x18
     378:	6a068693          	addi	a3,a3,1696 # 186a0 <_stack_top+0x2a50>
     37c:	000317b7          	lui	a5,0x31
     380:	00d606b3          	add	a3,a2,a3
     384:	d4078793          	addi	a5,a5,-704 # 30d40 <_stack_top+0x1b0f0>
     388:	00c6b533          	sltu	a0,a3,a2
     38c:	00f607b3          	add	a5,a2,a5
     390:	00d5a023          	sw	a3,0(a1)
     394:	00e508b3          	add	a7,a0,a4
     398:	00c7b633          	sltu	a2,a5,a2
     39c:	0115a223          	sw	a7,4(a1)
     3a0:	00003697          	auipc	a3,0x3
     3a4:	1e868693          	addi	a3,a3,488 # 3588 <ullNextTime>
     3a8:	00e60633          	add	a2,a2,a4
     3ac:	00f6a023          	sw	a5,0(a3)
     3b0:	00c6a223          	sw	a2,4(a3)
     3b4:	01010113          	addi	sp,sp,16
     3b8:	00008067          	ret

000003bc <xPortStartScheduler>:
     3bc:	ff010113          	addi	sp,sp,-16
     3c0:	00112623          	sw	ra,12(sp)
     3c4:	f75ff0ef          	jal	ra,338 <vPortSetupTimerInterrupt>
     3c8:	000017b7          	lui	a5,0x1
     3cc:	88078793          	addi	a5,a5,-1920 # 880 <xQueueGenericSendFromISR+0x18>
     3d0:	3047a073          	csrs	mie,a5
     3d4:	62c020ef          	jal	ra,2a00 <xPortStartFirstTask>
     3d8:	00c12083          	lw	ra,12(sp)
     3dc:	00000513          	li	a0,0
     3e0:	01010113          	addi	sp,sp,16
     3e4:	00008067          	ret

000003e8 <prvCopyDataToQueue>:
     3e8:	ff010113          	addi	sp,sp,-16
     3ec:	04052783          	lw	a5,64(a0)
     3f0:	00912223          	sw	s1,4(sp)
     3f4:	03852483          	lw	s1,56(a0)
     3f8:	00812423          	sw	s0,8(sp)
     3fc:	00112623          	sw	ra,12(sp)
     400:	01212023          	sw	s2,0(sp)
     404:	00050413          	mv	s0,a0
     408:	02079863          	bnez	a5,438 <__stack_size+0x38>
     40c:	00052783          	lw	a5,0(a0)
     410:	00148493          	addi	s1,s1,1
     414:	00000513          	li	a0,0
     418:	0c078c63          	beqz	a5,4f0 <__stack_size+0xf0>
     41c:	02942c23          	sw	s1,56(s0)
     420:	00c12083          	lw	ra,12(sp)
     424:	00812403          	lw	s0,8(sp)
     428:	00412483          	lw	s1,4(sp)
     42c:	00012903          	lw	s2,0(sp)
     430:	01010113          	addi	sp,sp,16
     434:	00008067          	ret
     438:	00060913          	mv	s2,a2
     43c:	04061a63          	bnez	a2,490 <__stack_size+0x90>
     440:	00452503          	lw	a0,4(a0)
     444:	00078613          	mv	a2,a5
     448:	00148493          	addi	s1,s1,1
     44c:	7a8020ef          	jal	ra,2bf4 <memcpy>
     450:	00442783          	lw	a5,4(s0)
     454:	04042683          	lw	a3,64(s0)
     458:	00842703          	lw	a4,8(s0)
     45c:	00000513          	li	a0,0
     460:	00d787b3          	add	a5,a5,a3
     464:	00f42223          	sw	a5,4(s0)
     468:	fae7eae3          	bltu	a5,a4,41c <__stack_size+0x1c>
     46c:	00042783          	lw	a5,0(s0)
     470:	02942c23          	sw	s1,56(s0)
     474:	00c12083          	lw	ra,12(sp)
     478:	00f42223          	sw	a5,4(s0)
     47c:	00812403          	lw	s0,8(sp)
     480:	00412483          	lw	s1,4(sp)
     484:	00012903          	lw	s2,0(sp)
     488:	01010113          	addi	sp,sp,16
     48c:	00008067          	ret
     490:	00c52503          	lw	a0,12(a0)
     494:	00078613          	mv	a2,a5
     498:	75c020ef          	jal	ra,2bf4 <memcpy>
     49c:	04042703          	lw	a4,64(s0)
     4a0:	00c42783          	lw	a5,12(s0)
     4a4:	00042683          	lw	a3,0(s0)
     4a8:	40e00633          	neg	a2,a4
     4ac:	40e787b3          	sub	a5,a5,a4
     4b0:	00f42623          	sw	a5,12(s0)
     4b4:	00d7f863          	bgeu	a5,a3,4c4 <__stack_size+0xc4>
     4b8:	00842783          	lw	a5,8(s0)
     4bc:	00c787b3          	add	a5,a5,a2
     4c0:	00f42623          	sw	a5,12(s0)
     4c4:	00200793          	li	a5,2
     4c8:	02f90c63          	beq	s2,a5,500 <__stack_size+0x100>
     4cc:	00148493          	addi	s1,s1,1
     4d0:	02942c23          	sw	s1,56(s0)
     4d4:	00c12083          	lw	ra,12(sp)
     4d8:	00812403          	lw	s0,8(sp)
     4dc:	00412483          	lw	s1,4(sp)
     4e0:	00012903          	lw	s2,0(sp)
     4e4:	00000513          	li	a0,0
     4e8:	01010113          	addi	sp,sp,16
     4ec:	00008067          	ret
     4f0:	00842503          	lw	a0,8(s0)
     4f4:	6f5000ef          	jal	ra,13e8 <xTaskPriorityDisinherit>
     4f8:	00042423          	sw	zero,8(s0)
     4fc:	f21ff06f          	j	41c <__stack_size+0x1c>
     500:	00048663          	beqz	s1,50c <__stack_size+0x10c>
     504:	00000513          	li	a0,0
     508:	f15ff06f          	j	41c <__stack_size+0x1c>
     50c:	00100493          	li	s1,1
     510:	00000513          	li	a0,0
     514:	f09ff06f          	j	41c <__stack_size+0x1c>

00000518 <prvUnlockQueue>:
     518:	ff010113          	addi	sp,sp,-16
     51c:	00812423          	sw	s0,8(sp)
     520:	00912223          	sw	s1,4(sp)
     524:	00112623          	sw	ra,12(sp)
     528:	00050493          	mv	s1,a0
     52c:	01212023          	sw	s2,0(sp)
     530:	7a1000ef          	jal	ra,14d0 <vTaskEnterCritical>
     534:	0454c783          	lbu	a5,69(s1)
     538:	01879413          	slli	s0,a5,0x18
     53c:	41845413          	srai	s0,s0,0x18
     540:	04805663          	blez	s0,58c <prvUnlockQueue+0x74>
     544:	02448913          	addi	s2,s1,36
     548:	0180006f          	j	560 <prvUnlockQueue+0x48>
     54c:	fff40793          	addi	a5,s0,-1
     550:	01879413          	slli	s0,a5,0x18
     554:	0ff7f713          	zext.b	a4,a5
     558:	41845413          	srai	s0,s0,0x18
     55c:	02070863          	beqz	a4,58c <prvUnlockQueue+0x74>
     560:	0244a783          	lw	a5,36(s1)
     564:	00090513          	mv	a0,s2
     568:	02078263          	beqz	a5,58c <prvUnlockQueue+0x74>
     56c:	561000ef          	jal	ra,12cc <xTaskRemoveFromEventList>
     570:	fc050ee3          	beqz	a0,54c <prvUnlockQueue+0x34>
     574:	641000ef          	jal	ra,13b4 <vTaskMissedYield>
     578:	fff40793          	addi	a5,s0,-1
     57c:	01879413          	slli	s0,a5,0x18
     580:	0ff7f713          	zext.b	a4,a5
     584:	41845413          	srai	s0,s0,0x18
     588:	fc071ce3          	bnez	a4,560 <prvUnlockQueue+0x48>
     58c:	fff00793          	li	a5,-1
     590:	04f482a3          	sb	a5,69(s1)
     594:	76d000ef          	jal	ra,1500 <vTaskExitCritical>
     598:	739000ef          	jal	ra,14d0 <vTaskEnterCritical>
     59c:	0444c783          	lbu	a5,68(s1)
     5a0:	01879413          	slli	s0,a5,0x18
     5a4:	41845413          	srai	s0,s0,0x18
     5a8:	04805663          	blez	s0,5f4 <prvUnlockQueue+0xdc>
     5ac:	01048913          	addi	s2,s1,16
     5b0:	0180006f          	j	5c8 <prvUnlockQueue+0xb0>
     5b4:	fff40793          	addi	a5,s0,-1
     5b8:	01879413          	slli	s0,a5,0x18
     5bc:	0ff7f713          	zext.b	a4,a5
     5c0:	41845413          	srai	s0,s0,0x18
     5c4:	02070863          	beqz	a4,5f4 <prvUnlockQueue+0xdc>
     5c8:	0104a783          	lw	a5,16(s1)
     5cc:	00090513          	mv	a0,s2
     5d0:	02078263          	beqz	a5,5f4 <prvUnlockQueue+0xdc>
     5d4:	4f9000ef          	jal	ra,12cc <xTaskRemoveFromEventList>
     5d8:	fc050ee3          	beqz	a0,5b4 <prvUnlockQueue+0x9c>
     5dc:	5d9000ef          	jal	ra,13b4 <vTaskMissedYield>
     5e0:	fff40793          	addi	a5,s0,-1
     5e4:	01879413          	slli	s0,a5,0x18
     5e8:	0ff7f713          	zext.b	a4,a5
     5ec:	41845413          	srai	s0,s0,0x18
     5f0:	fc071ce3          	bnez	a4,5c8 <prvUnlockQueue+0xb0>
     5f4:	fff00793          	li	a5,-1
     5f8:	04f48223          	sb	a5,68(s1)
     5fc:	00812403          	lw	s0,8(sp)
     600:	00c12083          	lw	ra,12(sp)
     604:	00412483          	lw	s1,4(sp)
     608:	00012903          	lw	s2,0(sp)
     60c:	01010113          	addi	sp,sp,16
     610:	6f10006f          	j	1500 <vTaskExitCritical>

00000614 <xQueueGenericCreate>:
     614:	ff010113          	addi	sp,sp,-16
     618:	00112623          	sw	ra,12(sp)
     61c:	00812423          	sw	s0,8(sp)
     620:	00912223          	sw	s1,4(sp)
     624:	01212023          	sw	s2,0(sp)
     628:	00058493          	mv	s1,a1
     62c:	00050913          	mv	s2,a0
     630:	5a0020ef          	jal	ra,2bd0 <__mulsi3>
     634:	04850513          	addi	a0,a0,72
     638:	b3dff0ef          	jal	ra,174 <pvPortMalloc>
     63c:	00050413          	mv	s0,a0
     640:	06050663          	beqz	a0,6ac <xQueueGenericCreate+0x98>
     644:	00050793          	mv	a5,a0
     648:	08049063          	bnez	s1,6c8 <xQueueGenericCreate+0xb4>
     64c:	00f42023          	sw	a5,0(s0)
     650:	03242e23          	sw	s2,60(s0)
     654:	04942023          	sw	s1,64(s0)
     658:	679000ef          	jal	ra,14d0 <vTaskEnterCritical>
     65c:	04042483          	lw	s1,64(s0)
     660:	03c42583          	lw	a1,60(s0)
     664:	00042903          	lw	s2,0(s0)
     668:	00048513          	mv	a0,s1
     66c:	564020ef          	jal	ra,2bd0 <__mulsi3>
     670:	fff00713          	li	a4,-1
     674:	02042c23          	sw	zero,56(s0)
     678:	409504b3          	sub	s1,a0,s1
     67c:	00a907b3          	add	a5,s2,a0
     680:	04e40223          	sb	a4,68(s0)
     684:	009904b3          	add	s1,s2,s1
     688:	01040513          	addi	a0,s0,16
     68c:	00f42423          	sw	a5,8(s0)
     690:	04e402a3          	sb	a4,69(s0)
     694:	01242223          	sw	s2,4(s0)
     698:	00942623          	sw	s1,12(s0)
     69c:	534000ef          	jal	ra,bd0 <vListInitialise>
     6a0:	02440513          	addi	a0,s0,36
     6a4:	52c000ef          	jal	ra,bd0 <vListInitialise>
     6a8:	659000ef          	jal	ra,1500 <vTaskExitCritical>
     6ac:	00c12083          	lw	ra,12(sp)
     6b0:	00040513          	mv	a0,s0
     6b4:	00812403          	lw	s0,8(sp)
     6b8:	00412483          	lw	s1,4(sp)
     6bc:	00012903          	lw	s2,0(sp)
     6c0:	01010113          	addi	sp,sp,16
     6c4:	00008067          	ret
     6c8:	04850793          	addi	a5,a0,72
     6cc:	f81ff06f          	j	64c <xQueueGenericCreate+0x38>

000006d0 <xQueueGenericSend>:
     6d0:	fc010113          	addi	sp,sp,-64
     6d4:	02812c23          	sw	s0,56(sp)
     6d8:	02912a23          	sw	s1,52(sp)
     6dc:	00050413          	mv	s0,a0
     6e0:	03212823          	sw	s2,48(sp)
     6e4:	03312623          	sw	s3,44(sp)
     6e8:	03412423          	sw	s4,40(sp)
     6ec:	03512223          	sw	s5,36(sp)
     6f0:	03612023          	sw	s6,32(sp)
     6f4:	02112e23          	sw	ra,60(sp)
     6f8:	00058a93          	mv	s5,a1
     6fc:	00c12623          	sw	a2,12(sp)
     700:	00068913          	mv	s2,a3
     704:	01050a13          	addi	s4,a0,16
     708:	5c9000ef          	jal	ra,14d0 <vTaskEnterCritical>
     70c:	03842703          	lw	a4,56(s0)
     710:	03c42783          	lw	a5,60(s0)
     714:	00000b13          	li	s6,0
     718:	00200993          	li	s3,2
     71c:	fff00493          	li	s1,-1
     720:	08f76863          	bltu	a4,a5,7b0 <xQueueGenericSend+0xe0>
     724:	09390663          	beq	s2,s3,7b0 <xQueueGenericSend+0xe0>
     728:	00c12783          	lw	a5,12(sp)
     72c:	10078e63          	beqz	a5,848 <xQueueGenericSend+0x178>
     730:	0e0b0c63          	beqz	s6,828 <xQueueGenericSend+0x158>
     734:	5cd000ef          	jal	ra,1500 <vTaskExitCritical>
     738:	7a0000ef          	jal	ra,ed8 <vTaskSuspendAll>
     73c:	595000ef          	jal	ra,14d0 <vTaskEnterCritical>
     740:	04444783          	lbu	a5,68(s0)
     744:	01879793          	slli	a5,a5,0x18
     748:	4187d793          	srai	a5,a5,0x18
     74c:	00979463          	bne	a5,s1,754 <xQueueGenericSend+0x84>
     750:	04040223          	sb	zero,68(s0)
     754:	04544783          	lbu	a5,69(s0)
     758:	01879793          	slli	a5,a5,0x18
     75c:	4187d793          	srai	a5,a5,0x18
     760:	00979463          	bne	a5,s1,768 <xQueueGenericSend+0x98>
     764:	040402a3          	sb	zero,69(s0)
     768:	599000ef          	jal	ra,1500 <vTaskExitCritical>
     76c:	00c10593          	addi	a1,sp,12
     770:	01810513          	addi	a0,sp,24
     774:	378010ef          	jal	ra,1aec <xTaskCheckForTimeOut>
     778:	0c051e63          	bnez	a0,854 <xQueueGenericSend+0x184>
     77c:	555000ef          	jal	ra,14d0 <vTaskEnterCritical>
     780:	03842703          	lw	a4,56(s0)
     784:	03c42783          	lw	a5,60(s0)
     788:	06f70a63          	beq	a4,a5,7fc <xQueueGenericSend+0x12c>
     78c:	575000ef          	jal	ra,1500 <vTaskExitCritical>
     790:	00040513          	mv	a0,s0
     794:	d85ff0ef          	jal	ra,518 <prvUnlockQueue>
     798:	140010ef          	jal	ra,18d8 <xTaskResumeAll>
     79c:	00100b13          	li	s6,1
     7a0:	531000ef          	jal	ra,14d0 <vTaskEnterCritical>
     7a4:	03842703          	lw	a4,56(s0)
     7a8:	03c42783          	lw	a5,60(s0)
     7ac:	f6f77ce3          	bgeu	a4,a5,724 <xQueueGenericSend+0x54>
     7b0:	00090613          	mv	a2,s2
     7b4:	000a8593          	mv	a1,s5
     7b8:	00040513          	mv	a0,s0
     7bc:	c2dff0ef          	jal	ra,3e8 <prvCopyDataToQueue>
     7c0:	02442783          	lw	a5,36(s0)
     7c4:	06079863          	bnez	a5,834 <xQueueGenericSend+0x164>
     7c8:	06051c63          	bnez	a0,840 <xQueueGenericSend+0x170>
     7cc:	535000ef          	jal	ra,1500 <vTaskExitCritical>
     7d0:	00100513          	li	a0,1
     7d4:	03c12083          	lw	ra,60(sp)
     7d8:	03812403          	lw	s0,56(sp)
     7dc:	03412483          	lw	s1,52(sp)
     7e0:	03012903          	lw	s2,48(sp)
     7e4:	02c12983          	lw	s3,44(sp)
     7e8:	02812a03          	lw	s4,40(sp)
     7ec:	02412a83          	lw	s5,36(sp)
     7f0:	02012b03          	lw	s6,32(sp)
     7f4:	04010113          	addi	sp,sp,64
     7f8:	00008067          	ret
     7fc:	505000ef          	jal	ra,1500 <vTaskExitCritical>
     800:	00c12583          	lw	a1,12(sp)
     804:	000a0513          	mv	a0,s4
     808:	241000ef          	jal	ra,1248 <vTaskPlaceOnEventList>
     80c:	00040513          	mv	a0,s0
     810:	d09ff0ef          	jal	ra,518 <prvUnlockQueue>
     814:	0c4010ef          	jal	ra,18d8 <xTaskResumeAll>
     818:	f80512e3          	bnez	a0,79c <xQueueGenericSend+0xcc>
     81c:	00000073          	ecall
     820:	00100b13          	li	s6,1
     824:	f7dff06f          	j	7a0 <xQueueGenericSend+0xd0>
     828:	01810513          	addi	a0,sp,24
     82c:	36d000ef          	jal	ra,1398 <vTaskInternalSetTimeOutState>
     830:	f05ff06f          	j	734 <xQueueGenericSend+0x64>
     834:	02440513          	addi	a0,s0,36
     838:	295000ef          	jal	ra,12cc <xTaskRemoveFromEventList>
     83c:	f80508e3          	beqz	a0,7cc <xQueueGenericSend+0xfc>
     840:	00000073          	ecall
     844:	f89ff06f          	j	7cc <xQueueGenericSend+0xfc>
     848:	4b9000ef          	jal	ra,1500 <vTaskExitCritical>
     84c:	00000513          	li	a0,0
     850:	f85ff06f          	j	7d4 <xQueueGenericSend+0x104>
     854:	00040513          	mv	a0,s0
     858:	cc1ff0ef          	jal	ra,518 <prvUnlockQueue>
     85c:	07c010ef          	jal	ra,18d8 <xTaskResumeAll>
     860:	00000513          	li	a0,0
     864:	f71ff06f          	j	7d4 <xQueueGenericSend+0x104>

00000868 <xQueueGenericSendFromISR>:
     868:	03852703          	lw	a4,56(a0)
     86c:	03c52783          	lw	a5,60(a0)
     870:	ff010113          	addi	sp,sp,-16
     874:	00812423          	sw	s0,8(sp)
     878:	01212023          	sw	s2,0(sp)
     87c:	00112623          	sw	ra,12(sp)
     880:	00912223          	sw	s1,4(sp)
     884:	00060913          	mv	s2,a2
     888:	00050413          	mv	s0,a0
     88c:	00068613          	mv	a2,a3
     890:	02f76463          	bltu	a4,a5,8b8 <xQueueGenericSendFromISR+0x50>
     894:	00200793          	li	a5,2
     898:	00000513          	li	a0,0
     89c:	00f68e63          	beq	a3,a5,8b8 <xQueueGenericSendFromISR+0x50>
     8a0:	00c12083          	lw	ra,12(sp)
     8a4:	00812403          	lw	s0,8(sp)
     8a8:	00412483          	lw	s1,4(sp)
     8ac:	00012903          	lw	s2,0(sp)
     8b0:	01010113          	addi	sp,sp,16
     8b4:	00008067          	ret
     8b8:	04544483          	lbu	s1,69(s0)
     8bc:	03842783          	lw	a5,56(s0)
     8c0:	00040513          	mv	a0,s0
     8c4:	01849493          	slli	s1,s1,0x18
     8c8:	b21ff0ef          	jal	ra,3e8 <prvCopyDataToQueue>
     8cc:	4184d493          	srai	s1,s1,0x18
     8d0:	fff00793          	li	a5,-1
     8d4:	02f48863          	beq	s1,a5,904 <xQueueGenericSendFromISR+0x9c>
     8d8:	00148493          	addi	s1,s1,1
     8dc:	01849493          	slli	s1,s1,0x18
     8e0:	4184d493          	srai	s1,s1,0x18
     8e4:	049402a3          	sb	s1,69(s0)
     8e8:	00c12083          	lw	ra,12(sp)
     8ec:	00812403          	lw	s0,8(sp)
     8f0:	00412483          	lw	s1,4(sp)
     8f4:	00012903          	lw	s2,0(sp)
     8f8:	00100513          	li	a0,1
     8fc:	01010113          	addi	sp,sp,16
     900:	00008067          	ret
     904:	02442783          	lw	a5,36(s0)
     908:	fe0780e3          	beqz	a5,8e8 <xQueueGenericSendFromISR+0x80>
     90c:	02440513          	addi	a0,s0,36
     910:	1bd000ef          	jal	ra,12cc <xTaskRemoveFromEventList>
     914:	fc050ae3          	beqz	a0,8e8 <xQueueGenericSendFromISR+0x80>
     918:	fc0908e3          	beqz	s2,8e8 <xQueueGenericSendFromISR+0x80>
     91c:	00100793          	li	a5,1
     920:	00f92023          	sw	a5,0(s2)
     924:	00100513          	li	a0,1
     928:	f79ff06f          	j	8a0 <xQueueGenericSendFromISR+0x38>

0000092c <xQueueReceive>:
     92c:	fc010113          	addi	sp,sp,-64
     930:	02812c23          	sw	s0,56(sp)
     934:	00050413          	mv	s0,a0
     938:	03212823          	sw	s2,48(sp)
     93c:	03312623          	sw	s3,44(sp)
     940:	02112e23          	sw	ra,60(sp)
     944:	02912a23          	sw	s1,52(sp)
     948:	03412423          	sw	s4,40(sp)
     94c:	00058993          	mv	s3,a1
     950:	00c12623          	sw	a2,12(sp)
     954:	37d000ef          	jal	ra,14d0 <vTaskEnterCritical>
     958:	03842903          	lw	s2,56(s0)
     95c:	10091463          	bnez	s2,a64 <xQueueReceive+0x138>
     960:	00c12783          	lw	a5,12(sp)
     964:	08078e63          	beqz	a5,a00 <xQueueReceive+0xd4>
     968:	01810513          	addi	a0,sp,24
     96c:	22d000ef          	jal	ra,1398 <vTaskInternalSetTimeOutState>
     970:	fff00493          	li	s1,-1
     974:	02440a13          	addi	s4,s0,36
     978:	389000ef          	jal	ra,1500 <vTaskExitCritical>
     97c:	55c000ef          	jal	ra,ed8 <vTaskSuspendAll>
     980:	351000ef          	jal	ra,14d0 <vTaskEnterCritical>
     984:	04444783          	lbu	a5,68(s0)
     988:	01879793          	slli	a5,a5,0x18
     98c:	4187d793          	srai	a5,a5,0x18
     990:	00979463          	bne	a5,s1,998 <xQueueReceive+0x6c>
     994:	04040223          	sb	zero,68(s0)
     998:	04544783          	lbu	a5,69(s0)
     99c:	01879793          	slli	a5,a5,0x18
     9a0:	4187d793          	srai	a5,a5,0x18
     9a4:	00979463          	bne	a5,s1,9ac <xQueueReceive+0x80>
     9a8:	040402a3          	sb	zero,69(s0)
     9ac:	355000ef          	jal	ra,1500 <vTaskExitCritical>
     9b0:	00c10593          	addi	a1,sp,12
     9b4:	01810513          	addi	a0,sp,24
     9b8:	134010ef          	jal	ra,1aec <xTaskCheckForTimeOut>
     9bc:	06051663          	bnez	a0,a28 <xQueueReceive+0xfc>
     9c0:	311000ef          	jal	ra,14d0 <vTaskEnterCritical>
     9c4:	03842783          	lw	a5,56(s0)
     9c8:	08079063          	bnez	a5,a48 <xQueueReceive+0x11c>
     9cc:	335000ef          	jal	ra,1500 <vTaskExitCritical>
     9d0:	00c12583          	lw	a1,12(sp)
     9d4:	000a0513          	mv	a0,s4
     9d8:	071000ef          	jal	ra,1248 <vTaskPlaceOnEventList>
     9dc:	00040513          	mv	a0,s0
     9e0:	b39ff0ef          	jal	ra,518 <prvUnlockQueue>
     9e4:	6f5000ef          	jal	ra,18d8 <xTaskResumeAll>
     9e8:	0c050c63          	beqz	a0,ac0 <xQueueReceive+0x194>
     9ec:	2e5000ef          	jal	ra,14d0 <vTaskEnterCritical>
     9f0:	03842903          	lw	s2,56(s0)
     9f4:	06091863          	bnez	s2,a64 <xQueueReceive+0x138>
     9f8:	00c12783          	lw	a5,12(sp)
     9fc:	f6079ee3          	bnez	a5,978 <xQueueReceive+0x4c>
     a00:	301000ef          	jal	ra,1500 <vTaskExitCritical>
     a04:	03c12083          	lw	ra,60(sp)
     a08:	03812403          	lw	s0,56(sp)
     a0c:	03412483          	lw	s1,52(sp)
     a10:	03012903          	lw	s2,48(sp)
     a14:	02c12983          	lw	s3,44(sp)
     a18:	02812a03          	lw	s4,40(sp)
     a1c:	00000513          	li	a0,0
     a20:	04010113          	addi	sp,sp,64
     a24:	00008067          	ret
     a28:	00040513          	mv	a0,s0
     a2c:	aedff0ef          	jal	ra,518 <prvUnlockQueue>
     a30:	6a9000ef          	jal	ra,18d8 <xTaskResumeAll>
     a34:	29d000ef          	jal	ra,14d0 <vTaskEnterCritical>
     a38:	03842783          	lw	a5,56(s0)
     a3c:	fc0782e3          	beqz	a5,a00 <xQueueReceive+0xd4>
     a40:	2c1000ef          	jal	ra,1500 <vTaskExitCritical>
     a44:	fa9ff06f          	j	9ec <xQueueReceive+0xc0>
     a48:	2b9000ef          	jal	ra,1500 <vTaskExitCritical>
     a4c:	00040513          	mv	a0,s0
     a50:	ac9ff0ef          	jal	ra,518 <prvUnlockQueue>
     a54:	685000ef          	jal	ra,18d8 <xTaskResumeAll>
     a58:	279000ef          	jal	ra,14d0 <vTaskEnterCritical>
     a5c:	03842903          	lw	s2,56(s0)
     a60:	f8090ce3          	beqz	s2,9f8 <xQueueReceive+0xcc>
     a64:	04042603          	lw	a2,64(s0)
     a68:	02060063          	beqz	a2,a88 <xQueueReceive+0x15c>
     a6c:	00c42583          	lw	a1,12(s0)
     a70:	00842783          	lw	a5,8(s0)
     a74:	00c585b3          	add	a1,a1,a2
     a78:	00b42623          	sw	a1,12(s0)
     a7c:	04f5f663          	bgeu	a1,a5,ac8 <xQueueReceive+0x19c>
     a80:	00098513          	mv	a0,s3
     a84:	170020ef          	jal	ra,2bf4 <memcpy>
     a88:	fff90913          	addi	s2,s2,-1
     a8c:	03242c23          	sw	s2,56(s0)
     a90:	01042783          	lw	a5,16(s0)
     a94:	04079063          	bnez	a5,ad4 <xQueueReceive+0x1a8>
     a98:	269000ef          	jal	ra,1500 <vTaskExitCritical>
     a9c:	03c12083          	lw	ra,60(sp)
     aa0:	03812403          	lw	s0,56(sp)
     aa4:	03412483          	lw	s1,52(sp)
     aa8:	03012903          	lw	s2,48(sp)
     aac:	02c12983          	lw	s3,44(sp)
     ab0:	02812a03          	lw	s4,40(sp)
     ab4:	00100513          	li	a0,1
     ab8:	04010113          	addi	sp,sp,64
     abc:	00008067          	ret
     ac0:	00000073          	ecall
     ac4:	f29ff06f          	j	9ec <xQueueReceive+0xc0>
     ac8:	00042583          	lw	a1,0(s0)
     acc:	00b42623          	sw	a1,12(s0)
     ad0:	fb1ff06f          	j	a80 <xQueueReceive+0x154>
     ad4:	01040513          	addi	a0,s0,16
     ad8:	7f4000ef          	jal	ra,12cc <xTaskRemoveFromEventList>
     adc:	fa050ee3          	beqz	a0,a98 <xQueueReceive+0x16c>
     ae0:	00000073          	ecall
     ae4:	fb5ff06f          	j	a98 <xQueueReceive+0x16c>

00000ae8 <vQueueAddToRegistry>:
     ae8:	00015817          	auipc	a6,0x15
     aec:	b0880813          	addi	a6,a6,-1272 # 155f0 <xQueueRegistry>
     af0:	00080713          	mv	a4,a6
     af4:	00000793          	li	a5,0
     af8:	00800613          	li	a2,8
     afc:	00072683          	lw	a3,0(a4)
     b00:	00870713          	addi	a4,a4,8
     b04:	00068863          	beqz	a3,b14 <vQueueAddToRegistry+0x2c>
     b08:	00178793          	addi	a5,a5,1
     b0c:	fec798e3          	bne	a5,a2,afc <vQueueAddToRegistry+0x14>
     b10:	00008067          	ret
     b14:	00379793          	slli	a5,a5,0x3
     b18:	00f80833          	add	a6,a6,a5
     b1c:	00b82023          	sw	a1,0(a6)
     b20:	00a82223          	sw	a0,4(a6)
     b24:	00008067          	ret

00000b28 <vQueueWaitForMessageRestricted>:
     b28:	ff010113          	addi	sp,sp,-16
     b2c:	00812423          	sw	s0,8(sp)
     b30:	00912223          	sw	s1,4(sp)
     b34:	01212023          	sw	s2,0(sp)
     b38:	00050413          	mv	s0,a0
     b3c:	00112623          	sw	ra,12(sp)
     b40:	00058493          	mv	s1,a1
     b44:	00060913          	mv	s2,a2
     b48:	189000ef          	jal	ra,14d0 <vTaskEnterCritical>
     b4c:	04444783          	lbu	a5,68(s0)
     b50:	fff00713          	li	a4,-1
     b54:	01879793          	slli	a5,a5,0x18
     b58:	4187d793          	srai	a5,a5,0x18
     b5c:	00e79463          	bne	a5,a4,b64 <vQueueWaitForMessageRestricted+0x3c>
     b60:	04040223          	sb	zero,68(s0)
     b64:	04544783          	lbu	a5,69(s0)
     b68:	fff00713          	li	a4,-1
     b6c:	01879793          	slli	a5,a5,0x18
     b70:	4187d793          	srai	a5,a5,0x18
     b74:	00e79463          	bne	a5,a4,b7c <vQueueWaitForMessageRestricted+0x54>
     b78:	040402a3          	sb	zero,69(s0)
     b7c:	185000ef          	jal	ra,1500 <vTaskExitCritical>
     b80:	03842783          	lw	a5,56(s0)
     b84:	02078063          	beqz	a5,ba4 <vQueueWaitForMessageRestricted+0x7c>
     b88:	00040513          	mv	a0,s0
     b8c:	00812403          	lw	s0,8(sp)
     b90:	00c12083          	lw	ra,12(sp)
     b94:	00412483          	lw	s1,4(sp)
     b98:	00012903          	lw	s2,0(sp)
     b9c:	01010113          	addi	sp,sp,16
     ba0:	979ff06f          	j	518 <prvUnlockQueue>
     ba4:	02440513          	addi	a0,s0,36
     ba8:	00090613          	mv	a2,s2
     bac:	00048593          	mv	a1,s1
     bb0:	6d0000ef          	jal	ra,1280 <vTaskPlaceOnEventListRestricted>
     bb4:	00040513          	mv	a0,s0
     bb8:	00812403          	lw	s0,8(sp)
     bbc:	00c12083          	lw	ra,12(sp)
     bc0:	00412483          	lw	s1,4(sp)
     bc4:	00012903          	lw	s2,0(sp)
     bc8:	01010113          	addi	sp,sp,16
     bcc:	94dff06f          	j	518 <prvUnlockQueue>

00000bd0 <vListInitialise>:
     bd0:	00850793          	addi	a5,a0,8
     bd4:	fff00713          	li	a4,-1
     bd8:	00f52223          	sw	a5,4(a0)
     bdc:	00e52423          	sw	a4,8(a0)
     be0:	00f52623          	sw	a5,12(a0)
     be4:	00f52823          	sw	a5,16(a0)
     be8:	00052023          	sw	zero,0(a0)
     bec:	00008067          	ret

00000bf0 <vListInitialiseItem>:
     bf0:	00052823          	sw	zero,16(a0)
     bf4:	00008067          	ret

00000bf8 <vListInsertEnd>:
     bf8:	00452783          	lw	a5,4(a0)
     bfc:	00052703          	lw	a4,0(a0)
     c00:	0087a683          	lw	a3,8(a5)
     c04:	00f5a223          	sw	a5,4(a1)
     c08:	00170713          	addi	a4,a4,1
     c0c:	00d5a423          	sw	a3,8(a1)
     c10:	0087a683          	lw	a3,8(a5)
     c14:	00b6a223          	sw	a1,4(a3)
     c18:	00b7a423          	sw	a1,8(a5)
     c1c:	00a5a823          	sw	a0,16(a1)
     c20:	00e52023          	sw	a4,0(a0)
     c24:	00008067          	ret

00000c28 <vListInsert>:
     c28:	0005a603          	lw	a2,0(a1)
     c2c:	fff00713          	li	a4,-1
     c30:	00850793          	addi	a5,a0,8
     c34:	02e60c63          	beq	a2,a4,c6c <vListInsert+0x44>
     c38:	00078693          	mv	a3,a5
     c3c:	0047a783          	lw	a5,4(a5)
     c40:	0007a703          	lw	a4,0(a5)
     c44:	fee67ae3          	bgeu	a2,a4,c38 <vListInsert+0x10>
     c48:	00f5a223          	sw	a5,4(a1)
     c4c:	00b7a423          	sw	a1,8(a5)
     c50:	00052783          	lw	a5,0(a0)
     c54:	00d5a423          	sw	a3,8(a1)
     c58:	00b6a223          	sw	a1,4(a3)
     c5c:	00a5a823          	sw	a0,16(a1)
     c60:	00178793          	addi	a5,a5,1
     c64:	00f52023          	sw	a5,0(a0)
     c68:	00008067          	ret
     c6c:	01052683          	lw	a3,16(a0)
     c70:	0046a783          	lw	a5,4(a3)
     c74:	fd5ff06f          	j	c48 <vListInsert+0x20>

00000c78 <uxListRemove>:
     c78:	01052783          	lw	a5,16(a0)
     c7c:	00452683          	lw	a3,4(a0)
     c80:	00852703          	lw	a4,8(a0)
     c84:	0047a603          	lw	a2,4(a5)
     c88:	00e6a423          	sw	a4,8(a3)
     c8c:	00d72223          	sw	a3,4(a4)
     c90:	00a60e63          	beq	a2,a0,cac <uxListRemove+0x34>
     c94:	0007a703          	lw	a4,0(a5)
     c98:	00052823          	sw	zero,16(a0)
     c9c:	fff70713          	addi	a4,a4,-1
     ca0:	00e7a023          	sw	a4,0(a5)
     ca4:	0007a503          	lw	a0,0(a5)
     ca8:	00008067          	ret
     cac:	00e7a223          	sw	a4,4(a5)
     cb0:	0007a703          	lw	a4,0(a5)
     cb4:	00052823          	sw	zero,16(a0)
     cb8:	fff70713          	addi	a4,a4,-1
     cbc:	00e7a023          	sw	a4,0(a5)
     cc0:	0007a503          	lw	a0,0(a5)
     cc4:	00008067          	ret

00000cc8 <prvAddCurrentTaskToDelayedList>:
     cc8:	fe010113          	addi	sp,sp,-32
     ccc:	00912a23          	sw	s1,20(sp)
     cd0:	00003497          	auipc	s1,0x3
     cd4:	8c048493          	addi	s1,s1,-1856 # 3590 <pxCurrentTCB>
     cd8:	01212823          	sw	s2,16(sp)
     cdc:	00003917          	auipc	s2,0x3
     ce0:	8e892903          	lw	s2,-1816(s2) # 35c4 <xTickCount>
     ce4:	0004a703          	lw	a4,0(s1)
     ce8:	0004a783          	lw	a5,0(s1)
     cec:	00812c23          	sw	s0,24(sp)
     cf0:	01312623          	sw	s3,12(sp)
     cf4:	00112e23          	sw	ra,28(sp)
     cf8:	00050413          	mv	s0,a0
     cfc:	04070aa3          	sb	zero,85(a4)
     d00:	00478513          	addi	a0,a5,4
     d04:	00058993          	mv	s3,a1
     d08:	f71ff0ef          	jal	ra,c78 <uxListRemove>
     d0c:	02051663          	bnez	a0,d38 <prvAddCurrentTaskToDelayedList+0x70>
     d10:	0004a783          	lw	a5,0(s1)
     d14:	00003717          	auipc	a4,0x3
     d18:	89870713          	addi	a4,a4,-1896 # 35ac <uxTopReadyPriority>
     d1c:	00072683          	lw	a3,0(a4)
     d20:	02c7a603          	lw	a2,44(a5)
     d24:	00100793          	li	a5,1
     d28:	00c797b3          	sll	a5,a5,a2
     d2c:	fff7c793          	not	a5,a5
     d30:	00d7f7b3          	and	a5,a5,a3
     d34:	00f72023          	sw	a5,0(a4)
     d38:	fff00793          	li	a5,-1
     d3c:	08f40263          	beq	s0,a5,dc0 <prvAddCurrentTaskToDelayedList+0xf8>
     d40:	0004a783          	lw	a5,0(s1)
     d44:	00890433          	add	s0,s2,s0
     d48:	0087a223          	sw	s0,4(a5)
     d4c:	05246463          	bltu	s0,s2,d94 <prvAddCurrentTaskToDelayedList+0xcc>
     d50:	00003517          	auipc	a0,0x3
     d54:	84452503          	lw	a0,-1980(a0) # 3594 <pxDelayedTaskList>
     d58:	0004a583          	lw	a1,0(s1)
     d5c:	00458593          	addi	a1,a1,4
     d60:	ec9ff0ef          	jal	ra,c28 <vListInsert>
     d64:	00003797          	auipc	a5,0x3
     d68:	85078793          	addi	a5,a5,-1968 # 35b4 <xNextTaskUnblockTime>
     d6c:	0007a703          	lw	a4,0(a5)
     d70:	00e47463          	bgeu	s0,a4,d78 <prvAddCurrentTaskToDelayedList+0xb0>
     d74:	0087a023          	sw	s0,0(a5)
     d78:	01c12083          	lw	ra,28(sp)
     d7c:	01812403          	lw	s0,24(sp)
     d80:	01412483          	lw	s1,20(sp)
     d84:	01012903          	lw	s2,16(sp)
     d88:	00c12983          	lw	s3,12(sp)
     d8c:	02010113          	addi	sp,sp,32
     d90:	00008067          	ret
     d94:	01812403          	lw	s0,24(sp)
     d98:	00003517          	auipc	a0,0x3
     d9c:	80052503          	lw	a0,-2048(a0) # 3598 <pxOverflowDelayedTaskList>
     da0:	0004a583          	lw	a1,0(s1)
     da4:	01c12083          	lw	ra,28(sp)
     da8:	01412483          	lw	s1,20(sp)
     dac:	01012903          	lw	s2,16(sp)
     db0:	00c12983          	lw	s3,12(sp)
     db4:	00458593          	addi	a1,a1,4
     db8:	02010113          	addi	sp,sp,32
     dbc:	e6dff06f          	j	c28 <vListInsert>
     dc0:	f80980e3          	beqz	s3,d40 <prvAddCurrentTaskToDelayedList+0x78>
     dc4:	0004a583          	lw	a1,0(s1)
     dc8:	01812403          	lw	s0,24(sp)
     dcc:	01c12083          	lw	ra,28(sp)
     dd0:	01412483          	lw	s1,20(sp)
     dd4:	01012903          	lw	s2,16(sp)
     dd8:	00c12983          	lw	s3,12(sp)
     ddc:	00015517          	auipc	a0,0x15
     de0:	91c50513          	addi	a0,a0,-1764 # 156f8 <xSuspendedTaskList>
     de4:	00458593          	addi	a1,a1,4
     de8:	02010113          	addi	sp,sp,32
     dec:	e0dff06f          	j	bf8 <vListInsertEnd>

00000df0 <prvIdleTask>:
     df0:	fe010113          	addi	sp,sp,-32
     df4:	00912a23          	sw	s1,20(sp)
     df8:	01212823          	sw	s2,16(sp)
     dfc:	01312623          	sw	s3,12(sp)
     e00:	01412423          	sw	s4,8(sp)
     e04:	01512223          	sw	s5,4(sp)
     e08:	00112e23          	sw	ra,28(sp)
     e0c:	00812c23          	sw	s0,24(sp)
     e10:	00002497          	auipc	s1,0x2
     e14:	79048493          	addi	s1,s1,1936 # 35a0 <uxDeletedTasksWaitingCleanUp>
     e18:	00002997          	auipc	s3,0x2
     e1c:	7a898993          	addi	s3,s3,1960 # 35c0 <xSchedulerRunning>
     e20:	00002a17          	auipc	s4,0x2
     e24:	770a0a13          	addi	s4,s4,1904 # 3590 <pxCurrentTCB>
     e28:	00015a97          	auipc	s5,0x15
     e2c:	8e4a8a93          	addi	s5,s5,-1820 # 1570c <xTasksWaitingTermination>
     e30:	00002917          	auipc	s2,0x2
     e34:	76c90913          	addi	s2,s2,1900 # 359c <uxCurrentNumberOfTasks>
     e38:	0004a783          	lw	a5,0(s1)
     e3c:	fe078ee3          	beqz	a5,e38 <prvIdleTask+0x48>
     e40:	30047073          	csrci	mstatus,8
     e44:	0009a783          	lw	a5,0(s3)
     e48:	00078c63          	beqz	a5,e60 <prvIdleTask+0x70>
     e4c:	000a2703          	lw	a4,0(s4)
     e50:	000a2783          	lw	a5,0(s4)
     e54:	04472783          	lw	a5,68(a4)
     e58:	00178793          	addi	a5,a5,1
     e5c:	04f72223          	sw	a5,68(a4)
     e60:	00caa783          	lw	a5,12(s5)
     e64:	00c7a403          	lw	s0,12(a5)
     e68:	00440513          	addi	a0,s0,4
     e6c:	e0dff0ef          	jal	ra,c78 <uxListRemove>
     e70:	00092783          	lw	a5,0(s2)
     e74:	fff78793          	addi	a5,a5,-1
     e78:	00f92023          	sw	a5,0(s2)
     e7c:	0004a783          	lw	a5,0(s1)
     e80:	fff78793          	addi	a5,a5,-1
     e84:	00f4a023          	sw	a5,0(s1)
     e88:	0009a783          	lw	a5,0(s3)
     e8c:	02078863          	beqz	a5,ebc <prvIdleTask+0xcc>
     e90:	000a2783          	lw	a5,0(s4)
     e94:	0447a783          	lw	a5,68(a5)
     e98:	02078263          	beqz	a5,ebc <prvIdleTask+0xcc>
     e9c:	000a2703          	lw	a4,0(s4)
     ea0:	000a2683          	lw	a3,0(s4)
     ea4:	04472783          	lw	a5,68(a4)
     ea8:	fff78793          	addi	a5,a5,-1
     eac:	04f72223          	sw	a5,68(a4)
     eb0:	0446a783          	lw	a5,68(a3)
     eb4:	00079463          	bnez	a5,ebc <prvIdleTask+0xcc>
     eb8:	30046073          	csrsi	mstatus,8
     ebc:	03042503          	lw	a0,48(s0)
     ec0:	c10ff0ef          	jal	ra,2d0 <vPortFree>
     ec4:	00040513          	mv	a0,s0
     ec8:	c08ff0ef          	jal	ra,2d0 <vPortFree>
     ecc:	0004a783          	lw	a5,0(s1)
     ed0:	f60798e3          	bnez	a5,e40 <prvIdleTask+0x50>
     ed4:	f65ff06f          	j	e38 <prvIdleTask+0x48>

00000ed8 <vTaskSuspendAll>:
     ed8:	00002717          	auipc	a4,0x2
     edc:	6cc70713          	addi	a4,a4,1740 # 35a4 <uxSchedulerSuspended>
     ee0:	00072783          	lw	a5,0(a4)
     ee4:	00178793          	addi	a5,a5,1
     ee8:	00f72023          	sw	a5,0(a4)
     eec:	00008067          	ret

00000ef0 <xTaskGetTickCount>:
     ef0:	00002517          	auipc	a0,0x2
     ef4:	6d452503          	lw	a0,1748(a0) # 35c4 <xTickCount>
     ef8:	00008067          	ret

00000efc <xTaskIncrementTick>:
     efc:	fd010113          	addi	sp,sp,-48
     f00:	02112623          	sw	ra,44(sp)
     f04:	02812423          	sw	s0,40(sp)
     f08:	02912223          	sw	s1,36(sp)
     f0c:	03212023          	sw	s2,32(sp)
     f10:	01312e23          	sw	s3,28(sp)
     f14:	01412c23          	sw	s4,24(sp)
     f18:	01512a23          	sw	s5,20(sp)
     f1c:	01612823          	sw	s6,16(sp)
     f20:	01712623          	sw	s7,12(sp)
     f24:	01812423          	sw	s8,8(sp)
     f28:	01912223          	sw	s9,4(sp)
     f2c:	00002797          	auipc	a5,0x2
     f30:	6787a783          	lw	a5,1656(a5) # 35a4 <uxSchedulerSuspended>
     f34:	1c079663          	bnez	a5,1100 <xTaskIncrementTick+0x204>
     f38:	00002797          	auipc	a5,0x2
     f3c:	68c78793          	addi	a5,a5,1676 # 35c4 <xTickCount>
     f40:	0007a483          	lw	s1,0(a5)
     f44:	00002c17          	auipc	s8,0x2
     f48:	670c0c13          	addi	s8,s8,1648 # 35b4 <xNextTaskUnblockTime>
     f4c:	00148493          	addi	s1,s1,1
     f50:	0097a023          	sw	s1,0(a5)
     f54:	14048c63          	beqz	s1,10ac <xTaskIncrementTick+0x1b0>
     f58:	000c2783          	lw	a5,0(s8)
     f5c:	0cf4e063          	bltu	s1,a5,101c <xTaskIncrementTick+0x120>
     f60:	00002917          	auipc	s2,0x2
     f64:	63490913          	addi	s2,s2,1588 # 3594 <pxDelayedTaskList>
     f68:	00092783          	lw	a5,0(s2)
     f6c:	00000b13          	li	s6,0
     f70:	00014a17          	auipc	s4,0x14
     f74:	6c0a0a13          	addi	s4,s4,1728 # 15630 <pxReadyTasksLists>
     f78:	0007a783          	lw	a5,0(a5)
     f7c:	00002a97          	auipc	s5,0x2
     f80:	614a8a93          	addi	s5,s5,1556 # 3590 <pxCurrentTCB>
     f84:	1c078063          	beqz	a5,1144 <xTaskIncrementTick+0x248>
     f88:	00002997          	auipc	s3,0x2
     f8c:	62498993          	addi	s3,s3,1572 # 35ac <uxTopReadyPriority>
     f90:	00100b93          	li	s7,1
     f94:	0640006f          	j	ff8 <xTaskIncrementTick+0xfc>
     f98:	ce1ff0ef          	jal	ra,c78 <uxListRemove>
     f9c:	02842783          	lw	a5,40(s0)
     fa0:	01840513          	addi	a0,s0,24
     fa4:	00078463          	beqz	a5,fac <xTaskIncrementTick+0xb0>
     fa8:	cd1ff0ef          	jal	ra,c78 <uxListRemove>
     fac:	02c42783          	lw	a5,44(s0)
     fb0:	0009a703          	lw	a4,0(s3)
     fb4:	000c8593          	mv	a1,s9
     fb8:	00279513          	slli	a0,a5,0x2
     fbc:	00f50533          	add	a0,a0,a5
     fc0:	00251513          	slli	a0,a0,0x2
     fc4:	00fb97b3          	sll	a5,s7,a5
     fc8:	00e7e7b3          	or	a5,a5,a4
     fcc:	00aa0533          	add	a0,s4,a0
     fd0:	00f9a023          	sw	a5,0(s3)
     fd4:	c25ff0ef          	jal	ra,bf8 <vListInsertEnd>
     fd8:	000aa783          	lw	a5,0(s5)
     fdc:	02c42703          	lw	a4,44(s0)
     fe0:	02c7a783          	lw	a5,44(a5)
     fe4:	00f76463          	bltu	a4,a5,fec <xTaskIncrementTick+0xf0>
     fe8:	00100b13          	li	s6,1
     fec:	00092783          	lw	a5,0(s2)
     ff0:	0007a783          	lw	a5,0(a5)
     ff4:	14078863          	beqz	a5,1144 <xTaskIncrementTick+0x248>
     ff8:	00092783          	lw	a5,0(s2)
     ffc:	00c7a783          	lw	a5,12(a5)
    1000:	00c7a403          	lw	s0,12(a5)
    1004:	00442783          	lw	a5,4(s0)
    1008:	00440c93          	addi	s9,s0,4
    100c:	000c8513          	mv	a0,s9
    1010:	f8f4f4e3          	bgeu	s1,a5,f98 <xTaskIncrementTick+0x9c>
    1014:	00fc2023          	sw	a5,0(s8)
    1018:	0180006f          	j	1030 <xTaskIncrementTick+0x134>
    101c:	00000b13          	li	s6,0
    1020:	00014a17          	auipc	s4,0x14
    1024:	610a0a13          	addi	s4,s4,1552 # 15630 <pxReadyTasksLists>
    1028:	00002a97          	auipc	s5,0x2
    102c:	568a8a93          	addi	s5,s5,1384 # 3590 <pxCurrentTCB>
    1030:	000aa783          	lw	a5,0(s5)
    1034:	00100693          	li	a3,1
    1038:	02c7a703          	lw	a4,44(a5)
    103c:	00271793          	slli	a5,a4,0x2
    1040:	00e787b3          	add	a5,a5,a4
    1044:	00279793          	slli	a5,a5,0x2
    1048:	00fa0a33          	add	s4,s4,a5
    104c:	000a2783          	lw	a5,0(s4)
    1050:	00f6f463          	bgeu	a3,a5,1058 <xTaskIncrementTick+0x15c>
    1054:	00100b13          	li	s6,1
    1058:	00002797          	auipc	a5,0x2
    105c:	5647a783          	lw	a5,1380(a5) # 35bc <xPendedTicks>
    1060:	0c078063          	beqz	a5,1120 <xTaskIncrementTick+0x224>
    1064:	00002797          	auipc	a5,0x2
    1068:	5647a783          	lw	a5,1380(a5) # 35c8 <xYieldPending>
    106c:	00078463          	beqz	a5,1074 <xTaskIncrementTick+0x178>
    1070:	00100b13          	li	s6,1
    1074:	02c12083          	lw	ra,44(sp)
    1078:	02812403          	lw	s0,40(sp)
    107c:	02412483          	lw	s1,36(sp)
    1080:	02012903          	lw	s2,32(sp)
    1084:	01c12983          	lw	s3,28(sp)
    1088:	01812a03          	lw	s4,24(sp)
    108c:	01412a83          	lw	s5,20(sp)
    1090:	00c12b83          	lw	s7,12(sp)
    1094:	00812c03          	lw	s8,8(sp)
    1098:	00412c83          	lw	s9,4(sp)
    109c:	000b0513          	mv	a0,s6
    10a0:	01012b03          	lw	s6,16(sp)
    10a4:	03010113          	addi	sp,sp,48
    10a8:	00008067          	ret
    10ac:	00002797          	auipc	a5,0x2
    10b0:	4e878793          	addi	a5,a5,1256 # 3594 <pxDelayedTaskList>
    10b4:	00002717          	auipc	a4,0x2
    10b8:	4e470713          	addi	a4,a4,1252 # 3598 <pxOverflowDelayedTaskList>
    10bc:	0007a603          	lw	a2,0(a5)
    10c0:	00072583          	lw	a1,0(a4)
    10c4:	00002697          	auipc	a3,0x2
    10c8:	4f468693          	addi	a3,a3,1268 # 35b8 <xNumOfOverflows>
    10cc:	00b7a023          	sw	a1,0(a5)
    10d0:	00c72023          	sw	a2,0(a4)
    10d4:	0006a703          	lw	a4,0(a3)
    10d8:	00170713          	addi	a4,a4,1
    10dc:	00e6a023          	sw	a4,0(a3)
    10e0:	0007a703          	lw	a4,0(a5)
    10e4:	00072703          	lw	a4,0(a4)
    10e8:	04071063          	bnez	a4,1128 <xTaskIncrementTick+0x22c>
    10ec:	fff00793          	li	a5,-1
    10f0:	00fc2023          	sw	a5,0(s8)
    10f4:	000c2783          	lw	a5,0(s8)
    10f8:	f2f4e2e3          	bltu	s1,a5,101c <xTaskIncrementTick+0x120>
    10fc:	e65ff06f          	j	f60 <xTaskIncrementTick+0x64>
    1100:	00002717          	auipc	a4,0x2
    1104:	4bc70713          	addi	a4,a4,1212 # 35bc <xPendedTicks>
    1108:	00072783          	lw	a5,0(a4)
    110c:	00000b13          	li	s6,0
    1110:	00178793          	addi	a5,a5,1
    1114:	00f72023          	sw	a5,0(a4)
    1118:	670010ef          	jal	ra,2788 <vApplicationTickHook>
    111c:	f59ff06f          	j	1074 <xTaskIncrementTick+0x178>
    1120:	668010ef          	jal	ra,2788 <vApplicationTickHook>
    1124:	f41ff06f          	j	1064 <xTaskIncrementTick+0x168>
    1128:	0007a783          	lw	a5,0(a5)
    112c:	00c7a783          	lw	a5,12(a5)
    1130:	0007a783          	lw	a5,0(a5)
    1134:	00fc2023          	sw	a5,0(s8)
    1138:	000c2783          	lw	a5,0(s8)
    113c:	eef4e0e3          	bltu	s1,a5,101c <xTaskIncrementTick+0x120>
    1140:	e21ff06f          	j	f60 <xTaskIncrementTick+0x64>
    1144:	fff00793          	li	a5,-1
    1148:	00fc2023          	sw	a5,0(s8)
    114c:	ee5ff06f          	j	1030 <xTaskIncrementTick+0x134>

00001150 <vTaskSwitchContext>:
    1150:	00002797          	auipc	a5,0x2
    1154:	4547a783          	lw	a5,1108(a5) # 35a4 <uxSchedulerSuspended>
    1158:	00078a63          	beqz	a5,116c <vTaskSwitchContext+0x1c>
    115c:	00100793          	li	a5,1
    1160:	00002717          	auipc	a4,0x2
    1164:	46f72423          	sw	a5,1128(a4) # 35c8 <xYieldPending>
    1168:	00008067          	ret
    116c:	ff010113          	addi	sp,sp,-16
    1170:	00002797          	auipc	a5,0x2
    1174:	4407ac23          	sw	zero,1112(a5) # 35c8 <xYieldPending>
    1178:	00812423          	sw	s0,8(sp)
    117c:	00002417          	auipc	s0,0x2
    1180:	41440413          	addi	s0,s0,1044 # 3590 <pxCurrentTCB>
    1184:	00042703          	lw	a4,0(s0)
    1188:	a5a5a7b7          	lui	a5,0xa5a5a
    118c:	00112623          	sw	ra,12(sp)
    1190:	03072703          	lw	a4,48(a4)
    1194:	5a578793          	addi	a5,a5,1445 # a5a5a5a5 <_stack_top+0xa5a44955>
    1198:	00072683          	lw	a3,0(a4)
    119c:	00f69663          	bne	a3,a5,11a8 <vTaskSwitchContext+0x58>
    11a0:	00472783          	lw	a5,4(a4)
    11a4:	06d78863          	beq	a5,a3,1214 <vTaskSwitchContext+0xc4>
    11a8:	00042503          	lw	a0,0(s0)
    11ac:	00042583          	lw	a1,0(s0)
    11b0:	03458593          	addi	a1,a1,52
    11b4:	5b4010ef          	jal	ra,2768 <vApplicationStackOverflowHook>
    11b8:	00002517          	auipc	a0,0x2
    11bc:	3f452503          	lw	a0,1012(a0) # 35ac <uxTopReadyPriority>
    11c0:	1c5010ef          	jal	ra,2b84 <__clzsi2>
    11c4:	01f00793          	li	a5,31
    11c8:	40a787b3          	sub	a5,a5,a0
    11cc:	00279513          	slli	a0,a5,0x2
    11d0:	00f50533          	add	a0,a0,a5
    11d4:	00251513          	slli	a0,a0,0x2
    11d8:	00014797          	auipc	a5,0x14
    11dc:	45878793          	addi	a5,a5,1112 # 15630 <pxReadyTasksLists>
    11e0:	00a786b3          	add	a3,a5,a0
    11e4:	0046a703          	lw	a4,4(a3)
    11e8:	00850513          	addi	a0,a0,8
    11ec:	00a787b3          	add	a5,a5,a0
    11f0:	00472703          	lw	a4,4(a4)
    11f4:	00e6a223          	sw	a4,4(a3)
    11f8:	02f70863          	beq	a4,a5,1228 <vTaskSwitchContext+0xd8>
    11fc:	00c72783          	lw	a5,12(a4)
    1200:	00c12083          	lw	ra,12(sp)
    1204:	00f42023          	sw	a5,0(s0)
    1208:	00812403          	lw	s0,8(sp)
    120c:	01010113          	addi	sp,sp,16
    1210:	00008067          	ret
    1214:	00872683          	lw	a3,8(a4)
    1218:	f8f698e3          	bne	a3,a5,11a8 <vTaskSwitchContext+0x58>
    121c:	00c72783          	lw	a5,12(a4)
    1220:	f8d794e3          	bne	a5,a3,11a8 <vTaskSwitchContext+0x58>
    1224:	f95ff06f          	j	11b8 <vTaskSwitchContext+0x68>
    1228:	00472703          	lw	a4,4(a4)
    122c:	00c12083          	lw	ra,12(sp)
    1230:	00c72783          	lw	a5,12(a4)
    1234:	00e6a223          	sw	a4,4(a3)
    1238:	00f42023          	sw	a5,0(s0)
    123c:	00812403          	lw	s0,8(sp)
    1240:	01010113          	addi	sp,sp,16
    1244:	00008067          	ret

00001248 <vTaskPlaceOnEventList>:
    1248:	ff010113          	addi	sp,sp,-16
    124c:	00002797          	auipc	a5,0x2
    1250:	3447a783          	lw	a5,836(a5) # 3590 <pxCurrentTCB>
    1254:	00812423          	sw	s0,8(sp)
    1258:	00058413          	mv	s0,a1
    125c:	01878593          	addi	a1,a5,24
    1260:	00112623          	sw	ra,12(sp)
    1264:	9c5ff0ef          	jal	ra,c28 <vListInsert>
    1268:	00040513          	mv	a0,s0
    126c:	00812403          	lw	s0,8(sp)
    1270:	00c12083          	lw	ra,12(sp)
    1274:	00100593          	li	a1,1
    1278:	01010113          	addi	sp,sp,16
    127c:	a4dff06f          	j	cc8 <prvAddCurrentTaskToDelayedList>

00001280 <vTaskPlaceOnEventListRestricted>:
    1280:	ff010113          	addi	sp,sp,-16
    1284:	00002797          	auipc	a5,0x2
    1288:	30c7a783          	lw	a5,780(a5) # 3590 <pxCurrentTCB>
    128c:	00812423          	sw	s0,8(sp)
    1290:	00912223          	sw	s1,4(sp)
    1294:	00060413          	mv	s0,a2
    1298:	00058493          	mv	s1,a1
    129c:	01878593          	addi	a1,a5,24
    12a0:	00112623          	sw	ra,12(sp)
    12a4:	955ff0ef          	jal	ra,bf8 <vListInsertEnd>
    12a8:	00040463          	beqz	s0,12b0 <vTaskPlaceOnEventListRestricted+0x30>
    12ac:	fff00493          	li	s1,-1
    12b0:	00040593          	mv	a1,s0
    12b4:	00812403          	lw	s0,8(sp)
    12b8:	00c12083          	lw	ra,12(sp)
    12bc:	00048513          	mv	a0,s1
    12c0:	00412483          	lw	s1,4(sp)
    12c4:	01010113          	addi	sp,sp,16
    12c8:	a01ff06f          	j	cc8 <prvAddCurrentTaskToDelayedList>

000012cc <xTaskRemoveFromEventList>:
    12cc:	00c52783          	lw	a5,12(a0)
    12d0:	ff010113          	addi	sp,sp,-16
    12d4:	00812423          	sw	s0,8(sp)
    12d8:	00c7a403          	lw	s0,12(a5)
    12dc:	00912223          	sw	s1,4(sp)
    12e0:	00112623          	sw	ra,12(sp)
    12e4:	01840493          	addi	s1,s0,24
    12e8:	00048513          	mv	a0,s1
    12ec:	98dff0ef          	jal	ra,c78 <uxListRemove>
    12f0:	00002797          	auipc	a5,0x2
    12f4:	2b47a783          	lw	a5,692(a5) # 35a4 <uxSchedulerSuspended>
    12f8:	08079663          	bnez	a5,1384 <xTaskRemoveFromEventList+0xb8>
    12fc:	00440493          	addi	s1,s0,4
    1300:	00048513          	mv	a0,s1
    1304:	975ff0ef          	jal	ra,c78 <uxListRemove>
    1308:	02c42683          	lw	a3,44(s0)
    130c:	00002617          	auipc	a2,0x2
    1310:	2a060613          	addi	a2,a2,672 # 35ac <uxTopReadyPriority>
    1314:	00062583          	lw	a1,0(a2)
    1318:	00269713          	slli	a4,a3,0x2
    131c:	00d70733          	add	a4,a4,a3
    1320:	00100793          	li	a5,1
    1324:	00d797b3          	sll	a5,a5,a3
    1328:	00271713          	slli	a4,a4,0x2
    132c:	00014517          	auipc	a0,0x14
    1330:	30450513          	addi	a0,a0,772 # 15630 <pxReadyTasksLists>
    1334:	00b7e7b3          	or	a5,a5,a1
    1338:	00e50533          	add	a0,a0,a4
    133c:	00048593          	mv	a1,s1
    1340:	00f62023          	sw	a5,0(a2)
    1344:	8b5ff0ef          	jal	ra,bf8 <vListInsertEnd>
    1348:	00002797          	auipc	a5,0x2
    134c:	2487a783          	lw	a5,584(a5) # 3590 <pxCurrentTCB>
    1350:	02c42703          	lw	a4,44(s0)
    1354:	02c7a783          	lw	a5,44(a5)
    1358:	00000513          	li	a0,0
    135c:	00e7fa63          	bgeu	a5,a4,1370 <xTaskRemoveFromEventList+0xa4>
    1360:	00100793          	li	a5,1
    1364:	00002717          	auipc	a4,0x2
    1368:	26f72223          	sw	a5,612(a4) # 35c8 <xYieldPending>
    136c:	00100513          	li	a0,1
    1370:	00c12083          	lw	ra,12(sp)
    1374:	00812403          	lw	s0,8(sp)
    1378:	00412483          	lw	s1,4(sp)
    137c:	01010113          	addi	sp,sp,16
    1380:	00008067          	ret
    1384:	00048593          	mv	a1,s1
    1388:	00014517          	auipc	a0,0x14
    138c:	35c50513          	addi	a0,a0,860 # 156e4 <xPendingReadyList>
    1390:	869ff0ef          	jal	ra,bf8 <vListInsertEnd>
    1394:	fb5ff06f          	j	1348 <xTaskRemoveFromEventList+0x7c>

00001398 <vTaskInternalSetTimeOutState>:
    1398:	00002717          	auipc	a4,0x2
    139c:	22072703          	lw	a4,544(a4) # 35b8 <xNumOfOverflows>
    13a0:	00002797          	auipc	a5,0x2
    13a4:	2247a783          	lw	a5,548(a5) # 35c4 <xTickCount>
    13a8:	00e52023          	sw	a4,0(a0)
    13ac:	00f52223          	sw	a5,4(a0)
    13b0:	00008067          	ret

000013b4 <vTaskMissedYield>:
    13b4:	00100793          	li	a5,1
    13b8:	00002717          	auipc	a4,0x2
    13bc:	20f72823          	sw	a5,528(a4) # 35c8 <xYieldPending>
    13c0:	00008067          	ret

000013c4 <xTaskGetSchedulerState>:
    13c4:	00002797          	auipc	a5,0x2
    13c8:	1fc7a783          	lw	a5,508(a5) # 35c0 <xSchedulerRunning>
    13cc:	00100513          	li	a0,1
    13d0:	00078a63          	beqz	a5,13e4 <xTaskGetSchedulerState+0x20>
    13d4:	00002517          	auipc	a0,0x2
    13d8:	1d052503          	lw	a0,464(a0) # 35a4 <uxSchedulerSuspended>
    13dc:	00153513          	seqz	a0,a0
    13e0:	00151513          	slli	a0,a0,0x1
    13e4:	00008067          	ret

000013e8 <xTaskPriorityDisinherit>:
    13e8:	04050663          	beqz	a0,1434 <xTaskPriorityDisinherit+0x4c>
    13ec:	04c52783          	lw	a5,76(a0)
    13f0:	ff010113          	addi	sp,sp,-16
    13f4:	02c52683          	lw	a3,44(a0)
    13f8:	04852703          	lw	a4,72(a0)
    13fc:	00812423          	sw	s0,8(sp)
    1400:	00112623          	sw	ra,12(sp)
    1404:	00912223          	sw	s1,4(sp)
    1408:	fff78793          	addi	a5,a5,-1
    140c:	04f52623          	sw	a5,76(a0)
    1410:	00050413          	mv	s0,a0
    1414:	00e68463          	beq	a3,a4,141c <xTaskPriorityDisinherit+0x34>
    1418:	02078263          	beqz	a5,143c <xTaskPriorityDisinherit+0x54>
    141c:	00c12083          	lw	ra,12(sp)
    1420:	00812403          	lw	s0,8(sp)
    1424:	00412483          	lw	s1,4(sp)
    1428:	00000513          	li	a0,0
    142c:	01010113          	addi	sp,sp,16
    1430:	00008067          	ret
    1434:	00000513          	li	a0,0
    1438:	00008067          	ret
    143c:	00450493          	addi	s1,a0,4
    1440:	00048513          	mv	a0,s1
    1444:	835ff0ef          	jal	ra,c78 <uxListRemove>
    1448:	00002617          	auipc	a2,0x2
    144c:	16460613          	addi	a2,a2,356 # 35ac <uxTopReadyPriority>
    1450:	02051063          	bnez	a0,1470 <xTaskPriorityDisinherit+0x88>
    1454:	02c42683          	lw	a3,44(s0)
    1458:	00062703          	lw	a4,0(a2)
    145c:	00100793          	li	a5,1
    1460:	00d797b3          	sll	a5,a5,a3
    1464:	fff7c793          	not	a5,a5
    1468:	00e7f7b3          	and	a5,a5,a4
    146c:	00f62023          	sw	a5,0(a2)
    1470:	04842683          	lw	a3,72(s0)
    1474:	00062583          	lw	a1,0(a2)
    1478:	00700513          	li	a0,7
    147c:	00269713          	slli	a4,a3,0x2
    1480:	40d50533          	sub	a0,a0,a3
    1484:	00d70733          	add	a4,a4,a3
    1488:	00100793          	li	a5,1
    148c:	00a42c23          	sw	a0,24(s0)
    1490:	00d797b3          	sll	a5,a5,a3
    1494:	00271713          	slli	a4,a4,0x2
    1498:	00014517          	auipc	a0,0x14
    149c:	19850513          	addi	a0,a0,408 # 15630 <pxReadyTasksLists>
    14a0:	00b7e7b3          	or	a5,a5,a1
    14a4:	02d42623          	sw	a3,44(s0)
    14a8:	00048593          	mv	a1,s1
    14ac:	00e50533          	add	a0,a0,a4
    14b0:	00f62023          	sw	a5,0(a2)
    14b4:	f44ff0ef          	jal	ra,bf8 <vListInsertEnd>
    14b8:	00c12083          	lw	ra,12(sp)
    14bc:	00812403          	lw	s0,8(sp)
    14c0:	00412483          	lw	s1,4(sp)
    14c4:	00100513          	li	a0,1
    14c8:	01010113          	addi	sp,sp,16
    14cc:	00008067          	ret

000014d0 <vTaskEnterCritical>:
    14d0:	30047073          	csrci	mstatus,8
    14d4:	00002797          	auipc	a5,0x2
    14d8:	0ec7a783          	lw	a5,236(a5) # 35c0 <xSchedulerRunning>
    14dc:	02078063          	beqz	a5,14fc <vTaskEnterCritical+0x2c>
    14e0:	00002797          	auipc	a5,0x2
    14e4:	0b078793          	addi	a5,a5,176 # 3590 <pxCurrentTCB>
    14e8:	0007a703          	lw	a4,0(a5)
    14ec:	0007a783          	lw	a5,0(a5)
    14f0:	04472783          	lw	a5,68(a4)
    14f4:	00178793          	addi	a5,a5,1
    14f8:	04f72223          	sw	a5,68(a4)
    14fc:	00008067          	ret

00001500 <vTaskExitCritical>:
    1500:	00002797          	auipc	a5,0x2
    1504:	0c07a783          	lw	a5,192(a5) # 35c0 <xSchedulerRunning>
    1508:	02078c63          	beqz	a5,1540 <vTaskExitCritical+0x40>
    150c:	00002797          	auipc	a5,0x2
    1510:	08478793          	addi	a5,a5,132 # 3590 <pxCurrentTCB>
    1514:	0007a703          	lw	a4,0(a5)
    1518:	04472703          	lw	a4,68(a4)
    151c:	02070263          	beqz	a4,1540 <vTaskExitCritical+0x40>
    1520:	0007a703          	lw	a4,0(a5)
    1524:	0007a683          	lw	a3,0(a5)
    1528:	04472783          	lw	a5,68(a4)
    152c:	fff78793          	addi	a5,a5,-1
    1530:	04f72223          	sw	a5,68(a4)
    1534:	0446a783          	lw	a5,68(a3)
    1538:	00079463          	bnez	a5,1540 <vTaskExitCritical+0x40>
    153c:	30046073          	csrsi	mstatus,8
    1540:	00008067          	ret

00001544 <xTaskCreate>:
    1544:	fd010113          	addi	sp,sp,-48
    1548:	02912223          	sw	s1,36(sp)
    154c:	00261493          	slli	s1,a2,0x2
    1550:	01312e23          	sw	s3,28(sp)
    1554:	00050993          	mv	s3,a0
    1558:	00048513          	mv	a0,s1
    155c:	01412c23          	sw	s4,24(sp)
    1560:	01512a23          	sw	s5,20(sp)
    1564:	01612823          	sw	s6,16(sp)
    1568:	01712623          	sw	s7,12(sp)
    156c:	02112623          	sw	ra,44(sp)
    1570:	02812423          	sw	s0,40(sp)
    1574:	03212023          	sw	s2,32(sp)
    1578:	01812423          	sw	s8,8(sp)
    157c:	00058b93          	mv	s7,a1
    1580:	00068a13          	mv	s4,a3
    1584:	00070b13          	mv	s6,a4
    1588:	00078a93          	mv	s5,a5
    158c:	be9fe0ef          	jal	ra,174 <pvPortMalloc>
    1590:	1c050a63          	beqz	a0,1764 <xTaskCreate+0x220>
    1594:	00050913          	mv	s2,a0
    1598:	05800513          	li	a0,88
    159c:	bd9fe0ef          	jal	ra,174 <pvPortMalloc>
    15a0:	00050413          	mv	s0,a0
    15a4:	1e050463          	beqz	a0,178c <xTaskCreate+0x248>
    15a8:	03252823          	sw	s2,48(a0)
    15ac:	00048613          	mv	a2,s1
    15b0:	0a500593          	li	a1,165
    15b4:	00090513          	mv	a0,s2
    15b8:	085010ef          	jal	ra,2e3c <memset>
    15bc:	03042c03          	lw	s8,48(s0)
    15c0:	1e0b8e63          	beqz	s7,17bc <xTaskCreate+0x278>
    15c4:	000b8593          	mv	a1,s7
    15c8:	03440813          	addi	a6,s0,52
    15cc:	010b8793          	addi	a5,s7,16
    15d0:	0005c883          	lbu	a7,0(a1)
    15d4:	00180813          	addi	a6,a6,1
    15d8:	00158593          	addi	a1,a1,1
    15dc:	ff180fa3          	sb	a7,-1(a6)
    15e0:	00088463          	beqz	a7,15e8 <xTaskCreate+0xa4>
    15e4:	fef596e3          	bne	a1,a5,15d0 <xTaskCreate+0x8c>
    15e8:	040401a3          	sb	zero,67(s0)
    15ec:	00600793          	li	a5,6
    15f0:	000b0913          	mv	s2,s6
    15f4:	1967e863          	bltu	a5,s6,1784 <xTaskCreate+0x240>
    15f8:	00440b13          	addi	s6,s0,4
    15fc:	000b0513          	mv	a0,s6
    1600:	03242623          	sw	s2,44(s0)
    1604:	05242423          	sw	s2,72(s0)
    1608:	04042623          	sw	zero,76(s0)
    160c:	de4ff0ef          	jal	ra,bf0 <vListInitialiseItem>
    1610:	01840513          	addi	a0,s0,24
    1614:	ddcff0ef          	jal	ra,bf0 <vListInitialiseItem>
    1618:	00700793          	li	a5,7
    161c:	ffc48493          	addi	s1,s1,-4
    1620:	412787b3          	sub	a5,a5,s2
    1624:	009c0533          	add	a0,s8,s1
    1628:	00842823          	sw	s0,16(s0)
    162c:	00f42c23          	sw	a5,24(s0)
    1630:	02842223          	sw	s0,36(s0)
    1634:	04042223          	sw	zero,68(s0)
    1638:	04040823          	sb	zero,80(s0)
    163c:	040408a3          	sb	zero,81(s0)
    1640:	04040923          	sb	zero,82(s0)
    1644:	040409a3          	sb	zero,83(s0)
    1648:	04040a23          	sb	zero,84(s0)
    164c:	04040aa3          	sb	zero,85(s0)
    1650:	000a0613          	mv	a2,s4
    1654:	00098593          	mv	a1,s3
    1658:	ff057513          	andi	a0,a0,-16
    165c:	4a4010ef          	jal	ra,2b00 <pxPortInitialiseStack>
    1660:	00a42023          	sw	a0,0(s0)
    1664:	000a8463          	beqz	s5,166c <xTaskCreate+0x128>
    1668:	008aa023          	sw	s0,0(s5)
    166c:	30047073          	csrci	mstatus,8
    1670:	00002917          	auipc	s2,0x2
    1674:	f5090913          	addi	s2,s2,-176 # 35c0 <xSchedulerRunning>
    1678:	00092783          	lw	a5,0(s2)
    167c:	00002497          	auipc	s1,0x2
    1680:	f1448493          	addi	s1,s1,-236 # 3590 <pxCurrentTCB>
    1684:	0e079463          	bnez	a5,176c <xTaskCreate+0x228>
    1688:	00002717          	auipc	a4,0x2
    168c:	f1470713          	addi	a4,a4,-236 # 359c <uxCurrentNumberOfTasks>
    1690:	00072783          	lw	a5,0(a4)
    1694:	00178793          	addi	a5,a5,1
    1698:	00f72023          	sw	a5,0(a4)
    169c:	0004a783          	lw	a5,0(s1)
    16a0:	0e078e63          	beqz	a5,179c <xTaskCreate+0x258>
    16a4:	00092783          	lw	a5,0(s2)
    16a8:	02c42703          	lw	a4,44(s0)
    16ac:	00014997          	auipc	s3,0x14
    16b0:	f8498993          	addi	s3,s3,-124 # 15630 <pxReadyTasksLists>
    16b4:	00079a63          	bnez	a5,16c8 <xTaskCreate+0x184>
    16b8:	0004a783          	lw	a5,0(s1)
    16bc:	02c7a783          	lw	a5,44(a5)
    16c0:	00f76463          	bltu	a4,a5,16c8 <xTaskCreate+0x184>
    16c4:	0084a023          	sw	s0,0(s1)
    16c8:	00002817          	auipc	a6,0x2
    16cc:	ee080813          	addi	a6,a6,-288 # 35a8 <uxTaskNumber>
    16d0:	00002617          	auipc	a2,0x2
    16d4:	edc60613          	addi	a2,a2,-292 # 35ac <uxTopReadyPriority>
    16d8:	00062583          	lw	a1,0(a2)
    16dc:	00082683          	lw	a3,0(a6)
    16e0:	00271513          	slli	a0,a4,0x2
    16e4:	00e50533          	add	a0,a0,a4
    16e8:	00100793          	li	a5,1
    16ec:	00e797b3          	sll	a5,a5,a4
    16f0:	00251513          	slli	a0,a0,0x2
    16f4:	00b7e7b3          	or	a5,a5,a1
    16f8:	00168713          	addi	a4,a3,1
    16fc:	00a98533          	add	a0,s3,a0
    1700:	000b0593          	mv	a1,s6
    1704:	00f62023          	sw	a5,0(a2)
    1708:	00e82023          	sw	a4,0(a6)
    170c:	cecff0ef          	jal	ra,bf8 <vListInsertEnd>
    1710:	df1ff0ef          	jal	ra,1500 <vTaskExitCritical>
    1714:	00092783          	lw	a5,0(s2)
    1718:	00100513          	li	a0,1
    171c:	00078c63          	beqz	a5,1734 <xTaskCreate+0x1f0>
    1720:	0004a703          	lw	a4,0(s1)
    1724:	02c42783          	lw	a5,44(s0)
    1728:	02c72703          	lw	a4,44(a4)
    172c:	00f77463          	bgeu	a4,a5,1734 <xTaskCreate+0x1f0>
    1730:	00000073          	ecall
    1734:	02c12083          	lw	ra,44(sp)
    1738:	02812403          	lw	s0,40(sp)
    173c:	02412483          	lw	s1,36(sp)
    1740:	02012903          	lw	s2,32(sp)
    1744:	01c12983          	lw	s3,28(sp)
    1748:	01812a03          	lw	s4,24(sp)
    174c:	01412a83          	lw	s5,20(sp)
    1750:	01012b03          	lw	s6,16(sp)
    1754:	00c12b83          	lw	s7,12(sp)
    1758:	00812c03          	lw	s8,8(sp)
    175c:	03010113          	addi	sp,sp,48
    1760:	00008067          	ret
    1764:	fff00513          	li	a0,-1
    1768:	fcdff06f          	j	1734 <xTaskCreate+0x1f0>
    176c:	0004a703          	lw	a4,0(s1)
    1770:	0004a783          	lw	a5,0(s1)
    1774:	04472783          	lw	a5,68(a4)
    1778:	00178793          	addi	a5,a5,1
    177c:	04f72223          	sw	a5,68(a4)
    1780:	f09ff06f          	j	1688 <xTaskCreate+0x144>
    1784:	00600913          	li	s2,6
    1788:	e71ff06f          	j	15f8 <xTaskCreate+0xb4>
    178c:	00090513          	mv	a0,s2
    1790:	b41fe0ef          	jal	ra,2d0 <vPortFree>
    1794:	fff00513          	li	a0,-1
    1798:	f9dff06f          	j	1734 <xTaskCreate+0x1f0>
    179c:	0084a023          	sw	s0,0(s1)
    17a0:	00072703          	lw	a4,0(a4)
    17a4:	00100793          	li	a5,1
    17a8:	00f70e63          	beq	a4,a5,17c4 <xTaskCreate+0x280>
    17ac:	02c42703          	lw	a4,44(s0)
    17b0:	00014997          	auipc	s3,0x14
    17b4:	e8098993          	addi	s3,s3,-384 # 15630 <pxReadyTasksLists>
    17b8:	f11ff06f          	j	16c8 <xTaskCreate+0x184>
    17bc:	02040a23          	sb	zero,52(s0)
    17c0:	e2dff06f          	j	15ec <xTaskCreate+0xa8>
    17c4:	00014997          	auipc	s3,0x14
    17c8:	e6c98993          	addi	s3,s3,-404 # 15630 <pxReadyTasksLists>
    17cc:	00098a13          	mv	s4,s3
    17d0:	00014a97          	auipc	s5,0x14
    17d4:	eeca8a93          	addi	s5,s5,-276 # 156bc <xDelayedTaskList1>
    17d8:	000a0513          	mv	a0,s4
    17dc:	014a0a13          	addi	s4,s4,20
    17e0:	bf0ff0ef          	jal	ra,bd0 <vListInitialise>
    17e4:	ff4a9ae3          	bne	s5,s4,17d8 <xTaskCreate+0x294>
    17e8:	00014a97          	auipc	s5,0x14
    17ec:	ed4a8a93          	addi	s5,s5,-300 # 156bc <xDelayedTaskList1>
    17f0:	000a8513          	mv	a0,s5
    17f4:	bdcff0ef          	jal	ra,bd0 <vListInitialise>
    17f8:	00014a17          	auipc	s4,0x14
    17fc:	ed8a0a13          	addi	s4,s4,-296 # 156d0 <xDelayedTaskList2>
    1800:	000a0513          	mv	a0,s4
    1804:	bccff0ef          	jal	ra,bd0 <vListInitialise>
    1808:	00014517          	auipc	a0,0x14
    180c:	edc50513          	addi	a0,a0,-292 # 156e4 <xPendingReadyList>
    1810:	bc0ff0ef          	jal	ra,bd0 <vListInitialise>
    1814:	00014517          	auipc	a0,0x14
    1818:	ef850513          	addi	a0,a0,-264 # 1570c <xTasksWaitingTermination>
    181c:	bb4ff0ef          	jal	ra,bd0 <vListInitialise>
    1820:	00014517          	auipc	a0,0x14
    1824:	ed850513          	addi	a0,a0,-296 # 156f8 <xSuspendedTaskList>
    1828:	ba8ff0ef          	jal	ra,bd0 <vListInitialise>
    182c:	00002797          	auipc	a5,0x2
    1830:	d757a423          	sw	s5,-664(a5) # 3594 <pxDelayedTaskList>
    1834:	02c42703          	lw	a4,44(s0)
    1838:	00002797          	auipc	a5,0x2
    183c:	d747a023          	sw	s4,-672(a5) # 3598 <pxOverflowDelayedTaskList>
    1840:	e89ff06f          	j	16c8 <xTaskCreate+0x184>

00001844 <vTaskStartScheduler>:
    1844:	ff010113          	addi	sp,sp,-16
    1848:	00002797          	auipc	a5,0x2
    184c:	d6878793          	addi	a5,a5,-664 # 35b0 <xIdleTaskHandle>
    1850:	00000713          	li	a4,0
    1854:	00000693          	li	a3,0
    1858:	20000613          	li	a2,512
    185c:	00001597          	auipc	a1,0x1
    1860:	74858593          	addi	a1,a1,1864 # 2fa4 <_etext>
    1864:	fffff517          	auipc	a0,0xfffff
    1868:	58c50513          	addi	a0,a0,1420 # df0 <prvIdleTask>
    186c:	00112623          	sw	ra,12(sp)
    1870:	00812423          	sw	s0,8(sp)
    1874:	cd1ff0ef          	jal	ra,1544 <xTaskCreate>
    1878:	00100793          	li	a5,1
    187c:	00f50c63          	beq	a0,a5,1894 <vTaskStartScheduler+0x50>
    1880:	00c12083          	lw	ra,12(sp)
    1884:	00812403          	lw	s0,8(sp)
    1888:	8081a783          	lw	a5,-2040(gp) # 3548 <uxTopUsedPriority>
    188c:	01010113          	addi	sp,sp,16
    1890:	00008067          	ret
    1894:	00050413          	mv	s0,a0
    1898:	3f0000ef          	jal	ra,1c88 <xTimerCreateTimerTask>
    189c:	fe8512e3          	bne	a0,s0,1880 <vTaskStartScheduler+0x3c>
    18a0:	30047073          	csrci	mstatus,8
    18a4:	fff00793          	li	a5,-1
    18a8:	00002717          	auipc	a4,0x2
    18ac:	d0f72623          	sw	a5,-756(a4) # 35b4 <xNextTaskUnblockTime>
    18b0:	00002797          	auipc	a5,0x2
    18b4:	d0a7a823          	sw	a0,-752(a5) # 35c0 <xSchedulerRunning>
    18b8:	00002797          	auipc	a5,0x2
    18bc:	d007a623          	sw	zero,-756(a5) # 35c4 <xTickCount>
    18c0:	afdfe0ef          	jal	ra,3bc <xPortStartScheduler>
    18c4:	00c12083          	lw	ra,12(sp)
    18c8:	00812403          	lw	s0,8(sp)
    18cc:	8081a783          	lw	a5,-2040(gp) # 3548 <uxTopUsedPriority>
    18d0:	01010113          	addi	sp,sp,16
    18d4:	00008067          	ret

000018d8 <xTaskResumeAll>:
    18d8:	fd010113          	addi	sp,sp,-48
    18dc:	02112623          	sw	ra,44(sp)
    18e0:	02812423          	sw	s0,40(sp)
    18e4:	02912223          	sw	s1,36(sp)
    18e8:	03212023          	sw	s2,32(sp)
    18ec:	01312e23          	sw	s3,28(sp)
    18f0:	01412c23          	sw	s4,24(sp)
    18f4:	01512a23          	sw	s5,20(sp)
    18f8:	01612823          	sw	s6,16(sp)
    18fc:	01712623          	sw	s7,12(sp)
    1900:	30047073          	csrci	mstatus,8
    1904:	00002797          	auipc	a5,0x2
    1908:	cbc7a783          	lw	a5,-836(a5) # 35c0 <xSchedulerRunning>
    190c:	02078063          	beqz	a5,192c <xTaskResumeAll+0x54>
    1910:	00002917          	auipc	s2,0x2
    1914:	c8090913          	addi	s2,s2,-896 # 3590 <pxCurrentTCB>
    1918:	00092703          	lw	a4,0(s2)
    191c:	00092783          	lw	a5,0(s2)
    1920:	04472783          	lw	a5,68(a4)
    1924:	00178793          	addi	a5,a5,1
    1928:	04f72223          	sw	a5,68(a4)
    192c:	00002797          	auipc	a5,0x2
    1930:	c7878793          	addi	a5,a5,-904 # 35a4 <uxSchedulerSuspended>
    1934:	0007a703          	lw	a4,0(a5)
    1938:	fff70713          	addi	a4,a4,-1
    193c:	00e7a023          	sw	a4,0(a5)
    1940:	0007a783          	lw	a5,0(a5)
    1944:	10079263          	bnez	a5,1a48 <xTaskResumeAll+0x170>
    1948:	00002797          	auipc	a5,0x2
    194c:	c547a783          	lw	a5,-940(a5) # 359c <uxCurrentNumberOfTasks>
    1950:	0e078c63          	beqz	a5,1a48 <xTaskResumeAll+0x170>
    1954:	00014b97          	auipc	s7,0x14
    1958:	d90b8b93          	addi	s7,s7,-624 # 156e4 <xPendingReadyList>
    195c:	000ba783          	lw	a5,0(s7)
    1960:	00002a97          	auipc	s5,0x2
    1964:	c68a8a93          	addi	s5,s5,-920 # 35c8 <xYieldPending>
    1968:	0a078663          	beqz	a5,1a14 <xTaskResumeAll+0x13c>
    196c:	00002917          	auipc	s2,0x2
    1970:	c2490913          	addi	s2,s2,-988 # 3590 <pxCurrentTCB>
    1974:	00002497          	auipc	s1,0x2
    1978:	c3848493          	addi	s1,s1,-968 # 35ac <uxTopReadyPriority>
    197c:	00014a17          	auipc	s4,0x14
    1980:	cb4a0a13          	addi	s4,s4,-844 # 15630 <pxReadyTasksLists>
    1984:	00002a97          	auipc	s5,0x2
    1988:	c44a8a93          	addi	s5,s5,-956 # 35c8 <xYieldPending>
    198c:	00100993          	li	s3,1
    1990:	00cba783          	lw	a5,12(s7)
    1994:	00c7a403          	lw	s0,12(a5)
    1998:	01840513          	addi	a0,s0,24
    199c:	adcff0ef          	jal	ra,c78 <uxListRemove>
    19a0:	00440b13          	addi	s6,s0,4
    19a4:	000b0513          	mv	a0,s6
    19a8:	ad0ff0ef          	jal	ra,c78 <uxListRemove>
    19ac:	02c42783          	lw	a5,44(s0)
    19b0:	0004a703          	lw	a4,0(s1)
    19b4:	000b0593          	mv	a1,s6
    19b8:	00279513          	slli	a0,a5,0x2
    19bc:	00f50533          	add	a0,a0,a5
    19c0:	00251513          	slli	a0,a0,0x2
    19c4:	00f997b3          	sll	a5,s3,a5
    19c8:	00e7e7b3          	or	a5,a5,a4
    19cc:	00aa0533          	add	a0,s4,a0
    19d0:	00f4a023          	sw	a5,0(s1)
    19d4:	a24ff0ef          	jal	ra,bf8 <vListInsertEnd>
    19d8:	00092783          	lw	a5,0(s2)
    19dc:	02c42703          	lw	a4,44(s0)
    19e0:	02c7a783          	lw	a5,44(a5)
    19e4:	00f76463          	bltu	a4,a5,19ec <xTaskResumeAll+0x114>
    19e8:	013aa023          	sw	s3,0(s5)
    19ec:	000ba783          	lw	a5,0(s7)
    19f0:	fa0790e3          	bnez	a5,1990 <xTaskResumeAll+0xb8>
    19f4:	00002797          	auipc	a5,0x2
    19f8:	ba078793          	addi	a5,a5,-1120 # 3594 <pxDelayedTaskList>
    19fc:	0007a703          	lw	a4,0(a5)
    1a00:	00072703          	lw	a4,0(a4)
    1a04:	08071463          	bnez	a4,1a8c <xTaskResumeAll+0x1b4>
    1a08:	fff00793          	li	a5,-1
    1a0c:	00002717          	auipc	a4,0x2
    1a10:	baf72423          	sw	a5,-1112(a4) # 35b4 <xNextTaskUnblockTime>
    1a14:	00002417          	auipc	s0,0x2
    1a18:	ba842403          	lw	s0,-1112(s0) # 35bc <xPendedTicks>
    1a1c:	02040263          	beqz	s0,1a40 <xTaskResumeAll+0x168>
    1a20:	00100493          	li	s1,1
    1a24:	cd8ff0ef          	jal	ra,efc <xTaskIncrementTick>
    1a28:	fff40413          	addi	s0,s0,-1
    1a2c:	00050463          	beqz	a0,1a34 <xTaskResumeAll+0x15c>
    1a30:	009aa023          	sw	s1,0(s5)
    1a34:	fe0418e3          	bnez	s0,1a24 <xTaskResumeAll+0x14c>
    1a38:	00002797          	auipc	a5,0x2
    1a3c:	b807a223          	sw	zero,-1148(a5) # 35bc <xPendedTicks>
    1a40:	000aa783          	lw	a5,0(s5)
    1a44:	02079e63          	bnez	a5,1a80 <xTaskResumeAll+0x1a8>
    1a48:	00000413          	li	s0,0
    1a4c:	ab5ff0ef          	jal	ra,1500 <vTaskExitCritical>
    1a50:	02c12083          	lw	ra,44(sp)
    1a54:	00040513          	mv	a0,s0
    1a58:	02812403          	lw	s0,40(sp)
    1a5c:	02412483          	lw	s1,36(sp)
    1a60:	02012903          	lw	s2,32(sp)
    1a64:	01c12983          	lw	s3,28(sp)
    1a68:	01812a03          	lw	s4,24(sp)
    1a6c:	01412a83          	lw	s5,20(sp)
    1a70:	01012b03          	lw	s6,16(sp)
    1a74:	00c12b83          	lw	s7,12(sp)
    1a78:	03010113          	addi	sp,sp,48
    1a7c:	00008067          	ret
    1a80:	00000073          	ecall
    1a84:	00100413          	li	s0,1
    1a88:	fc5ff06f          	j	1a4c <xTaskResumeAll+0x174>
    1a8c:	0007a783          	lw	a5,0(a5)
    1a90:	00c7a783          	lw	a5,12(a5)
    1a94:	0007a783          	lw	a5,0(a5)
    1a98:	00002717          	auipc	a4,0x2
    1a9c:	b0f72e23          	sw	a5,-1252(a4) # 35b4 <xNextTaskUnblockTime>
    1aa0:	f75ff06f          	j	1a14 <xTaskResumeAll+0x13c>

00001aa4 <vTaskDelay>:
    1aa4:	00051663          	bnez	a0,1ab0 <vTaskDelay+0xc>
    1aa8:	00000073          	ecall
    1aac:	00008067          	ret
    1ab0:	00002717          	auipc	a4,0x2
    1ab4:	af470713          	addi	a4,a4,-1292 # 35a4 <uxSchedulerSuspended>
    1ab8:	00072783          	lw	a5,0(a4)
    1abc:	ff010113          	addi	sp,sp,-16
    1ac0:	00112623          	sw	ra,12(sp)
    1ac4:	00178793          	addi	a5,a5,1
    1ac8:	00f72023          	sw	a5,0(a4)
    1acc:	00000593          	li	a1,0
    1ad0:	9f8ff0ef          	jal	ra,cc8 <prvAddCurrentTaskToDelayedList>
    1ad4:	e05ff0ef          	jal	ra,18d8 <xTaskResumeAll>
    1ad8:	00051463          	bnez	a0,1ae0 <vTaskDelay+0x3c>
    1adc:	00000073          	ecall
    1ae0:	00c12083          	lw	ra,12(sp)
    1ae4:	01010113          	addi	sp,sp,16
    1ae8:	00008067          	ret

00001aec <xTaskCheckForTimeOut>:
    1aec:	ff010113          	addi	sp,sp,-16
    1af0:	00112623          	sw	ra,12(sp)
    1af4:	00812423          	sw	s0,8(sp)
    1af8:	00050793          	mv	a5,a0
    1afc:	30047073          	csrci	mstatus,8
    1b00:	00002697          	auipc	a3,0x2
    1b04:	ac06a683          	lw	a3,-1344(a3) # 35c0 <xSchedulerRunning>
    1b08:	00002717          	auipc	a4,0x2
    1b0c:	a8870713          	addi	a4,a4,-1400 # 3590 <pxCurrentTCB>
    1b10:	00068c63          	beqz	a3,1b28 <xTaskCheckForTimeOut+0x3c>
    1b14:	00072603          	lw	a2,0(a4)
    1b18:	00072683          	lw	a3,0(a4)
    1b1c:	04462683          	lw	a3,68(a2)
    1b20:	00168693          	addi	a3,a3,1
    1b24:	04d62223          	sw	a3,68(a2)
    1b28:	00002697          	auipc	a3,0x2
    1b2c:	a9c68693          	addi	a3,a3,-1380 # 35c4 <xTickCount>
    1b30:	0006a803          	lw	a6,0(a3)
    1b34:	00072603          	lw	a2,0(a4)
    1b38:	0047a503          	lw	a0,4(a5)
    1b3c:	05564603          	lbu	a2,85(a2)
    1b40:	02060463          	beqz	a2,1b68 <xTaskCheckForTimeOut+0x7c>
    1b44:	00072783          	lw	a5,0(a4)
    1b48:	00100413          	li	s0,1
    1b4c:	04078aa3          	sb	zero,85(a5)
    1b50:	9b1ff0ef          	jal	ra,1500 <vTaskExitCritical>
    1b54:	00c12083          	lw	ra,12(sp)
    1b58:	00040513          	mv	a0,s0
    1b5c:	00812403          	lw	s0,8(sp)
    1b60:	01010113          	addi	sp,sp,16
    1b64:	00008067          	ret
    1b68:	0005a703          	lw	a4,0(a1)
    1b6c:	fff00613          	li	a2,-1
    1b70:	00000413          	li	s0,0
    1b74:	fcc70ee3          	beq	a4,a2,1b50 <xTaskCheckForTimeOut+0x64>
    1b78:	00002617          	auipc	a2,0x2
    1b7c:	a4060613          	addi	a2,a2,-1472 # 35b8 <xNumOfOverflows>
    1b80:	00062883          	lw	a7,0(a2)
    1b84:	0007a303          	lw	t1,0(a5)
    1b88:	03130463          	beq	t1,a7,1bb0 <xTaskCheckForTimeOut+0xc4>
    1b8c:	02a86263          	bltu	a6,a0,1bb0 <xTaskCheckForTimeOut+0xc4>
    1b90:	0005a023          	sw	zero,0(a1)
    1b94:	96dff0ef          	jal	ra,1500 <vTaskExitCritical>
    1b98:	00100413          	li	s0,1
    1b9c:	00c12083          	lw	ra,12(sp)
    1ba0:	00040513          	mv	a0,s0
    1ba4:	00812403          	lw	s0,8(sp)
    1ba8:	01010113          	addi	sp,sp,16
    1bac:	00008067          	ret
    1bb0:	40a808b3          	sub	a7,a6,a0
    1bb4:	fce8fee3          	bgeu	a7,a4,1b90 <xTaskCheckForTimeOut+0xa4>
    1bb8:	00062603          	lw	a2,0(a2)
    1bbc:	41070733          	sub	a4,a4,a6
    1bc0:	0006a683          	lw	a3,0(a3)
    1bc4:	00a70733          	add	a4,a4,a0
    1bc8:	00e5a023          	sw	a4,0(a1)
    1bcc:	00c7a023          	sw	a2,0(a5)
    1bd0:	00d7a223          	sw	a3,4(a5)
    1bd4:	92dff0ef          	jal	ra,1500 <vTaskExitCritical>
    1bd8:	00000413          	li	s0,0
    1bdc:	00c12083          	lw	ra,12(sp)
    1be0:	00040513          	mv	a0,s0
    1be4:	00812403          	lw	s0,8(sp)
    1be8:	01010113          	addi	sp,sp,16
    1bec:	00008067          	ret

00001bf0 <prvCheckForValidListAndQueue>:
    1bf0:	ff010113          	addi	sp,sp,-16
    1bf4:	00812423          	sw	s0,8(sp)
    1bf8:	00112623          	sw	ra,12(sp)
    1bfc:	00912223          	sw	s1,4(sp)
    1c00:	01212023          	sw	s2,0(sp)
    1c04:	00002417          	auipc	s0,0x2
    1c08:	9d440413          	addi	s0,s0,-1580 # 35d8 <xTimerQueue>
    1c0c:	8c5ff0ef          	jal	ra,14d0 <vTaskEnterCritical>
    1c10:	00042783          	lw	a5,0(s0)
    1c14:	00078e63          	beqz	a5,1c30 <prvCheckForValidListAndQueue+0x40>
    1c18:	00812403          	lw	s0,8(sp)
    1c1c:	00c12083          	lw	ra,12(sp)
    1c20:	00412483          	lw	s1,4(sp)
    1c24:	00012903          	lw	s2,0(sp)
    1c28:	01010113          	addi	sp,sp,16
    1c2c:	8d5ff06f          	j	1500 <vTaskExitCritical>
    1c30:	00014917          	auipc	s2,0x14
    1c34:	af090913          	addi	s2,s2,-1296 # 15720 <xActiveTimerList1>
    1c38:	00090513          	mv	a0,s2
    1c3c:	f95fe0ef          	jal	ra,bd0 <vListInitialise>
    1c40:	00014497          	auipc	s1,0x14
    1c44:	af448493          	addi	s1,s1,-1292 # 15734 <xActiveTimerList2>
    1c48:	00048513          	mv	a0,s1
    1c4c:	f85fe0ef          	jal	ra,bd0 <vListInitialise>
    1c50:	00000613          	li	a2,0
    1c54:	01000593          	li	a1,16
    1c58:	00600513          	li	a0,6
    1c5c:	00002797          	auipc	a5,0x2
    1c60:	9727a823          	sw	s2,-1680(a5) # 35cc <pxCurrentTimerList>
    1c64:	00002797          	auipc	a5,0x2
    1c68:	9697a623          	sw	s1,-1684(a5) # 35d0 <pxOverflowTimerList>
    1c6c:	9a9fe0ef          	jal	ra,614 <xQueueGenericCreate>
    1c70:	00a42023          	sw	a0,0(s0)
    1c74:	fa0502e3          	beqz	a0,1c18 <prvCheckForValidListAndQueue+0x28>
    1c78:	00001597          	auipc	a1,0x1
    1c7c:	33458593          	addi	a1,a1,820 # 2fac <_etext+0x8>
    1c80:	e69fe0ef          	jal	ra,ae8 <vQueueAddToRegistry>
    1c84:	f95ff06f          	j	1c18 <prvCheckForValidListAndQueue+0x28>

00001c88 <xTimerCreateTimerTask>:
    1c88:	ff010113          	addi	sp,sp,-16
    1c8c:	00112623          	sw	ra,12(sp)
    1c90:	f61ff0ef          	jal	ra,1bf0 <prvCheckForValidListAndQueue>
    1c94:	00002797          	auipc	a5,0x2
    1c98:	9447a783          	lw	a5,-1724(a5) # 35d8 <xTimerQueue>
    1c9c:	02078a63          	beqz	a5,1cd0 <xTimerCreateTimerTask+0x48>
    1ca0:	00c12083          	lw	ra,12(sp)
    1ca4:	00002797          	auipc	a5,0x2
    1ca8:	93878793          	addi	a5,a5,-1736 # 35dc <xTimerTaskHandle>
    1cac:	00600713          	li	a4,6
    1cb0:	00000693          	li	a3,0
    1cb4:	06e00613          	li	a2,110
    1cb8:	00001597          	auipc	a1,0x1
    1cbc:	2fc58593          	addi	a1,a1,764 # 2fb4 <_etext+0x10>
    1cc0:	00000517          	auipc	a0,0x0
    1cc4:	1c450513          	addi	a0,a0,452 # 1e84 <prvTimerTask>
    1cc8:	01010113          	addi	sp,sp,16
    1ccc:	879ff06f          	j	1544 <xTaskCreate>
    1cd0:	00c12083          	lw	ra,12(sp)
    1cd4:	00000513          	li	a0,0
    1cd8:	01010113          	addi	sp,sp,16
    1cdc:	00008067          	ret

00001ce0 <xTimerGenericCommand>:
    1ce0:	fe010113          	addi	sp,sp,-32
    1ce4:	00912a23          	sw	s1,20(sp)
    1ce8:	00002497          	auipc	s1,0x2
    1cec:	8f048493          	addi	s1,s1,-1808 # 35d8 <xTimerQueue>
    1cf0:	0004a803          	lw	a6,0(s1)
    1cf4:	00112e23          	sw	ra,28(sp)
    1cf8:	00812c23          	sw	s0,24(sp)
    1cfc:	06080c63          	beqz	a6,1d74 <xTimerGenericCommand+0x94>
    1d00:	00b12023          	sw	a1,0(sp)
    1d04:	00c12223          	sw	a2,4(sp)
    1d08:	00a12423          	sw	a0,8(sp)
    1d0c:	00500793          	li	a5,5
    1d10:	02b7ce63          	blt	a5,a1,1d4c <xTimerGenericCommand+0x6c>
    1d14:	00070413          	mv	s0,a4
    1d18:	eacff0ef          	jal	ra,13c4 <xTaskGetSchedulerState>
    1d1c:	00200793          	li	a5,2
    1d20:	06f50663          	beq	a0,a5,1d8c <xTimerGenericCommand+0xac>
    1d24:	0004a503          	lw	a0,0(s1)
    1d28:	00010593          	mv	a1,sp
    1d2c:	00000693          	li	a3,0
    1d30:	00000613          	li	a2,0
    1d34:	99dfe0ef          	jal	ra,6d0 <xQueueGenericSend>
    1d38:	01c12083          	lw	ra,28(sp)
    1d3c:	01812403          	lw	s0,24(sp)
    1d40:	01412483          	lw	s1,20(sp)
    1d44:	02010113          	addi	sp,sp,32
    1d48:	00008067          	ret
    1d4c:	00068613          	mv	a2,a3
    1d50:	00010593          	mv	a1,sp
    1d54:	00000693          	li	a3,0
    1d58:	00080513          	mv	a0,a6
    1d5c:	b0dfe0ef          	jal	ra,868 <xQueueGenericSendFromISR>
    1d60:	01c12083          	lw	ra,28(sp)
    1d64:	01812403          	lw	s0,24(sp)
    1d68:	01412483          	lw	s1,20(sp)
    1d6c:	02010113          	addi	sp,sp,32
    1d70:	00008067          	ret
    1d74:	01c12083          	lw	ra,28(sp)
    1d78:	01812403          	lw	s0,24(sp)
    1d7c:	01412483          	lw	s1,20(sp)
    1d80:	00000513          	li	a0,0
    1d84:	02010113          	addi	sp,sp,32
    1d88:	00008067          	ret
    1d8c:	0004a503          	lw	a0,0(s1)
    1d90:	00040613          	mv	a2,s0
    1d94:	00010593          	mv	a1,sp
    1d98:	00000693          	li	a3,0
    1d9c:	935fe0ef          	jal	ra,6d0 <xQueueGenericSend>
    1da0:	01c12083          	lw	ra,28(sp)
    1da4:	01812403          	lw	s0,24(sp)
    1da8:	01412483          	lw	s1,20(sp)
    1dac:	02010113          	addi	sp,sp,32
    1db0:	00008067          	ret

00001db4 <prvSwitchTimerLists>:
    1db4:	fe010113          	addi	sp,sp,-32
    1db8:	01212823          	sw	s2,16(sp)
    1dbc:	00112e23          	sw	ra,28(sp)
    1dc0:	00812c23          	sw	s0,24(sp)
    1dc4:	00912a23          	sw	s1,20(sp)
    1dc8:	01312623          	sw	s3,12(sp)
    1dcc:	00002917          	auipc	s2,0x2
    1dd0:	80090913          	addi	s2,s2,-2048 # 35cc <pxCurrentTimerList>
    1dd4:	0340006f          	j	1e08 <prvSwitchTimerLists+0x54>
    1dd8:	00c7a783          	lw	a5,12(a5)
    1ddc:	00c7a403          	lw	s0,12(a5)
    1de0:	0007a983          	lw	s3,0(a5)
    1de4:	00440493          	addi	s1,s0,4
    1de8:	00048513          	mv	a0,s1
    1dec:	e8dfe0ef          	jal	ra,c78 <uxListRemove>
    1df0:	02042783          	lw	a5,32(s0)
    1df4:	00040513          	mv	a0,s0
    1df8:	000780e7          	jalr	a5
    1dfc:	02444783          	lbu	a5,36(s0)
    1e00:	0047f793          	andi	a5,a5,4
    1e04:	04079063          	bnez	a5,1e44 <prvSwitchTimerLists+0x90>
    1e08:	00092783          	lw	a5,0(s2)
    1e0c:	0007a703          	lw	a4,0(a5)
    1e10:	fc0714e3          	bnez	a4,1dd8 <prvSwitchTimerLists+0x24>
    1e14:	00001717          	auipc	a4,0x1
    1e18:	7bc70713          	addi	a4,a4,1980 # 35d0 <pxOverflowTimerList>
    1e1c:	00072683          	lw	a3,0(a4)
    1e20:	01c12083          	lw	ra,28(sp)
    1e24:	01812403          	lw	s0,24(sp)
    1e28:	00d92023          	sw	a3,0(s2)
    1e2c:	00f72023          	sw	a5,0(a4)
    1e30:	01412483          	lw	s1,20(sp)
    1e34:	01012903          	lw	s2,16(sp)
    1e38:	00c12983          	lw	s3,12(sp)
    1e3c:	02010113          	addi	sp,sp,32
    1e40:	00008067          	ret
    1e44:	01842783          	lw	a5,24(s0)
    1e48:	00048593          	mv	a1,s1
    1e4c:	00000713          	li	a4,0
    1e50:	00f987b3          	add	a5,s3,a5
    1e54:	00000693          	li	a3,0
    1e58:	00098613          	mv	a2,s3
    1e5c:	00040513          	mv	a0,s0
    1e60:	00f9fc63          	bgeu	s3,a5,1e78 <prvSwitchTimerLists+0xc4>
    1e64:	00092503          	lw	a0,0(s2)
    1e68:	00f42223          	sw	a5,4(s0)
    1e6c:	00842823          	sw	s0,16(s0)
    1e70:	db9fe0ef          	jal	ra,c28 <vListInsert>
    1e74:	f95ff06f          	j	1e08 <prvSwitchTimerLists+0x54>
    1e78:	00000593          	li	a1,0
    1e7c:	e65ff0ef          	jal	ra,1ce0 <xTimerGenericCommand>
    1e80:	f89ff06f          	j	1e08 <prvSwitchTimerLists+0x54>

00001e84 <prvTimerTask>:
    1e84:	fc010113          	addi	sp,sp,-64
    1e88:	02912a23          	sw	s1,52(sp)
    1e8c:	03212823          	sw	s2,48(sp)
    1e90:	03312623          	sw	s3,44(sp)
    1e94:	03412423          	sw	s4,40(sp)
    1e98:	03512223          	sw	s5,36(sp)
    1e9c:	03612023          	sw	s6,32(sp)
    1ea0:	02112e23          	sw	ra,60(sp)
    1ea4:	02812c23          	sw	s0,56(sp)
    1ea8:	01712e23          	sw	s7,28(sp)
    1eac:	01812c23          	sw	s8,24(sp)
    1eb0:	01912a23          	sw	s9,20(sp)
    1eb4:	00001a17          	auipc	s4,0x1
    1eb8:	718a0a13          	addi	s4,s4,1816 # 35cc <pxCurrentTimerList>
    1ebc:	00001917          	auipc	s2,0x1
    1ec0:	71890913          	addi	s2,s2,1816 # 35d4 <xLastTime.0>
    1ec4:	00001b17          	auipc	s6,0x1
    1ec8:	70cb0b13          	addi	s6,s6,1804 # 35d0 <pxOverflowTimerList>
    1ecc:	00001497          	auipc	s1,0x1
    1ed0:	70c48493          	addi	s1,s1,1804 # 35d8 <xTimerQueue>
    1ed4:	00001997          	auipc	s3,0x1
    1ed8:	0e898993          	addi	s3,s3,232 # 2fbc <_etext+0x18>
    1edc:	00900a93          	li	s5,9
    1ee0:	000a2783          	lw	a5,0(s4)
    1ee4:	0007ab83          	lw	s7,0(a5)
    1ee8:	180b8463          	beqz	s7,2070 <prvTimerTask+0x1ec>
    1eec:	00c7a783          	lw	a5,12(a5)
    1ef0:	0007ab83          	lw	s7,0(a5)
    1ef4:	fe5fe0ef          	jal	ra,ed8 <vTaskSuspendAll>
    1ef8:	ff9fe0ef          	jal	ra,ef0 <xTaskGetTickCount>
    1efc:	00092783          	lw	a5,0(s2)
    1f00:	00050413          	mv	s0,a0
    1f04:	18f56a63          	bltu	a0,a5,2098 <prvTimerTask+0x214>
    1f08:	00a92023          	sw	a0,0(s2)
    1f0c:	00000613          	li	a2,0
    1f10:	1b757c63          	bgeu	a0,s7,20c8 <prvTimerTask+0x244>
    1f14:	0004a503          	lw	a0,0(s1)
    1f18:	408b85b3          	sub	a1,s7,s0
    1f1c:	c0dfe0ef          	jal	ra,b28 <vQueueWaitForMessageRestricted>
    1f20:	9b9ff0ef          	jal	ra,18d8 <xTaskResumeAll>
    1f24:	00051463          	bnez	a0,1f2c <prvTimerTask+0xa8>
    1f28:	00000073          	ecall
    1f2c:	0004a503          	lw	a0,0(s1)
    1f30:	00000613          	li	a2,0
    1f34:	00010593          	mv	a1,sp
    1f38:	9f5fe0ef          	jal	ra,92c <xQueueReceive>
    1f3c:	fa0502e3          	beqz	a0,1ee0 <prvTimerTask+0x5c>
    1f40:	00012783          	lw	a5,0(sp)
    1f44:	00812503          	lw	a0,8(sp)
    1f48:	1007c863          	bltz	a5,2058 <prvTimerTask+0x1d4>
    1f4c:	00812403          	lw	s0,8(sp)
    1f50:	01442783          	lw	a5,20(s0)
    1f54:	00078663          	beqz	a5,1f60 <prvTimerTask+0xdc>
    1f58:	00440513          	addi	a0,s0,4
    1f5c:	d1dfe0ef          	jal	ra,c78 <uxListRemove>
    1f60:	f91fe0ef          	jal	ra,ef0 <xTaskGetTickCount>
    1f64:	00092783          	lw	a5,0(s2)
    1f68:	00050b93          	mv	s7,a0
    1f6c:	12f56e63          	bltu	a0,a5,20a8 <prvTimerTask+0x224>
    1f70:	00012783          	lw	a5,0(sp)
    1f74:	01792023          	sw	s7,0(s2)
    1f78:	fafaeae3          	bltu	s5,a5,1f2c <prvTimerTask+0xa8>
    1f7c:	00279793          	slli	a5,a5,0x2
    1f80:	00f987b3          	add	a5,s3,a5
    1f84:	0007a783          	lw	a5,0(a5)
    1f88:	00f987b3          	add	a5,s3,a5
    1f8c:	00078067          	jr	a5
    1f90:	02444783          	lbu	a5,36(s0)
    1f94:	00412703          	lw	a4,4(sp)
    1f98:	01842683          	lw	a3,24(s0)
    1f9c:	0017e793          	ori	a5,a5,1
    1fa0:	02f40223          	sb	a5,36(s0)
    1fa4:	00d707b3          	add	a5,a4,a3
    1fa8:	00f42223          	sw	a5,4(s0)
    1fac:	00842823          	sw	s0,16(s0)
    1fb0:	10fbe063          	bltu	s7,a5,20b0 <prvTimerTask+0x22c>
    1fb4:	40eb8bb3          	sub	s7,s7,a4
    1fb8:	06dbe463          	bltu	s7,a3,2020 <prvTimerTask+0x19c>
    1fbc:	02042783          	lw	a5,32(s0)
    1fc0:	00040513          	mv	a0,s0
    1fc4:	000780e7          	jalr	a5
    1fc8:	02444783          	lbu	a5,36(s0)
    1fcc:	0047f793          	andi	a5,a5,4
    1fd0:	f4078ee3          	beqz	a5,1f2c <prvTimerTask+0xa8>
    1fd4:	01842783          	lw	a5,24(s0)
    1fd8:	00412603          	lw	a2,4(sp)
    1fdc:	00000713          	li	a4,0
    1fe0:	00000693          	li	a3,0
    1fe4:	00f60633          	add	a2,a2,a5
    1fe8:	00000593          	li	a1,0
    1fec:	00040513          	mv	a0,s0
    1ff0:	cf1ff0ef          	jal	ra,1ce0 <xTimerGenericCommand>
    1ff4:	f39ff06f          	j	1f2c <prvTimerTask+0xa8>
    1ff8:	00412703          	lw	a4,4(sp)
    1ffc:	02444783          	lbu	a5,36(s0)
    2000:	00842823          	sw	s0,16(s0)
    2004:	017706b3          	add	a3,a4,s7
    2008:	0017e793          	ori	a5,a5,1
    200c:	02f40223          	sb	a5,36(s0)
    2010:	00e42c23          	sw	a4,24(s0)
    2014:	00d42223          	sw	a3,4(s0)
    2018:	0adbe063          	bltu	s7,a3,20b8 <prvTimerTask+0x234>
    201c:	f00708e3          	beqz	a4,1f2c <prvTimerTask+0xa8>
    2020:	000b2503          	lw	a0,0(s6)
    2024:	00440593          	addi	a1,s0,4
    2028:	c01fe0ef          	jal	ra,c28 <vListInsert>
    202c:	f01ff06f          	j	1f2c <prvTimerTask+0xa8>
    2030:	02444783          	lbu	a5,36(s0)
    2034:	ffe7f793          	andi	a5,a5,-2
    2038:	02f40223          	sb	a5,36(s0)
    203c:	ef1ff06f          	j	1f2c <prvTimerTask+0xa8>
    2040:	02444783          	lbu	a5,36(s0)
    2044:	0027f713          	andi	a4,a5,2
    2048:	0c070063          	beqz	a4,2108 <prvTimerTask+0x284>
    204c:	ffe7f793          	andi	a5,a5,-2
    2050:	02f40223          	sb	a5,36(s0)
    2054:	ed9ff06f          	j	1f2c <prvTimerTask+0xa8>
    2058:	00412783          	lw	a5,4(sp)
    205c:	00c12583          	lw	a1,12(sp)
    2060:	000780e7          	jalr	a5
    2064:	00012783          	lw	a5,0(sp)
    2068:	ec07c2e3          	bltz	a5,1f2c <prvTimerTask+0xa8>
    206c:	ee1ff06f          	j	1f4c <prvTimerTask+0xc8>
    2070:	e69fe0ef          	jal	ra,ed8 <vTaskSuspendAll>
    2074:	e7dfe0ef          	jal	ra,ef0 <xTaskGetTickCount>
    2078:	00092783          	lw	a5,0(s2)
    207c:	00050413          	mv	s0,a0
    2080:	00f56c63          	bltu	a0,a5,2098 <prvTimerTask+0x214>
    2084:	000b2783          	lw	a5,0(s6)
    2088:	00892023          	sw	s0,0(s2)
    208c:	0007a603          	lw	a2,0(a5)
    2090:	00163613          	seqz	a2,a2
    2094:	e81ff06f          	j	1f14 <prvTimerTask+0x90>
    2098:	d1dff0ef          	jal	ra,1db4 <prvSwitchTimerLists>
    209c:	00892023          	sw	s0,0(s2)
    20a0:	839ff0ef          	jal	ra,18d8 <xTaskResumeAll>
    20a4:	e89ff06f          	j	1f2c <prvTimerTask+0xa8>
    20a8:	d0dff0ef          	jal	ra,1db4 <prvSwitchTimerLists>
    20ac:	ec5ff06f          	j	1f70 <prvTimerTask+0xec>
    20b0:	00ebf463          	bgeu	s7,a4,20b8 <prvTimerTask+0x234>
    20b4:	f0e7f4e3          	bgeu	a5,a4,1fbc <prvTimerTask+0x138>
    20b8:	000a2503          	lw	a0,0(s4)
    20bc:	00440593          	addi	a1,s0,4
    20c0:	b69fe0ef          	jal	ra,c28 <vListInsert>
    20c4:	e69ff06f          	j	1f2c <prvTimerTask+0xa8>
    20c8:	811ff0ef          	jal	ra,18d8 <xTaskResumeAll>
    20cc:	000a2783          	lw	a5,0(s4)
    20d0:	00c7a783          	lw	a5,12(a5)
    20d4:	00c7ac03          	lw	s8,12(a5)
    20d8:	004c0c93          	addi	s9,s8,4
    20dc:	000c8513          	mv	a0,s9
    20e0:	b99fe0ef          	jal	ra,c78 <uxListRemove>
    20e4:	024c4783          	lbu	a5,36(s8)
    20e8:	0047f713          	andi	a4,a5,4
    20ec:	02071463          	bnez	a4,2114 <prvTimerTask+0x290>
    20f0:	ffe7f793          	andi	a5,a5,-2
    20f4:	02fc0223          	sb	a5,36(s8)
    20f8:	020c2783          	lw	a5,32(s8)
    20fc:	000c0513          	mv	a0,s8
    2100:	000780e7          	jalr	a5
    2104:	e29ff06f          	j	1f2c <prvTimerTask+0xa8>
    2108:	00040513          	mv	a0,s0
    210c:	9c4fe0ef          	jal	ra,2d0 <vPortFree>
    2110:	e1dff06f          	j	1f2c <prvTimerTask+0xa8>
    2114:	018c2703          	lw	a4,24(s8)
    2118:	018c2823          	sw	s8,16(s8)
    211c:	00eb87b3          	add	a5,s7,a4
    2120:	00fc2223          	sw	a5,4(s8)
    2124:	00f47a63          	bgeu	s0,a5,2138 <prvTimerTask+0x2b4>
    2128:	000a2503          	lw	a0,0(s4)
    212c:	000c8593          	mv	a1,s9
    2130:	af9fe0ef          	jal	ra,c28 <vListInsert>
    2134:	fc5ff06f          	j	20f8 <prvTimerTask+0x274>
    2138:	41740433          	sub	s0,s0,s7
    213c:	02e46063          	bltu	s0,a4,215c <prvTimerTask+0x2d8>
    2140:	00000713          	li	a4,0
    2144:	00000693          	li	a3,0
    2148:	000b8613          	mv	a2,s7
    214c:	00000593          	li	a1,0
    2150:	000c0513          	mv	a0,s8
    2154:	b8dff0ef          	jal	ra,1ce0 <xTimerGenericCommand>
    2158:	fa1ff06f          	j	20f8 <prvTimerTask+0x274>
    215c:	000b2503          	lw	a0,0(s6)
    2160:	000c8593          	mv	a1,s9
    2164:	ac5fe0ef          	jal	ra,c28 <vListInsert>
    2168:	f91ff06f          	j	20f8 <prvTimerTask+0x274>

0000216c <vSendString>:
    216c:	fe010113          	addi	sp,sp,-32
    2170:	00812c23          	sw	s0,24(sp)
    2174:	00912a23          	sw	s1,20(sp)
    2178:	01212823          	sw	s2,16(sp)
    217c:	01312623          	sw	s3,12(sp)
    2180:	00112e23          	sw	ra,28(sp)
    2184:	00050493          	mv	s1,a0
    2188:	00000413          	li	s0,0
    218c:	b44ff0ef          	jal	ra,14d0 <vTaskEnterCritical>
    2190:	000109b7          	lui	s3,0x10
    2194:	8181a903          	lw	s2,-2024(gp) # 3558 <TOHOST_PORT>
    2198:	0140006f          	j	21ac <vSendString+0x40>
    219c:	0007c783          	lbu	a5,0(a5)
    21a0:	00140413          	addi	s0,s0,1
    21a4:	0137e7b3          	or	a5,a5,s3
    21a8:	00f92023          	sw	a5,0(s2)
    21ac:	00048513          	mv	a0,s1
    21b0:	569000ef          	jal	ra,2f18 <strlen>
    21b4:	008487b3          	add	a5,s1,s0
    21b8:	fea462e3          	bltu	s0,a0,219c <vSendString+0x30>
    21bc:	01812403          	lw	s0,24(sp)
    21c0:	01c12083          	lw	ra,28(sp)
    21c4:	01412483          	lw	s1,20(sp)
    21c8:	01012903          	lw	s2,16(sp)
    21cc:	00c12983          	lw	s3,12(sp)
    21d0:	02010113          	addi	sp,sp,32
    21d4:	b2cff06f          	j	1500 <vTaskExitCritical>

000021d8 <simrv_exit>:
    21d8:	8181a783          	lw	a5,-2024(gp) # 3558 <TOHOST_PORT>
    21dc:	00020737          	lui	a4,0x20
    21e0:	00e7a023          	sw	a4,0(a5)
    21e4:	0000006f          	j	21e4 <simrv_exit+0xc>

000021e8 <lcd_write>:
    21e8:	00759593          	slli	a1,a1,0x7
    21ec:	00a585b3          	add	a1,a1,a0
    21f0:	01059593          	slli	a1,a1,0x10
    21f4:	00c5e5b3          	or	a1,a1,a2
    21f8:	80c1a783          	lw	a5,-2036(gp) # 354c <LCD_PORT>
    21fc:	00b7a023          	sw	a1,0(a5)
    2200:	00008067          	ret

00002204 <set_SEG>:
    2204:	ff010113          	addi	sp,sp,-16
    2208:	00812423          	sw	s0,8(sp)
    220c:	00112623          	sw	ra,12(sp)
    2210:	00050413          	mv	s0,a0
    2214:	abcff0ef          	jal	ra,14d0 <vTaskEnterCritical>
    2218:	8141a783          	lw	a5,-2028(gp) # 3554 <SEG_PORT>
    221c:	0087a023          	sw	s0,0(a5)
    2220:	00812403          	lw	s0,8(sp)
    2224:	00c12083          	lw	ra,12(sp)
    2228:	01010113          	addi	sp,sp,16
    222c:	ad4ff06f          	j	1500 <vTaskExitCritical>

00002230 <set_PWM>:
    2230:	ff010113          	addi	sp,sp,-16
    2234:	00812423          	sw	s0,8(sp)
    2238:	00050413          	mv	s0,a0
    223c:	00912223          	sw	s1,4(sp)
    2240:	00112623          	sw	ra,12(sp)
    2244:	00058493          	mv	s1,a1
    2248:	00841413          	slli	s0,s0,0x8
    224c:	a84ff0ef          	jal	ra,14d0 <vTaskEnterCritical>
    2250:	009465b3          	or	a1,s0,s1
    2254:	00812403          	lw	s0,8(sp)
    2258:	00c12083          	lw	ra,12(sp)
    225c:	00412483          	lw	s1,4(sp)
    2260:	8101a783          	lw	a5,-2032(gp) # 3550 <PWM_PORT>
    2264:	00b7a023          	sw	a1,0(a5)
    2268:	01010113          	addi	sp,sp,16
    226c:	a94ff06f          	j	1500 <vTaskExitCritical>

00002270 <init_EXINT>:
    2270:	fe010113          	addi	sp,sp,-32
    2274:	00912a23          	sw	s1,20(sp)
    2278:	01212823          	sw	s2,16(sp)
    227c:	01312623          	sw	s3,12(sp)
    2280:	00112e23          	sw	ra,28(sp)
    2284:	00812c23          	sw	s0,24(sp)
    2288:	00050493          	mv	s1,a0
    228c:	00058993          	mv	s3,a1
    2290:	00060913          	mv	s2,a2
    2294:	f14027f3          	csrr	a5,mhartid
    2298:	02050663          	beqz	a0,22c4 <init_EXINT+0x54>
    229c:	00500737          	lui	a4,0x500
    22a0:	02070713          	addi	a4,a4,32 # 500020 <_stack_top+0x4ea3d0>
    22a4:	00e787b3          	add	a5,a5,a4
    22a8:	00879793          	slli	a5,a5,0x8
    22ac:	0007a703          	lw	a4,0(a5)
    22b0:	fff50613          	addi	a2,a0,-1
    22b4:	00100693          	li	a3,1
    22b8:	00c696b3          	sll	a3,a3,a2
    22bc:	00d76733          	or	a4,a4,a3
    22c0:	00e7a023          	sw	a4,0(a5)
    22c4:	01000513          	li	a0,16
    22c8:	eadfd0ef          	jal	ra,174 <pvPortMalloc>
    22cc:	00050413          	mv	s0,a0
    22d0:	00000613          	li	a2,0
    22d4:	00098513          	mv	a0,s3
    22d8:	00400593          	li	a1,4
    22dc:	b38fe0ef          	jal	ra,614 <xQueueGenericCreate>
    22e0:	00249713          	slli	a4,s1,0x2
    22e4:	00013797          	auipc	a5,0x13
    22e8:	46478793          	addi	a5,a5,1124 # 15748 <exints>
    22ec:	00a42223          	sw	a0,4(s0)
    22f0:	00942023          	sw	s1,0(s0)
    22f4:	01242623          	sw	s2,12(s0)
    22f8:	00e787b3          	add	a5,a5,a4
    22fc:	01c12083          	lw	ra,28(sp)
    2300:	0087a023          	sw	s0,0(a5)
    2304:	00040513          	mv	a0,s0
    2308:	01812403          	lw	s0,24(sp)
    230c:	01412483          	lw	s1,20(sp)
    2310:	01012903          	lw	s2,16(sp)
    2314:	00c12983          	lw	s3,12(sp)
    2318:	02010113          	addi	sp,sp,32
    231c:	00008067          	ret

00002320 <get_EXINT>:
    2320:	00052783          	lw	a5,0(a0)
    2324:	ff010113          	addi	sp,sp,-16
    2328:	40000737          	lui	a4,0x40000
    232c:	00279793          	slli	a5,a5,0x2
    2330:	00112623          	sw	ra,12(sp)
    2334:	00f707b3          	add	a5,a4,a5
    2338:	0016e693          	ori	a3,a3,1
    233c:	00d7a023          	sw	a3,0(a5)
    2340:	00052783          	lw	a5,0(a0)
    2344:	00452503          	lw	a0,4(a0)
    2348:	00279793          	slli	a5,a5,0x2
    234c:	00f70733          	add	a4,a4,a5
    2350:	00072023          	sw	zero,0(a4) # 40000000 <_stack_top+0x3ffea3b0>
    2354:	dd8fe0ef          	jal	ra,92c <xQueueReceive>
    2358:	00c12083          	lw	ra,12(sp)
    235c:	00100513          	li	a0,1
    2360:	01010113          	addi	sp,sp,16
    2364:	00008067          	ret

00002368 <handle_trap>:
    2368:	502007b7          	lui	a5,0x50200
    236c:	f1402773          	csrr	a4,mhartid
    2370:	00d71713          	slli	a4,a4,0xd
    2374:	00e787b3          	add	a5,a5,a4
    2378:	fe010113          	addi	sp,sp,-32
    237c:	00812c23          	sw	s0,24(sp)
    2380:	0047a403          	lw	s0,4(a5) # 50200004 <_stack_top+0x501ea3b4>
    2384:	00013797          	auipc	a5,0x13
    2388:	3c478793          	addi	a5,a5,964 # 15748 <exints>
    238c:	00112e23          	sw	ra,28(sp)
    2390:	00241713          	slli	a4,s0,0x2
    2394:	00e787b3          	add	a5,a5,a4
    2398:	0007a783          	lw	a5,0(a5)
    239c:	02078463          	beqz	a5,23c4 <handle_trap+0x5c>
    23a0:	400006b7          	lui	a3,0x40000
    23a4:	00e68733          	add	a4,a3,a4
    23a8:	00072703          	lw	a4,0(a4)
    23ac:	0047a503          	lw	a0,4(a5)
    23b0:	00000693          	li	a3,0
    23b4:	00000613          	li	a2,0
    23b8:	00c10593          	addi	a1,sp,12
    23bc:	00e12623          	sw	a4,12(sp)
    23c0:	ca8fe0ef          	jal	ra,868 <xQueueGenericSendFromISR>
    23c4:	502007b7          	lui	a5,0x50200
    23c8:	f1402773          	csrr	a4,mhartid
    23cc:	00d71713          	slli	a4,a4,0xd
    23d0:	00e787b3          	add	a5,a5,a4
    23d4:	01c12083          	lw	ra,28(sp)
    23d8:	0087a223          	sw	s0,4(a5) # 50200004 <_stack_top+0x501ea3b4>
    23dc:	01812403          	lw	s0,24(sp)
    23e0:	02010113          	addi	sp,sp,32
    23e4:	00008067          	ret

000023e8 <console_lcd_sync>:
    23e8:	fd010113          	addi	sp,sp,-48
    23ec:	01312e23          	sw	s3,28(sp)
    23f0:	01612823          	sw	s6,16(sp)
    23f4:	01712623          	sw	s7,12(sp)
    23f8:	01812423          	sw	s8,8(sp)
    23fc:	01912223          	sw	s9,4(sp)
    2400:	02112623          	sw	ra,44(sp)
    2404:	02812423          	sw	s0,40(sp)
    2408:	02912223          	sw	s1,36(sp)
    240c:	03212023          	sw	s2,32(sp)
    2410:	01412c23          	sw	s4,24(sp)
    2414:	01512a23          	sw	s5,20(sp)
    2418:	00013b97          	auipc	s7,0x13
    241c:	3b0b8b93          	addi	s7,s7,944 # 157c8 <console>
    2420:	00000c93          	li	s9,0
    2424:	00001997          	auipc	s3,0x1
    2428:	bc098993          	addi	s3,s3,-1088 # 2fe4 <fonts>
    242c:	00800c13          	li	s8,8
    2430:	08000b13          	li	s6,128
    2434:	000b8a93          	mv	s5,s7
    2438:	00800913          	li	s2,8
    243c:	00000a13          	li	s4,0
    2440:	002ac483          	lbu	s1,2(s5)
    2444:	000a0413          	mv	s0,s4
    2448:	00349493          	slli	s1,s1,0x3
    244c:	414484b3          	sub	s1,s1,s4
    2450:	009407b3          	add	a5,s0,s1
    2454:	00f987b3          	add	a5,s3,a5
    2458:	0007c603          	lbu	a2,0(a5)
    245c:	00040513          	mv	a0,s0
    2460:	000c8593          	mv	a1,s9
    2464:	00140413          	addi	s0,s0,1
    2468:	d81ff0ef          	jal	ra,21e8 <lcd_write>
    246c:	ff2412e3          	bne	s0,s2,2450 <console_lcd_sync+0x68>
    2470:	008a0a13          	addi	s4,s4,8
    2474:	001a8a93          	addi	s5,s5,1
    2478:	00840913          	addi	s2,s0,8
    247c:	fd6a12e3          	bne	s4,s6,2440 <console_lcd_sync+0x58>
    2480:	001c8c93          	addi	s9,s9,1
    2484:	010b8b93          	addi	s7,s7,16
    2488:	fb8c96e3          	bne	s9,s8,2434 <console_lcd_sync+0x4c>
    248c:	02c12083          	lw	ra,44(sp)
    2490:	02812403          	lw	s0,40(sp)
    2494:	02412483          	lw	s1,36(sp)
    2498:	02012903          	lw	s2,32(sp)
    249c:	01c12983          	lw	s3,28(sp)
    24a0:	01812a03          	lw	s4,24(sp)
    24a4:	01412a83          	lw	s5,20(sp)
    24a8:	01012b03          	lw	s6,16(sp)
    24ac:	00c12b83          	lw	s7,12(sp)
    24b0:	00812c03          	lw	s8,8(sp)
    24b4:	00412c83          	lw	s9,4(sp)
    24b8:	03010113          	addi	sp,sp,48
    24bc:	00008067          	ret

000024c0 <console_line_forward>:
    24c0:	ff010113          	addi	sp,sp,-16
    24c4:	00812423          	sw	s0,8(sp)
    24c8:	00013417          	auipc	s0,0x13
    24cc:	30040413          	addi	s0,s0,768 # 157c8 <console>
    24d0:	00144783          	lbu	a5,1(s0)
    24d4:	00912223          	sw	s1,4(sp)
    24d8:	00112623          	sw	ra,12(sp)
    24dc:	00178793          	addi	a5,a5,1
    24e0:	0ff7f793          	zext.b	a5,a5
    24e4:	00013717          	auipc	a4,0x13
    24e8:	2e070223          	sb	zero,740(a4) # 157c8 <console>
    24ec:	00700493          	li	s1,7
    24f0:	00f400a3          	sb	a5,1(s0)
    24f4:	06f4f263          	bgeu	s1,a5,2558 <console_line_forward+0x98>
    24f8:	07000613          	li	a2,112
    24fc:	00013597          	auipc	a1,0x13
    2500:	2de58593          	addi	a1,a1,734 # 157da <console+0x12>
    2504:	00013517          	auipc	a0,0x13
    2508:	2c650513          	addi	a0,a0,710 # 157ca <console+0x2>
    250c:	011000ef          	jal	ra,2d1c <memmove>
    2510:	000027b7          	lui	a5,0x2
    2514:	00013717          	auipc	a4,0x13
    2518:	32670713          	addi	a4,a4,806 # 1583a <console+0x72>
    251c:	02078793          	addi	a5,a5,32 # 2020 <prvTimerTask+0x19c>
    2520:	00f71023          	sh	a5,0(a4)
    2524:	00f71123          	sh	a5,2(a4)
    2528:	00f71223          	sh	a5,4(a4)
    252c:	00f71323          	sh	a5,6(a4)
    2530:	00f71423          	sh	a5,8(a4)
    2534:	00f71523          	sh	a5,10(a4)
    2538:	00f71623          	sh	a5,12(a4)
    253c:	00f71723          	sh	a5,14(a4)
    2540:	009400a3          	sb	s1,1(s0)
    2544:	00812403          	lw	s0,8(sp)
    2548:	00c12083          	lw	ra,12(sp)
    254c:	00412483          	lw	s1,4(sp)
    2550:	01010113          	addi	sp,sp,16
    2554:	e95ff06f          	j	23e8 <console_lcd_sync>
    2558:	00c12083          	lw	ra,12(sp)
    255c:	00812403          	lw	s0,8(sp)
    2560:	00412483          	lw	s1,4(sp)
    2564:	01010113          	addi	sp,sp,16
    2568:	00008067          	ret

0000256c <lcd_print>:
    256c:	fd010113          	addi	sp,sp,-48
    2570:	01512a23          	sw	s5,20(sp)
    2574:	02112623          	sw	ra,44(sp)
    2578:	00050a93          	mv	s5,a0
    257c:	02812423          	sw	s0,40(sp)
    2580:	02912223          	sw	s1,36(sp)
    2584:	03212023          	sw	s2,32(sp)
    2588:	01312e23          	sw	s3,28(sp)
    258c:	01412c23          	sw	s4,24(sp)
    2590:	01612823          	sw	s6,16(sp)
    2594:	01712623          	sw	s7,12(sp)
    2598:	01812423          	sw	s8,8(sp)
    259c:	f35fe0ef          	jal	ra,14d0 <vTaskEnterCritical>
    25a0:	000ac783          	lbu	a5,0(s5)
    25a4:	08078463          	beqz	a5,262c <lcd_print+0xc0>
    25a8:	00a00b93          	li	s7,10
    25ac:	00013b17          	auipc	s6,0x13
    25b0:	21cb0b13          	addi	s6,s6,540 # 157c8 <console>
    25b4:	00001a17          	auipc	s4,0x1
    25b8:	a30a0a13          	addi	s4,s4,-1488 # 2fe4 <fonts>
    25bc:	00f00c13          	li	s8,15
    25c0:	001a8a93          	addi	s5,s5,1
    25c4:	09778c63          	beq	a5,s7,265c <lcd_print+0xf0>
    25c8:	001b4903          	lbu	s2,1(s6)
    25cc:	000b4683          	lbu	a3,0(s6)
    25d0:	00379493          	slli	s1,a5,0x3
    25d4:	00491713          	slli	a4,s2,0x4
    25d8:	00eb0733          	add	a4,s6,a4
    25dc:	00369413          	slli	s0,a3,0x3
    25e0:	00d70733          	add	a4,a4,a3
    25e4:	00f70123          	sb	a5,2(a4)
    25e8:	00840993          	addi	s3,s0,8
    25ec:	408484b3          	sub	s1,s1,s0
    25f0:	009407b3          	add	a5,s0,s1
    25f4:	00fa07b3          	add	a5,s4,a5
    25f8:	0007c603          	lbu	a2,0(a5)
    25fc:	00040513          	mv	a0,s0
    2600:	00090593          	mv	a1,s2
    2604:	00140413          	addi	s0,s0,1
    2608:	be1ff0ef          	jal	ra,21e8 <lcd_write>
    260c:	ff3412e3          	bne	s0,s3,25f0 <lcd_print+0x84>
    2610:	000b4783          	lbu	a5,0(s6)
    2614:	00178793          	addi	a5,a5,1
    2618:	0ff7f793          	zext.b	a5,a5
    261c:	00fb0023          	sb	a5,0(s6)
    2620:	02fc6e63          	bltu	s8,a5,265c <lcd_print+0xf0>
    2624:	000ac783          	lbu	a5,0(s5)
    2628:	f8079ce3          	bnez	a5,25c0 <lcd_print+0x54>
    262c:	02812403          	lw	s0,40(sp)
    2630:	02c12083          	lw	ra,44(sp)
    2634:	02412483          	lw	s1,36(sp)
    2638:	02012903          	lw	s2,32(sp)
    263c:	01c12983          	lw	s3,28(sp)
    2640:	01812a03          	lw	s4,24(sp)
    2644:	01412a83          	lw	s5,20(sp)
    2648:	01012b03          	lw	s6,16(sp)
    264c:	00c12b83          	lw	s7,12(sp)
    2650:	00812c03          	lw	s8,8(sp)
    2654:	03010113          	addi	sp,sp,48
    2658:	ea9fe06f          	j	1500 <vTaskExitCritical>
    265c:	e65ff0ef          	jal	ra,24c0 <console_line_forward>
    2660:	fc5ff06f          	j	2624 <lcd_print+0xb8>

00002664 <_console_init>:
    2664:	ff010113          	addi	sp,sp,-16
    2668:	08000613          	li	a2,128
    266c:	02000593          	li	a1,32
    2670:	00013517          	auipc	a0,0x13
    2674:	15a50513          	addi	a0,a0,346 # 157ca <console+0x2>
    2678:	00112623          	sw	ra,12(sp)
    267c:	00013797          	auipc	a5,0x13
    2680:	14079623          	sh	zero,332(a5) # 157c8 <console>
    2684:	7b8000ef          	jal	ra,2e3c <memset>
    2688:	00c12083          	lw	ra,12(sp)
    268c:	01010113          	addi	sp,sp,16
    2690:	d59ff06f          	j	23e8 <console_lcd_sync>

00002694 <TaskHeartBeat>:
    2694:	ff010113          	addi	sp,sp,-16
    2698:	00812423          	sw	s0,8(sp)
    269c:	00112623          	sw	ra,12(sp)
    26a0:	00001417          	auipc	s0,0x1
    26a4:	f4040413          	addi	s0,s0,-192 # 35e0 <cnt.0>
    26a8:	00042503          	lw	a0,0(s0)
    26ac:	b59ff0ef          	jal	ra,2204 <set_SEG>
    26b0:	00042783          	lw	a5,0(s0)
    26b4:	3e800513          	li	a0,1000
    26b8:	00178793          	addi	a5,a5,1
    26bc:	00f42023          	sw	a5,0(s0)
    26c0:	be4ff0ef          	jal	ra,1aa4 <vTaskDelay>
    26c4:	fe5ff06f          	j	26a8 <TaskHeartBeat+0x14>

000026c8 <TaskLineTrace>:
    26c8:	fe010113          	addi	sp,sp,-32
    26cc:	00100613          	li	a2,1
    26d0:	00400593          	li	a1,4
    26d4:	00200513          	li	a0,2
    26d8:	00812c23          	sw	s0,24(sp)
    26dc:	00912a23          	sw	s1,20(sp)
    26e0:	00112e23          	sw	ra,28(sp)
    26e4:	b8dff0ef          	jal	ra,2270 <init_EXINT>
    26e8:	00050413          	mv	s0,a0
    26ec:	00100493          	li	s1,1
    26f0:	00200693          	li	a3,2
    26f4:	fff00613          	li	a2,-1
    26f8:	00c10593          	addi	a1,sp,12
    26fc:	00040513          	mv	a0,s0
    2700:	c21ff0ef          	jal	ra,2320 <get_EXINT>
    2704:	00c12783          	lw	a5,12(sp)
    2708:	00200713          	li	a4,2
    270c:	02978663          	beq	a5,s1,2738 <TaskLineTrace+0x70>
    2710:	00e78c63          	beq	a5,a4,2728 <TaskLineTrace+0x60>
    2714:	fc079ee3          	bnez	a5,26f0 <TaskLineTrace+0x28>
    2718:	0c000593          	li	a1,192
    271c:	0c000513          	li	a0,192
    2720:	b11ff0ef          	jal	ra,2230 <set_PWM>
    2724:	fcdff06f          	j	26f0 <TaskLineTrace+0x28>
    2728:	0ff00593          	li	a1,255
    272c:	00000513          	li	a0,0
    2730:	b01ff0ef          	jal	ra,2230 <set_PWM>
    2734:	fbdff06f          	j	26f0 <TaskLineTrace+0x28>
    2738:	00000593          	li	a1,0
    273c:	0ff00513          	li	a0,255
    2740:	af1ff0ef          	jal	ra,2230 <set_PWM>
    2744:	fadff06f          	j	26f0 <TaskLineTrace+0x28>

00002748 <vApplicationMallocFailedHook>:
    2748:	ff010113          	addi	sp,sp,-16
    274c:	00112623          	sw	ra,12(sp)
    2750:	30047073          	csrci	mstatus,8
    2754:	00001517          	auipc	a0,0x1
    2758:	cc450513          	addi	a0,a0,-828 # 3418 <fonts+0x434>
    275c:	a11ff0ef          	jal	ra,216c <vSendString>
    2760:	a79ff0ef          	jal	ra,21d8 <simrv_exit>
    2764:	0000006f          	j	2764 <vApplicationMallocFailedHook+0x1c>

00002768 <vApplicationStackOverflowHook>:
    2768:	ff010113          	addi	sp,sp,-16
    276c:	00112623          	sw	ra,12(sp)
    2770:	30047073          	csrci	mstatus,8
    2774:	00001517          	auipc	a0,0x1
    2778:	cb450513          	addi	a0,a0,-844 # 3428 <fonts+0x444>
    277c:	9f1ff0ef          	jal	ra,216c <vSendString>
    2780:	a59ff0ef          	jal	ra,21d8 <simrv_exit>
    2784:	0000006f          	j	2784 <vApplicationStackOverflowHook+0x1c>

00002788 <vApplicationTickHook>:
    2788:	00008067          	ret
	...

00002800 <freertos_risc_v_trap_handler>:
    2800:	f8810113          	addi	sp,sp,-120
    2804:	00112223          	sw	ra,4(sp)
    2808:	00512423          	sw	t0,8(sp)
    280c:	00612623          	sw	t1,12(sp)
    2810:	00712823          	sw	t2,16(sp)
    2814:	00812a23          	sw	s0,20(sp)
    2818:	00912c23          	sw	s1,24(sp)
    281c:	00a12e23          	sw	a0,28(sp)
    2820:	02b12023          	sw	a1,32(sp)
    2824:	02c12223          	sw	a2,36(sp)
    2828:	02d12423          	sw	a3,40(sp)
    282c:	02e12623          	sw	a4,44(sp)
    2830:	02f12823          	sw	a5,48(sp)
    2834:	03012a23          	sw	a6,52(sp)
    2838:	03112c23          	sw	a7,56(sp)
    283c:	03212e23          	sw	s2,60(sp)
    2840:	05312023          	sw	s3,64(sp)
    2844:	05412223          	sw	s4,68(sp)
    2848:	05512423          	sw	s5,72(sp)
    284c:	05612623          	sw	s6,76(sp)
    2850:	05712823          	sw	s7,80(sp)
    2854:	05812a23          	sw	s8,84(sp)
    2858:	05912c23          	sw	s9,88(sp)
    285c:	05a12e23          	sw	s10,92(sp)
    2860:	07b12023          	sw	s11,96(sp)
    2864:	07c12223          	sw	t3,100(sp)
    2868:	07d12423          	sw	t4,104(sp)
    286c:	07e12623          	sw	t5,108(sp)
    2870:	07f12823          	sw	t6,112(sp)
    2874:	300022f3          	csrr	t0,mstatus
    2878:	06512a23          	sw	t0,116(sp)
    287c:	00001297          	auipc	t0,0x1
    2880:	d142a283          	lw	t0,-748(t0) # 3590 <pxCurrentTCB>
    2884:	0022a023          	sw	sp,0(t0)
    2888:	34202573          	csrr	a0,mcause
    288c:	341025f3          	csrr	a1,mepc

00002890 <test_if_asynchronous>:
    2890:	01f55613          	srli	a2,a0,0x1f
    2894:	08060063          	beqz	a2,2914 <handle_synchronous>
    2898:	00b12023          	sw	a1,0(sp)

0000289c <handle_asynchronous>:
    289c:	00100293          	li	t0,1
    28a0:	01f29293          	slli	t0,t0,0x1f
    28a4:	00728313          	addi	t1,t0,7
    28a8:	04651c63          	bne	a0,t1,2900 <test_if_external_interrupt>
    28ac:	00001297          	auipc	t0,0x1
    28b0:	cd82a283          	lw	t0,-808(t0) # 3584 <pullMachineTimerCompareRegister>
    28b4:	00001317          	auipc	t1,0x1
    28b8:	c9032303          	lw	t1,-880(t1) # 3544 <pullNextTime>
    28bc:	fff00e93          	li	t4,-1
    28c0:	00032383          	lw	t2,0(t1)
    28c4:	00432e03          	lw	t3,4(t1)
    28c8:	01d2a023          	sw	t4,0(t0)
    28cc:	01c2a223          	sw	t3,4(t0)
    28d0:	0072a023          	sw	t2,0(t0)
    28d4:	8201a283          	lw	t0,-2016(gp) # 3560 <uxTimerIncrementsForOneTick>
    28d8:	00728eb3          	add	t4,t0,t2
    28dc:	007ebf33          	sltu	t5,t4,t2
    28e0:	01ee0fb3          	add	t6,t3,t5
    28e4:	01d32023          	sw	t4,0(t1)
    28e8:	01f32223          	sw	t6,4(t1)
    28ec:	8241a103          	lw	sp,-2012(gp) # 3564 <xISRStackTop>
    28f0:	e0cfe0ef          	jal	ra,efc <xTaskIncrementTick>
    28f4:	04050a63          	beqz	a0,2948 <processed_source>
    28f8:	859fe0ef          	jal	ra,1150 <vTaskSwitchContext>
    28fc:	04c0006f          	j	2948 <processed_source>

00002900 <test_if_external_interrupt>:
    2900:	00430313          	addi	t1,t1,4
    2904:	02651e63          	bne	a0,t1,2940 <as_yet_unhandled>
    2908:	8241a103          	lw	sp,-2012(gp) # 3564 <xISRStackTop>
    290c:	a5dff0ef          	jal	ra,2368 <handle_trap>
    2910:	0380006f          	j	2948 <processed_source>

00002914 <handle_synchronous>:
    2914:	00458593          	addi	a1,a1,4
    2918:	00b12023          	sw	a1,0(sp)

0000291c <test_if_environment_call>:
    291c:	00b00293          	li	t0,11
    2920:	00551863          	bne	a0,t0,2930 <is_exception>
    2924:	8241a103          	lw	sp,-2012(gp) # 3564 <xISRStackTop>
    2928:	829fe0ef          	jal	ra,1150 <vTaskSwitchContext>
    292c:	01c0006f          	j	2948 <processed_source>

00002930 <is_exception>:
    2930:	342022f3          	csrr	t0,mcause
    2934:	34102373          	csrr	t1,mepc
    2938:	300023f3          	csrr	t2,mstatus
    293c:	ff5ff06f          	j	2930 <is_exception>

00002940 <as_yet_unhandled>:
    2940:	342022f3          	csrr	t0,mcause
    2944:	ffdff06f          	j	2940 <as_yet_unhandled>

00002948 <processed_source>:
    2948:	00001317          	auipc	t1,0x1
    294c:	c4832303          	lw	t1,-952(t1) # 3590 <pxCurrentTCB>
    2950:	00032103          	lw	sp,0(t1)
    2954:	00012283          	lw	t0,0(sp)
    2958:	34129073          	csrw	mepc,t0
    295c:	07412283          	lw	t0,116(sp)
    2960:	30029073          	csrw	mstatus,t0
    2964:	00412083          	lw	ra,4(sp)
    2968:	00812283          	lw	t0,8(sp)
    296c:	00c12303          	lw	t1,12(sp)
    2970:	01012383          	lw	t2,16(sp)
    2974:	01412403          	lw	s0,20(sp)
    2978:	01812483          	lw	s1,24(sp)
    297c:	01c12503          	lw	a0,28(sp)
    2980:	02012583          	lw	a1,32(sp)
    2984:	02412603          	lw	a2,36(sp)
    2988:	02812683          	lw	a3,40(sp)
    298c:	02c12703          	lw	a4,44(sp)
    2990:	03012783          	lw	a5,48(sp)
    2994:	03412803          	lw	a6,52(sp)
    2998:	03812883          	lw	a7,56(sp)
    299c:	03c12903          	lw	s2,60(sp)
    29a0:	04012983          	lw	s3,64(sp)
    29a4:	04412a03          	lw	s4,68(sp)
    29a8:	04812a83          	lw	s5,72(sp)
    29ac:	04c12b03          	lw	s6,76(sp)
    29b0:	05012b83          	lw	s7,80(sp)
    29b4:	05412c03          	lw	s8,84(sp)
    29b8:	05812c83          	lw	s9,88(sp)
    29bc:	05c12d03          	lw	s10,92(sp)
    29c0:	06012d83          	lw	s11,96(sp)
    29c4:	06412e03          	lw	t3,100(sp)
    29c8:	06812e83          	lw	t4,104(sp)
    29cc:	06c12f03          	lw	t5,108(sp)
    29d0:	07012f83          	lw	t6,112(sp)
    29d4:	07810113          	addi	sp,sp,120
    29d8:	30200073          	mret
    29dc:	00000013          	nop
    29e0:	00000013          	nop
    29e4:	00000013          	nop
    29e8:	00000013          	nop
    29ec:	00000013          	nop
    29f0:	00000013          	nop
    29f4:	00000013          	nop
    29f8:	00000013          	nop
    29fc:	00000013          	nop

00002a00 <xPortStartFirstTask>:
    2a00:	00000297          	auipc	t0,0x0
    2a04:	e0028293          	addi	t0,t0,-512 # 2800 <freertos_risc_v_trap_handler>
    2a08:	30529073          	csrw	mtvec,t0
    2a0c:	00001117          	auipc	sp,0x1
    2a10:	b8412103          	lw	sp,-1148(sp) # 3590 <pxCurrentTCB>
    2a14:	00012103          	lw	sp,0(sp)
    2a18:	00012083          	lw	ra,0(sp)
    2a1c:	00c12303          	lw	t1,12(sp)
    2a20:	01012383          	lw	t2,16(sp)
    2a24:	01412403          	lw	s0,20(sp)
    2a28:	01812483          	lw	s1,24(sp)
    2a2c:	01c12503          	lw	a0,28(sp)
    2a30:	02012583          	lw	a1,32(sp)
    2a34:	02412603          	lw	a2,36(sp)
    2a38:	02812683          	lw	a3,40(sp)
    2a3c:	02c12703          	lw	a4,44(sp)
    2a40:	03012783          	lw	a5,48(sp)
    2a44:	03412803          	lw	a6,52(sp)
    2a48:	03812883          	lw	a7,56(sp)
    2a4c:	03c12903          	lw	s2,60(sp)
    2a50:	04012983          	lw	s3,64(sp)
    2a54:	04412a03          	lw	s4,68(sp)
    2a58:	04812a83          	lw	s5,72(sp)
    2a5c:	04c12b03          	lw	s6,76(sp)
    2a60:	05012b83          	lw	s7,80(sp)
    2a64:	05412c03          	lw	s8,84(sp)
    2a68:	05812c83          	lw	s9,88(sp)
    2a6c:	05c12d03          	lw	s10,92(sp)
    2a70:	06012d83          	lw	s11,96(sp)
    2a74:	06412e03          	lw	t3,100(sp)
    2a78:	06812e83          	lw	t4,104(sp)
    2a7c:	06c12f03          	lw	t5,108(sp)
    2a80:	07012f83          	lw	t6,112(sp)
    2a84:	07412283          	lw	t0,116(sp)
    2a88:	00828293          	addi	t0,t0,8
    2a8c:	30029073          	csrw	mstatus,t0
    2a90:	00812283          	lw	t0,8(sp)
    2a94:	07810113          	addi	sp,sp,120
    2a98:	00008067          	ret
    2a9c:	00000013          	nop
    2aa0:	00000013          	nop
    2aa4:	00000013          	nop
    2aa8:	00000013          	nop
    2aac:	00000013          	nop
    2ab0:	00000013          	nop
    2ab4:	00000013          	nop
    2ab8:	00000013          	nop
    2abc:	00000013          	nop
    2ac0:	00000013          	nop
    2ac4:	00000013          	nop
    2ac8:	00000013          	nop
    2acc:	00000013          	nop
    2ad0:	00000013          	nop
    2ad4:	00000013          	nop
    2ad8:	00000013          	nop
    2adc:	00000013          	nop
    2ae0:	00000013          	nop
    2ae4:	00000013          	nop
    2ae8:	00000013          	nop
    2aec:	00000013          	nop
    2af0:	00000013          	nop
    2af4:	00000013          	nop
    2af8:	00000013          	nop
    2afc:	00000013          	nop

00002b00 <pxPortInitialiseStack>:
    2b00:	300022f3          	csrr	t0,mstatus
    2b04:	ff72f293          	andi	t0,t0,-9
    2b08:	18800313          	li	t1,392
    2b0c:	00431313          	slli	t1,t1,0x4
    2b10:	0062e2b3          	or	t0,t0,t1
    2b14:	ffc50513          	addi	a0,a0,-4
    2b18:	00552023          	sw	t0,0(a0)
    2b1c:	fa850513          	addi	a0,a0,-88
    2b20:	00c52023          	sw	a2,0(a0)
    2b24:	fe850513          	addi	a0,a0,-24
    2b28:	00052023          	sw	zero,0(a0)
    2b2c:	00000293          	li	t0,0

00002b30 <chip_specific_stack_frame>:
    2b30:	00028a63          	beqz	t0,2b44 <chip_specific_stack_frame+0x14>
    2b34:	ffc50513          	addi	a0,a0,-4
    2b38:	00052023          	sw	zero,0(a0)
    2b3c:	fff28293          	addi	t0,t0,-1
    2b40:	ff1ff06f          	j	2b30 <chip_specific_stack_frame>
    2b44:	ffc50513          	addi	a0,a0,-4
    2b48:	00b52023          	sw	a1,0(a0)
    2b4c:	00008067          	ret
	...

00002b84 <__clzsi2>:
int
__clzSI2 (UWtype x)
{
  Wtype ret;

  count_leading_zeros (ret, x);
    2b84:	000107b7          	lui	a5,0x10
    2b88:	02f57a63          	bgeu	a0,a5,2bbc <__clzsi2+0x38>
    2b8c:	10053793          	sltiu	a5,a0,256
    2b90:	0017c793          	xori	a5,a5,1
    2b94:	00379793          	slli	a5,a5,0x3
    2b98:	00003737          	lui	a4,0x3
    2b9c:	02000693          	li	a3,32
    2ba0:	40f686b3          	sub	a3,a3,a5
    2ba4:	00f55533          	srl	a0,a0,a5
    2ba8:	43c70793          	addi	a5,a4,1084 # 343c <__clz_tab>
    2bac:	00a787b3          	add	a5,a5,a0
    2bb0:	0007c503          	lbu	a0,0(a5) # 10000 <__global_pointer$+0xc2c0>

  return ret;
}
    2bb4:	40a68533          	sub	a0,a3,a0
    2bb8:	00008067          	ret
  count_leading_zeros (ret, x);
    2bbc:	01000737          	lui	a4,0x1000
    2bc0:	01000793          	li	a5,16
    2bc4:	fce56ae3          	bltu	a0,a4,2b98 <__clzsi2+0x14>
    2bc8:	01800793          	li	a5,24
    2bcc:	fcdff06f          	j	2b98 <__clzsi2+0x14>

00002bd0 <__mulsi3>:
/* Our RV64 64-bit routine is equivalent to our RV32 32-bit routine.  */
# define __muldi3 __mulsi3
#endif

FUNC_BEGIN (__muldi3)
  mv     a2, a0
    2bd0:	00050613          	mv	a2,a0
  li     a0, 0
    2bd4:	00000513          	li	a0,0
.L1:
  andi   a3, a1, 1
    2bd8:	0015f693          	andi	a3,a1,1
  beqz   a3, .L2
    2bdc:	00068463          	beqz	a3,2be4 <__mulsi3+0x14>
  add    a0, a0, a2
    2be0:	00c50533          	add	a0,a0,a2
.L2:
  srli   a1, a1, 1
    2be4:	0015d593          	srli	a1,a1,0x1
  slli   a2, a2, 1
    2be8:	00161613          	slli	a2,a2,0x1
  bnez   a1, .L1
    2bec:	fe0596e3          	bnez	a1,2bd8 <__mulsi3+0x8>
  ret
    2bf0:	00008067          	ret

00002bf4 <memcpy>:
    2bf4:	00b547b3          	xor	a5,a0,a1
    2bf8:	0037f793          	andi	a5,a5,3
    2bfc:	00c508b3          	add	a7,a0,a2
    2c00:	06079663          	bnez	a5,2c6c <memcpy+0x78>
    2c04:	00300793          	li	a5,3
    2c08:	06c7f263          	bgeu	a5,a2,2c6c <memcpy+0x78>
    2c0c:	00357793          	andi	a5,a0,3
    2c10:	00050713          	mv	a4,a0
    2c14:	0c079a63          	bnez	a5,2ce8 <memcpy+0xf4>
    2c18:	ffc8f613          	andi	a2,a7,-4
    2c1c:	40e606b3          	sub	a3,a2,a4
    2c20:	02000793          	li	a5,32
    2c24:	02000293          	li	t0,32
    2c28:	06d7c263          	blt	a5,a3,2c8c <memcpy+0x98>
    2c2c:	00058693          	mv	a3,a1
    2c30:	00070793          	mv	a5,a4
    2c34:	02c77863          	bgeu	a4,a2,2c64 <memcpy+0x70>
    2c38:	0006a803          	lw	a6,0(a3) # 40000000 <_stack_top+0x3ffea3b0>
    2c3c:	00478793          	addi	a5,a5,4
    2c40:	00468693          	addi	a3,a3,4
    2c44:	ff07ae23          	sw	a6,-4(a5)
    2c48:	fec7e8e3          	bltu	a5,a2,2c38 <memcpy+0x44>
    2c4c:	fff60793          	addi	a5,a2,-1
    2c50:	40e787b3          	sub	a5,a5,a4
    2c54:	ffc7f793          	andi	a5,a5,-4
    2c58:	00478793          	addi	a5,a5,4
    2c5c:	00f70733          	add	a4,a4,a5
    2c60:	00f585b3          	add	a1,a1,a5
    2c64:	01176863          	bltu	a4,a7,2c74 <memcpy+0x80>
    2c68:	00008067          	ret
    2c6c:	00050713          	mv	a4,a0
    2c70:	ff157ce3          	bgeu	a0,a7,2c68 <memcpy+0x74>
    2c74:	0005c783          	lbu	a5,0(a1)
    2c78:	00170713          	addi	a4,a4,1 # 1000001 <_stack_top+0xfea3b1>
    2c7c:	00158593          	addi	a1,a1,1
    2c80:	fef70fa3          	sb	a5,-1(a4)
    2c84:	ff1768e3          	bltu	a4,a7,2c74 <memcpy+0x80>
    2c88:	00008067          	ret
    2c8c:	0045a683          	lw	a3,4(a1)
    2c90:	01c5a783          	lw	a5,28(a1)
    2c94:	0005af83          	lw	t6,0(a1)
    2c98:	0085af03          	lw	t5,8(a1)
    2c9c:	00c5ae83          	lw	t4,12(a1)
    2ca0:	0105ae03          	lw	t3,16(a1)
    2ca4:	0145a303          	lw	t1,20(a1)
    2ca8:	0185a803          	lw	a6,24(a1)
    2cac:	00d72223          	sw	a3,4(a4)
    2cb0:	0205a683          	lw	a3,32(a1)
    2cb4:	01f72023          	sw	t6,0(a4)
    2cb8:	01e72423          	sw	t5,8(a4)
    2cbc:	01d72623          	sw	t4,12(a4)
    2cc0:	01c72823          	sw	t3,16(a4)
    2cc4:	00672a23          	sw	t1,20(a4)
    2cc8:	01072c23          	sw	a6,24(a4)
    2ccc:	00f72e23          	sw	a5,28(a4)
    2cd0:	02470713          	addi	a4,a4,36
    2cd4:	40e607b3          	sub	a5,a2,a4
    2cd8:	fed72e23          	sw	a3,-4(a4)
    2cdc:	02458593          	addi	a1,a1,36
    2ce0:	faf2c6e3          	blt	t0,a5,2c8c <memcpy+0x98>
    2ce4:	f49ff06f          	j	2c2c <memcpy+0x38>
    2ce8:	0005c683          	lbu	a3,0(a1)
    2cec:	00170713          	addi	a4,a4,1
    2cf0:	00377793          	andi	a5,a4,3
    2cf4:	fed70fa3          	sb	a3,-1(a4)
    2cf8:	00158593          	addi	a1,a1,1
    2cfc:	f0078ee3          	beqz	a5,2c18 <memcpy+0x24>
    2d00:	0005c683          	lbu	a3,0(a1)
    2d04:	00170713          	addi	a4,a4,1
    2d08:	00377793          	andi	a5,a4,3
    2d0c:	fed70fa3          	sb	a3,-1(a4)
    2d10:	00158593          	addi	a1,a1,1
    2d14:	fc079ae3          	bnez	a5,2ce8 <memcpy+0xf4>
    2d18:	f01ff06f          	j	2c18 <memcpy+0x24>

00002d1c <memmove>:
    2d1c:	02a5f663          	bgeu	a1,a0,2d48 <memmove+0x2c>
    2d20:	00c587b3          	add	a5,a1,a2
    2d24:	02f57263          	bgeu	a0,a5,2d48 <memmove+0x2c>
    2d28:	00c50733          	add	a4,a0,a2
    2d2c:	0e060a63          	beqz	a2,2e20 <memmove+0x104>
    2d30:	fff7c683          	lbu	a3,-1(a5)
    2d34:	fff78793          	addi	a5,a5,-1
    2d38:	fff70713          	addi	a4,a4,-1
    2d3c:	00d70023          	sb	a3,0(a4)
    2d40:	fef598e3          	bne	a1,a5,2d30 <memmove+0x14>
    2d44:	00008067          	ret
    2d48:	00f00793          	li	a5,15
    2d4c:	02c7e863          	bltu	a5,a2,2d7c <memmove+0x60>
    2d50:	00050793          	mv	a5,a0
    2d54:	fff60693          	addi	a3,a2,-1
    2d58:	0c060c63          	beqz	a2,2e30 <memmove+0x114>
    2d5c:	00168693          	addi	a3,a3,1
    2d60:	00d786b3          	add	a3,a5,a3
    2d64:	0005c703          	lbu	a4,0(a1)
    2d68:	00178793          	addi	a5,a5,1
    2d6c:	00158593          	addi	a1,a1,1
    2d70:	fee78fa3          	sb	a4,-1(a5)
    2d74:	fed798e3          	bne	a5,a3,2d64 <memmove+0x48>
    2d78:	00008067          	ret
    2d7c:	00b567b3          	or	a5,a0,a1
    2d80:	0037f793          	andi	a5,a5,3
    2d84:	0a079063          	bnez	a5,2e24 <memmove+0x108>
    2d88:	ff060893          	addi	a7,a2,-16
    2d8c:	ff08f893          	andi	a7,a7,-16
    2d90:	01088893          	addi	a7,a7,16
    2d94:	01150833          	add	a6,a0,a7
    2d98:	00058713          	mv	a4,a1
    2d9c:	00050793          	mv	a5,a0
    2da0:	00072683          	lw	a3,0(a4)
    2da4:	01070713          	addi	a4,a4,16
    2da8:	01078793          	addi	a5,a5,16
    2dac:	fed7a823          	sw	a3,-16(a5)
    2db0:	ff472683          	lw	a3,-12(a4)
    2db4:	fed7aa23          	sw	a3,-12(a5)
    2db8:	ff872683          	lw	a3,-8(a4)
    2dbc:	fed7ac23          	sw	a3,-8(a5)
    2dc0:	ffc72683          	lw	a3,-4(a4)
    2dc4:	fed7ae23          	sw	a3,-4(a5)
    2dc8:	fcf81ce3          	bne	a6,a5,2da0 <memmove+0x84>
    2dcc:	00c67713          	andi	a4,a2,12
    2dd0:	011585b3          	add	a1,a1,a7
    2dd4:	00f67813          	andi	a6,a2,15
    2dd8:	04070e63          	beqz	a4,2e34 <memmove+0x118>
    2ddc:	00058713          	mv	a4,a1
    2de0:	00078893          	mv	a7,a5
    2de4:	00300e13          	li	t3,3
    2de8:	00072303          	lw	t1,0(a4)
    2dec:	00470713          	addi	a4,a4,4
    2df0:	40e806b3          	sub	a3,a6,a4
    2df4:	0068a023          	sw	t1,0(a7)
    2df8:	00d586b3          	add	a3,a1,a3
    2dfc:	00488893          	addi	a7,a7,4
    2e00:	fede64e3          	bltu	t3,a3,2de8 <memmove+0xcc>
    2e04:	ffc80713          	addi	a4,a6,-4
    2e08:	ffc77713          	andi	a4,a4,-4
    2e0c:	00470713          	addi	a4,a4,4
    2e10:	00367613          	andi	a2,a2,3
    2e14:	00e787b3          	add	a5,a5,a4
    2e18:	00e585b3          	add	a1,a1,a4
    2e1c:	f39ff06f          	j	2d54 <memmove+0x38>
    2e20:	00008067          	ret
    2e24:	fff60693          	addi	a3,a2,-1
    2e28:	00050793          	mv	a5,a0
    2e2c:	f31ff06f          	j	2d5c <memmove+0x40>
    2e30:	00008067          	ret
    2e34:	00080613          	mv	a2,a6
    2e38:	f1dff06f          	j	2d54 <memmove+0x38>

00002e3c <memset>:
    2e3c:	00f00313          	li	t1,15
    2e40:	00050713          	mv	a4,a0
    2e44:	02c37e63          	bgeu	t1,a2,2e80 <memset+0x44>
    2e48:	00f77793          	andi	a5,a4,15
    2e4c:	0a079063          	bnez	a5,2eec <memset+0xb0>
    2e50:	08059263          	bnez	a1,2ed4 <memset+0x98>
    2e54:	ff067693          	andi	a3,a2,-16
    2e58:	00f67613          	andi	a2,a2,15
    2e5c:	00e686b3          	add	a3,a3,a4
    2e60:	00b72023          	sw	a1,0(a4)
    2e64:	00b72223          	sw	a1,4(a4)
    2e68:	00b72423          	sw	a1,8(a4)
    2e6c:	00b72623          	sw	a1,12(a4)
    2e70:	01070713          	addi	a4,a4,16
    2e74:	fed766e3          	bltu	a4,a3,2e60 <memset+0x24>
    2e78:	00061463          	bnez	a2,2e80 <memset+0x44>
    2e7c:	00008067          	ret
    2e80:	40c306b3          	sub	a3,t1,a2
    2e84:	00269693          	slli	a3,a3,0x2
    2e88:	00000297          	auipc	t0,0x0
    2e8c:	005686b3          	add	a3,a3,t0
    2e90:	00c68067          	jr	12(a3)
    2e94:	00b70723          	sb	a1,14(a4)
    2e98:	00b706a3          	sb	a1,13(a4)
    2e9c:	00b70623          	sb	a1,12(a4)
    2ea0:	00b705a3          	sb	a1,11(a4)
    2ea4:	00b70523          	sb	a1,10(a4)
    2ea8:	00b704a3          	sb	a1,9(a4)
    2eac:	00b70423          	sb	a1,8(a4)
    2eb0:	00b703a3          	sb	a1,7(a4)
    2eb4:	00b70323          	sb	a1,6(a4)
    2eb8:	00b702a3          	sb	a1,5(a4)
    2ebc:	00b70223          	sb	a1,4(a4)
    2ec0:	00b701a3          	sb	a1,3(a4)
    2ec4:	00b70123          	sb	a1,2(a4)
    2ec8:	00b700a3          	sb	a1,1(a4)
    2ecc:	00b70023          	sb	a1,0(a4)
    2ed0:	00008067          	ret
    2ed4:	0ff5f593          	zext.b	a1,a1
    2ed8:	00859693          	slli	a3,a1,0x8
    2edc:	00d5e5b3          	or	a1,a1,a3
    2ee0:	01059693          	slli	a3,a1,0x10
    2ee4:	00d5e5b3          	or	a1,a1,a3
    2ee8:	f6dff06f          	j	2e54 <memset+0x18>
    2eec:	00279693          	slli	a3,a5,0x2
    2ef0:	00000297          	auipc	t0,0x0
    2ef4:	005686b3          	add	a3,a3,t0
    2ef8:	00008293          	mv	t0,ra
    2efc:	fa0680e7          	jalr	-96(a3)
    2f00:	00028093          	mv	ra,t0
    2f04:	ff078793          	addi	a5,a5,-16
    2f08:	40f70733          	sub	a4,a4,a5
    2f0c:	00f60633          	add	a2,a2,a5
    2f10:	f6c378e3          	bgeu	t1,a2,2e80 <memset+0x44>
    2f14:	f3dff06f          	j	2e50 <memset+0x14>

00002f18 <strlen>:
    2f18:	00357793          	andi	a5,a0,3
    2f1c:	00050713          	mv	a4,a0
    2f20:	04079c63          	bnez	a5,2f78 <strlen+0x60>
    2f24:	7f7f86b7          	lui	a3,0x7f7f8
    2f28:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_stack_top+0x7f7e232f>
    2f2c:	fff00593          	li	a1,-1
    2f30:	00072603          	lw	a2,0(a4)
    2f34:	00470713          	addi	a4,a4,4
    2f38:	00d677b3          	and	a5,a2,a3
    2f3c:	00d787b3          	add	a5,a5,a3
    2f40:	00c7e7b3          	or	a5,a5,a2
    2f44:	00d7e7b3          	or	a5,a5,a3
    2f48:	feb784e3          	beq	a5,a1,2f30 <strlen+0x18>
    2f4c:	ffc74683          	lbu	a3,-4(a4)
    2f50:	40a707b3          	sub	a5,a4,a0
    2f54:	04068463          	beqz	a3,2f9c <strlen+0x84>
    2f58:	ffd74683          	lbu	a3,-3(a4)
    2f5c:	02068c63          	beqz	a3,2f94 <strlen+0x7c>
    2f60:	ffe74503          	lbu	a0,-2(a4)
    2f64:	00a03533          	snez	a0,a0
    2f68:	00f50533          	add	a0,a0,a5
    2f6c:	ffe50513          	addi	a0,a0,-2
    2f70:	00008067          	ret
    2f74:	fa0688e3          	beqz	a3,2f24 <strlen+0xc>
    2f78:	00074783          	lbu	a5,0(a4)
    2f7c:	00170713          	addi	a4,a4,1
    2f80:	00377693          	andi	a3,a4,3
    2f84:	fe0798e3          	bnez	a5,2f74 <strlen+0x5c>
    2f88:	40a70733          	sub	a4,a4,a0
    2f8c:	fff70513          	addi	a0,a4,-1
    2f90:	00008067          	ret
    2f94:	ffd78513          	addi	a0,a5,-3
    2f98:	00008067          	ret
    2f9c:	ffc78513          	addi	a0,a5,-4
    2fa0:	00008067          	ret

Disassembly of section .rodata:

00002fa4 <fonts-0x40>:
    2fa4:	4449                	li	s0,18
    2fa6:	454c                	lw	a1,12(a0)
    2fa8:	0000                	unimp
    2faa:	0000                	unimp
    2fac:	6d54                	flw	fa3,28(a0)
    2fae:	5172                	lw	sp,60(sp)
    2fb0:	0000                	unimp
    2fb2:	0000                	unimp
    2fb4:	6d54                	flw	fa3,28(a0)
    2fb6:	2072                	fld	ft0,280(sp)
    2fb8:	00637653          	fadd.s	fa2,ft6,ft6
    2fbc:	efd4                	fsw	fa3,28(a5)
    2fbe:	ffff                	0xffff
    2fc0:	efd4                	fsw	fa3,28(a5)
    2fc2:	ffff                	0xffff
    2fc4:	efd4                	fsw	fa3,28(a5)
    2fc6:	ffff                	0xffff
    2fc8:	f074                	fsw	fa3,100(s0)
    2fca:	ffff                	0xffff
    2fcc:	f03c                	fsw	fa5,96(s0)
    2fce:	ffff                	0xffff
    2fd0:	f084                	fsw	fs1,32(s1)
    2fd2:	ffff                	0xffff
    2fd4:	efd4                	fsw	fa3,28(a5)
    2fd6:	ffff                	0xffff
    2fd8:	efd4                	fsw	fa3,28(a5)
    2fda:	ffff                	0xffff
    2fdc:	f074                	fsw	fa3,100(s0)
    2fde:	ffff                	0xffff
    2fe0:	f03c                	fsw	fa5,96(s0)
    2fe2:	ffff                	0xffff

00002fe4 <fonts>:
	...
    30ec:	0000                	unimp
    30ee:	5f06                	lw	t5,96(sp)
    30f0:	065f 0000 0300      	0x3000000065f
    30f6:	03030003          	lb	zero,48(t1)
    30fa:	0000                	unimp
    30fc:	7f14                	flw	fa3,56(a4)
    30fe:	147f                	0x147f
    3100:	7f7f                	0x7f7f
    3102:	0014                	0x14
    3104:	2e24                	fld	fs1,88(a2)
    3106:	123a6b6b          	0x123a6b6b
    310a:	0000                	unimp
    310c:	6646                	flw	fa2,80(sp)
    310e:	1830                	addi	a2,sp,56
    3110:	660c                	flw	fa1,8(a2)
    3112:	0062                	c.slli	zero,0x18
    3114:	7a30                	flw	fa2,112(a2)
    3116:	7a375d4f          	fnmadd.d	fs10,fa4,ft3,fa5,unknown
    311a:	0048                	addi	a0,sp,4
    311c:	0704                	addi	s1,sp,896
    311e:	00000003          	lb	zero,0(zero) # 0 <_start>
    3122:	0000                	unimp
    3124:	1c00                	addi	s0,sp,560
    3126:	633e                	flw	ft6,204(sp)
    3128:	0041                	c.nop	16
    312a:	0000                	unimp
    312c:	4100                	lw	s0,0(a0)
    312e:	001c3e63          	0x1c3e63
    3132:	0000                	unimp
    3134:	2a08                	fld	fa0,16(a2)
    3136:	1c3e                	slli	s8,s8,0x2f
    3138:	3e1c                	fld	fa5,56(a2)
    313a:	082a                	slli	a6,a6,0xa
    313c:	0808                	addi	a0,sp,16
    313e:	3e3e                	fld	ft8,488(sp)
    3140:	0808                	addi	a0,sp,16
    3142:	0000                	unimp
    3144:	8000                	0x8000
    3146:	60e0                	flw	fs0,68(s1)
    3148:	0000                	unimp
    314a:	0000                	unimp
    314c:	0808                	addi	a0,sp,16
    314e:	0808                	addi	a0,sp,16
    3150:	0808                	addi	a0,sp,16
    3152:	0000                	unimp
    3154:	0000                	unimp
    3156:	6060                	flw	fs0,68(s0)
    3158:	0000                	unimp
    315a:	0000                	unimp
    315c:	3060                	fld	fs0,224(s0)
    315e:	0c18                	addi	a4,sp,528
    3160:	0306                	slli	t1,t1,0x1
    3162:	0001                	nop
    3164:	7f3e                	flw	ft10,236(sp)
    3166:	5971                	li	s2,-4
    3168:	7f4d                	lui	t5,0xffff3
    316a:	003e                	c.slli	zero,0xf
    316c:	4240                	lw	s0,4(a2)
    316e:	7f7f                	0x7f7f
    3170:	4040                	lw	s0,4(s0)
    3172:	0000                	unimp
    3174:	7362                	flw	ft6,56(sp)
    3176:	4959                	li	s2,22
    3178:	0000666f          	jal	a2,9178 <__global_pointer$+0x5438>
    317c:	6322                	flw	ft6,8(sp)
    317e:	4949                	li	s2,18
    3180:	367f                	0x367f
    3182:	0000                	unimp
    3184:	1c18                	addi	a4,sp,560
    3186:	5316                	lw	t1,100(sp)
    3188:	7f7f                	0x7f7f
    318a:	0050                	addi	a2,sp,4
    318c:	45456727          	0x45456727
    3190:	397d                	jal	2e4e <memset+0x12>
    3192:	0000                	unimp
    3194:	7e3c                	flw	fa5,120(a2)
    3196:	3079494b          	fnmsub.s	fs2,fs2,ft7,ft6,rmm
    319a:	0000                	unimp
    319c:	79710303          	lb	t1,1943(sp)
    31a0:	0000070f          	0x70f
    31a4:	7f36                	flw	ft10,108(sp)
    31a6:	4949                	li	s2,18
    31a8:	367f                	0x367f
    31aa:	0000                	unimp
    31ac:	4f06                	lw	t5,64(sp)
    31ae:	6949                	lui	s2,0x12
    31b0:	00001e3f 66660000 	0x6666000000001e3f
    31b8:	0000                	unimp
    31ba:	0000                	unimp
    31bc:	8000                	0x8000
    31be:	66e6                	flw	fa3,88(sp)
    31c0:	0000                	unimp
    31c2:	0000                	unimp
    31c4:	1c08                	addi	a0,sp,560
    31c6:	6336                	flw	ft6,76(sp)
    31c8:	0041                	c.nop	16
    31ca:	0000                	unimp
    31cc:	2424                	fld	fs1,72(s0)
    31ce:	2424                	fld	fs1,72(s0)
    31d0:	2424                	fld	fs1,72(s0)
    31d2:	0000                	unimp
    31d4:	4100                	lw	s0,0(a0)
    31d6:	081c3663          	0x81c3663
    31da:	0000                	unimp
    31dc:	0302                	c.slli64	t1
    31de:	5951                	li	s2,-12
    31e0:	0000060f          	0x60f
    31e4:	7f3e                	flw	ft10,236(sp)
    31e6:	5d41                	li	s10,-16
    31e8:	1f5d                	addi	t5,t5,-9
    31ea:	001e                	c.slli	zero,0x7
    31ec:	7e7c                	flw	fa5,124(a2)
    31ee:	7c7e1313          	0x7c7e1313
    31f2:	0000                	unimp
    31f4:	7f41                	lui	t5,0xffff0
    31f6:	497f                	0x497f
    31f8:	7f49                	lui	t5,0xffff2
    31fa:	0036                	c.slli	zero,0xd
    31fc:	3e1c                	fld	fa5,56(a2)
    31fe:	63414163          	blt	sp,s4,3820 <ucHeap+0x23c>
    3202:	0022                	c.slli	zero,0x8
    3204:	7f41                	lui	t5,0xffff0
    3206:	417f                	0x417f
    3208:	001c3e63          	0x1c3e63
    320c:	7f41                	lui	t5,0xffff0
    320e:	497f                	0x497f
    3210:	415d                	li	sp,23
    3212:	7f410063          	beq	sp,s4,39f2 <ucHeap+0x40e>
    3216:	497f                	0x497f
    3218:	011d                	addi	sp,sp,7
    321a:	3e1c0003          	lb	zero,993(s8)
    321e:	73514163          	blt	sp,s5,3940 <ucHeap+0x35c>
    3222:	0072                	c.slli	zero,0x1c
    3224:	7f7f                	0x7f7f
    3226:	0808                	addi	a0,sp,16
    3228:	7f7f                	0x7f7f
    322a:	0000                	unimp
    322c:	4100                	lw	s0,0(a0)
    322e:	7f7f                	0x7f7f
    3230:	0041                	c.nop	16
    3232:	0000                	unimp
    3234:	7030                	flw	fa2,96(s0)
    3236:	4140                	lw	s0,4(a0)
    3238:	3f7f                	0x3f7f
    323a:	0001                	nop
    323c:	7f41                	lui	t5,0xffff0
    323e:	087f                	0x87f
    3240:	771c                	flw	fa5,40(a4)
    3242:	7f410063          	beq	sp,s4,3a22 <ucHeap+0x43e>
    3246:	417f                	0x417f
    3248:	6040                	flw	fs0,4(s0)
    324a:	0070                	addi	a2,sp,12
    324c:	7f7f                	0x7f7f
    324e:	1c0e                	slli	s8,s8,0x23
    3250:	7f0e                	flw	ft10,224(sp)
    3252:	007f                	0x7f
    3254:	7f7f                	0x7f7f
    3256:	0c06                	slli	s8,s8,0x1
    3258:	7f18                	flw	fa4,56(a4)
    325a:	007f                	0x7f
    325c:	3e1c                	fld	fa5,56(a2)
    325e:	3e634163          	blt	t1,t1,3640 <ucHeap+0x5c>
    3262:	001c                	0x1c
    3264:	7f41                	lui	t5,0xffff0
    3266:	497f                	0x497f
    3268:	0f09                	addi	t5,t5,2
    326a:	0006                	c.slli	zero,0x1
    326c:	3f1e                	fld	ft10,480(sp)
    326e:	7121                	addi	sp,sp,-448
    3270:	5e7f                	0x5e7f
    3272:	0000                	unimp
    3274:	7f41                	lui	t5,0xffff0
    3276:	097f                	0x97f
    3278:	7f19                	lui	t5,0xfffe6
    327a:	0066                	c.slli	zero,0x19
    327c:	6f26                	flw	ft10,72(sp)
    327e:	594d                	li	s2,-13
    3280:	00003273          	csrrc	tp,ustatus,zero
    3284:	7f7f4103          	lbu	sp,2039(t5) # fffe67f7 <_stack_top+0xfffd0ba7>
    3288:	0341                	addi	t1,t1,16
    328a:	0000                	unimp
    328c:	7f7f                	0x7f7f
    328e:	4040                	lw	s0,4(s0)
    3290:	7f7f                	0x7f7f
    3292:	0000                	unimp
    3294:	3f1f 6060 1f3f      	0x1f3f60603f1f
    329a:	0000                	unimp
    329c:	7f7f                	0x7f7f
    329e:	1830                	addi	a2,sp,56
    32a0:	7f30                	flw	fa2,120(a4)
    32a2:	007f                	0x7f
    32a4:	183c6743          	fmadd.s	fa4,fs8,ft3,ft3,unknown
    32a8:	673c                	flw	fa5,72(a4)
    32aa:	4f070043          	fmadd.q	ft0,fa4,fa6,fs1,rne
    32ae:	7878                	flw	fa4,116(s0)
    32b0:	0000074f          	fnmadd.s	fa4,ft0,ft0,ft0,rne
    32b4:	59716347          	fmsub.s	ft6,ft2,fs7,fa1,unknown
    32b8:	674d                	lui	a4,0x13
    32ba:	7f000073          	0x7f000073
    32be:	417f                	0x417f
    32c0:	0041                	c.nop	16
    32c2:	0000                	unimp
    32c4:	0301                	addi	t1,t1,0
    32c6:	0c06                	slli	s8,s8,0x1
    32c8:	3018                	fld	fa4,32(s0)
    32ca:	0060                	addi	s0,sp,12
    32cc:	4100                	lw	s0,0(a0)
    32ce:	7f41                	lui	t5,0xffff0
    32d0:	007f                	0x7f
    32d2:	0000                	unimp
    32d4:	0c08                	addi	a0,sp,528
    32d6:	0306                	slli	t1,t1,0x1
    32d8:	0c06                	slli	s8,s8,0x1
    32da:	0008                	0x8
    32dc:	8080                	0x8080
    32de:	8080                	0x8080
    32e0:	8080                	0x8080
    32e2:	8080                	0x8080
    32e4:	0000                	unimp
    32e6:	00040703          	lb	a4,0(s0)
    32ea:	0000                	unimp
    32ec:	7420                	flw	fs0,104(s0)
    32ee:	5454                	lw	a3,44(s0)
    32f0:	783c                	flw	fa5,112(s0)
    32f2:	0040                	addi	s0,sp,4
    32f4:	7f41                	lui	t5,0xffff0
    32f6:	7848483f 7c380030 	0x7c3800307848483f
    32fe:	4444                	lw	s1,12(s0)
    3300:	286c                	fld	fa1,208(s0)
    3302:	0000                	unimp
    3304:	7830                	flw	fa2,112(s0)
    3306:	4948                	lw	a0,20(a0)
    3308:	00407f3f 54547c38 	0x54547c3800407f3f
    3310:	185c                	addi	a5,sp,52
    3312:	0000                	unimp
    3314:	7e48                	flw	fa0,60(a2)
    3316:	497f                	0x497f
    3318:	00000203          	lb	tp,0(zero) # 0 <_start>
    331c:	bc98                	fsd	fa4,56(s1)
    331e:	a4a4                	fsd	fs1,72(s1)
    3320:	7cf8                	flw	fa4,124(s1)
    3322:	0004                	0x4
    3324:	7f41                	lui	t5,0xffff0
    3326:	087f                	0x87f
    3328:	7c04                	flw	fs1,56(s0)
    332a:	0078                	addi	a4,sp,12
    332c:	4400                	lw	s0,8(s0)
    332e:	7d7d                	lui	s10,0xfffff
    3330:	0040                	addi	s0,sp,4
    3332:	0000                	unimp
    3334:	e060                	fsw	fs0,68(s0)
    3336:	8080                	0x8080
    3338:	7dfd                	lui	s11,0xfffff
    333a:	0000                	unimp
    333c:	7f41                	lui	t5,0xffff0
    333e:	107f                	0x107f
    3340:	6c38                	flw	fa4,88(s0)
    3342:	0044                	addi	s1,sp,4
    3344:	4100                	lw	s0,0(a0)
    3346:	7f7f                	0x7f7f
    3348:	0040                	addi	s0,sp,4
    334a:	0000                	unimp
    334c:	7c7c                	flw	fa5,124(s0)
    334e:	3818                	fld	fa4,48(s0)
    3350:	7c1c                	flw	fa5,56(s0)
    3352:	0078                	addi	a4,sp,12
    3354:	7c7c                	flw	fa5,124(s0)
    3356:	0404                	addi	s1,sp,512
    3358:	787c                	flw	fa5,116(s0)
    335a:	0000                	unimp
    335c:	7c38                	flw	fa4,120(s0)
    335e:	4444                	lw	s1,12(s0)
    3360:	387c                	fld	fa5,240(s0)
    3362:	0000                	unimp
    3364:	fc84                	fsw	fs1,56(s1)
    3366:	a4f8                	fsd	fa4,200(s1)
    3368:	3c24                	fld	fs1,120(s0)
    336a:	0018                	0x18
    336c:	3c18                	fld	fa4,56(s0)
    336e:	a424                	fsd	fs1,72(s0)
    3370:	fcf8                	fsw	fa4,124(s1)
    3372:	0084                	addi	s1,sp,64
    3374:	7c44                	flw	fs1,60(s0)
    3376:	4c78                	lw	a4,92(s0)
    3378:	1c04                	addi	s1,sp,560
    337a:	0018                	0x18
    337c:	5c48                	lw	a0,60(s0)
    337e:	5454                	lw	a3,44(s0)
    3380:	2474                	fld	fa3,200(s0)
    3382:	0000                	unimp
    3384:	0400                	addi	s0,sp,512
    3386:	7f3e                	flw	ft10,236(sp)
    3388:	2444                	fld	fs1,136(s0)
    338a:	0000                	unimp
    338c:	7c3c                	flw	fa5,120(s0)
    338e:	4040                	lw	s0,4(s0)
    3390:	7c3c                	flw	fa5,120(s0)
    3392:	0040                	addi	s0,sp,4
    3394:	3c1c                	fld	fa5,56(s0)
    3396:	6060                	flw	fs0,68(s0)
    3398:	1c3c                	addi	a5,sp,568
    339a:	0000                	unimp
    339c:	7c3c                	flw	fa5,120(s0)
    339e:	3870                	fld	fa2,240(s0)
    33a0:	7c70                	flw	fa2,124(s0)
    33a2:	003c                	addi	a5,sp,8
    33a4:	6c44                	flw	fs1,28(s0)
    33a6:	1038                	addi	a4,sp,40
    33a8:	6c38                	flw	fa4,88(s0)
    33aa:	0044                	addi	s1,sp,4
    33ac:	bc9c                	fsd	fa5,56(s1)
    33ae:	a0a0                	fsd	fs0,64(s1)
    33b0:	7cfc                	flw	fa5,124(s1)
    33b2:	0000                	unimp
    33b4:	644c                	flw	fa1,12(s0)
    33b6:	5c74                	lw	a3,124(s0)
    33b8:	644c                	flw	fa1,12(s0)
    33ba:	0000                	unimp
    33bc:	0808                	addi	a0,sp,16
    33be:	773e                	flw	fa4,236(sp)
    33c0:	4141                	li	sp,16
    33c2:	0000                	unimp
    33c4:	0000                	unimp
    33c6:	7700                	flw	fs0,40(a4)
    33c8:	00000077          	0x77
    33cc:	4141                	li	sp,16
    33ce:	08083e77          	0x8083e77
    33d2:	0000                	unimp
    33d4:	0302                	c.slli64	t1
    33d6:	0301                	addi	t1,t1,0
    33d8:	0302                	c.slli64	t1
    33da:	0001                	nop
	...
    33e4:	6548                	flw	fa0,12(a0)
    33e6:	6c6c                	flw	fa1,92(s0)
    33e8:	7246206f          	j	65b0c <_stack_top+0x4febc>
    33ec:	6565                	lui	a0,0x19
    33ee:	5452                	lw	s0,52(sp)
    33f0:	2121534f          	fnmadd.s	ft6,ft2,fs2,ft4,unknown
    33f4:	000a                	c.slli	zero,0x2
    33f6:	0000                	unimp
    33f8:	6154                	flw	fa3,4(a0)
    33fa:	694c6b73          	csrrsi	s6,0x694,24
    33fe:	656e                	flw	fa0,216(sp)
    3400:	7254                	flw	fa3,36(a2)
    3402:	6361                	lui	t1,0x18
    3404:	0065                	c.nop	25
    3406:	0000                	unimp
    3408:	6154                	flw	fa3,4(a0)
    340a:	65486b73          	csrrsi	s6,0x654,16
    340e:	7261                	lui	tp,0xffff8
    3410:	4274                	lw	a3,68(a2)
    3412:	6165                	addi	sp,sp,112
    3414:	0074                	addi	a3,sp,12
    3416:	0000                	unimp
    3418:	614d                	addi	sp,sp,176
    341a:	6c6c                	flw	fa1,92(s0)
    341c:	4620636f          	jal	t1,987e <__global_pointer$+0x5b3e>
    3420:	6961                	lui	s2,0x18
    3422:	656c                	flw	fa1,76(a0)
    3424:	2164                	fld	fs1,192(a0)
    3426:	0000                	unimp
    3428:	63617453          	0x63617453
    342c:	764f206b          	0x764f206b
    3430:	7265                	lui	tp,0xffff9
    3432:	6c66                	flw	fs8,88(sp)
    3434:	2121776f          	jal	a4,1a646 <_stack_top+0x49f6>
    3438:	0000                	unimp
	...

0000343c <__clz_tab>:
const UQItype __clz_tab[256] =
    343c:	0100                	addi	s0,sp,128
    343e:	0202                	c.slli64	tp
    3440:	03030303          	lb	t1,48(t1) # 18030 <_stack_top+0x23e0>
    3444:	0404                	addi	s1,sp,512
    3446:	0404                	addi	s1,sp,512
    3448:	0404                	addi	s1,sp,512
    344a:	0404                	addi	s1,sp,512
    344c:	0505                	addi	a0,a0,1
    344e:	0505                	addi	a0,a0,1
    3450:	0505                	addi	a0,a0,1
    3452:	0505                	addi	a0,a0,1
    3454:	0505                	addi	a0,a0,1
    3456:	0505                	addi	a0,a0,1
    3458:	0505                	addi	a0,a0,1
    345a:	0505                	addi	a0,a0,1
    345c:	0606                	slli	a2,a2,0x1
    345e:	0606                	slli	a2,a2,0x1
    3460:	0606                	slli	a2,a2,0x1
    3462:	0606                	slli	a2,a2,0x1
    3464:	0606                	slli	a2,a2,0x1
    3466:	0606                	slli	a2,a2,0x1
    3468:	0606                	slli	a2,a2,0x1
    346a:	0606                	slli	a2,a2,0x1
    346c:	0606                	slli	a2,a2,0x1
    346e:	0606                	slli	a2,a2,0x1
    3470:	0606                	slli	a2,a2,0x1
    3472:	0606                	slli	a2,a2,0x1
    3474:	0606                	slli	a2,a2,0x1
    3476:	0606                	slli	a2,a2,0x1
    3478:	0606                	slli	a2,a2,0x1
    347a:	0606                	slli	a2,a2,0x1
    347c:	07070707          	0x7070707
    3480:	07070707          	0x7070707
    3484:	07070707          	0x7070707
    3488:	07070707          	0x7070707
    348c:	07070707          	0x7070707
    3490:	07070707          	0x7070707
    3494:	07070707          	0x7070707
    3498:	07070707          	0x7070707
    349c:	07070707          	0x7070707
    34a0:	07070707          	0x7070707
    34a4:	07070707          	0x7070707
    34a8:	07070707          	0x7070707
    34ac:	07070707          	0x7070707
    34b0:	07070707          	0x7070707
    34b4:	07070707          	0x7070707
    34b8:	07070707          	0x7070707
    34bc:	0808                	addi	a0,sp,16
    34be:	0808                	addi	a0,sp,16
    34c0:	0808                	addi	a0,sp,16
    34c2:	0808                	addi	a0,sp,16
    34c4:	0808                	addi	a0,sp,16
    34c6:	0808                	addi	a0,sp,16
    34c8:	0808                	addi	a0,sp,16
    34ca:	0808                	addi	a0,sp,16
    34cc:	0808                	addi	a0,sp,16
    34ce:	0808                	addi	a0,sp,16
    34d0:	0808                	addi	a0,sp,16
    34d2:	0808                	addi	a0,sp,16
    34d4:	0808                	addi	a0,sp,16
    34d6:	0808                	addi	a0,sp,16
    34d8:	0808                	addi	a0,sp,16
    34da:	0808                	addi	a0,sp,16
    34dc:	0808                	addi	a0,sp,16
    34de:	0808                	addi	a0,sp,16
    34e0:	0808                	addi	a0,sp,16
    34e2:	0808                	addi	a0,sp,16
    34e4:	0808                	addi	a0,sp,16
    34e6:	0808                	addi	a0,sp,16
    34e8:	0808                	addi	a0,sp,16
    34ea:	0808                	addi	a0,sp,16
    34ec:	0808                	addi	a0,sp,16
    34ee:	0808                	addi	a0,sp,16
    34f0:	0808                	addi	a0,sp,16
    34f2:	0808                	addi	a0,sp,16
    34f4:	0808                	addi	a0,sp,16
    34f6:	0808                	addi	a0,sp,16
    34f8:	0808                	addi	a0,sp,16
    34fa:	0808                	addi	a0,sp,16
    34fc:	0808                	addi	a0,sp,16
    34fe:	0808                	addi	a0,sp,16
    3500:	0808                	addi	a0,sp,16
    3502:	0808                	addi	a0,sp,16
    3504:	0808                	addi	a0,sp,16
    3506:	0808                	addi	a0,sp,16
    3508:	0808                	addi	a0,sp,16
    350a:	0808                	addi	a0,sp,16
    350c:	0808                	addi	a0,sp,16
    350e:	0808                	addi	a0,sp,16
    3510:	0808                	addi	a0,sp,16
    3512:	0808                	addi	a0,sp,16
    3514:	0808                	addi	a0,sp,16
    3516:	0808                	addi	a0,sp,16
    3518:	0808                	addi	a0,sp,16
    351a:	0808                	addi	a0,sp,16
    351c:	0808                	addi	a0,sp,16
    351e:	0808                	addi	a0,sp,16
    3520:	0808                	addi	a0,sp,16
    3522:	0808                	addi	a0,sp,16
    3524:	0808                	addi	a0,sp,16
    3526:	0808                	addi	a0,sp,16
    3528:	0808                	addi	a0,sp,16
    352a:	0808                	addi	a0,sp,16
    352c:	0808                	addi	a0,sp,16
    352e:	0808                	addi	a0,sp,16
    3530:	0808                	addi	a0,sp,16
    3532:	0808                	addi	a0,sp,16
    3534:	0808                	addi	a0,sp,16
    3536:	0808                	addi	a0,sp,16
    3538:	0808                	addi	a0,sp,16
    353a:	0808                	addi	a0,sp,16

Disassembly of section .data:

0000353c <xFreeBytesRemaining-0x4>:
    353c:	0000                	unimp
	...

00003540 <xFreeBytesRemaining>:
    3540:	fff0                	fsw	fa2,124(a5)
	...

00003544 <pullNextTime>:
    3544:	3588                	fld	fa0,40(a1)
	...

00003548 <uxTopUsedPriority>:
    3548:	0006                	c.slli	zero,0x1
	...

0000354c <LCD_PORT>:
    354c:	4000                	lw	s0,0(s0)
    354e:	4000                	lw	s0,0(s0)

00003550 <PWM_PORT>:
    3550:	2004                	fld	fs1,0(s0)
    3552:	4000                	lw	s0,0(s0)

00003554 <SEG_PORT>:
    3554:	2008                	fld	fa0,0(s0)
    3556:	4000                	lw	s0,0(s0)

00003558 <TOHOST_PORT>:
    3558:	8000                	0x8000
    355a:	4000                	lw	s0,0(s0)
    355c:	0000                	unimp
	...

00003560 <uxTimerIncrementsForOneTick>:
    3560:	86a0                	0x86a0
    3562:	0001                	nop

00003564 <xISRStackTop>:
    3564:	55f0                	lw	a2,108(a1)
    3566:	0001                	nop

Disassembly of section .bss:

00003570 <xEnd>:
	...

00003578 <xHeapHasBeenInitialised.0>:
    3578:	0000                	unimp
	...

0000357c <xStart>:
	...

00003584 <pullMachineTimerCompareRegister>:
    3584:	0000                	unimp
	...

00003588 <ullNextTime>:
	...

00003590 <pxCurrentTCB>:
    3590:	0000                	unimp
	...

00003594 <pxDelayedTaskList>:
    3594:	0000                	unimp
	...

00003598 <pxOverflowDelayedTaskList>:
    3598:	0000                	unimp
	...

0000359c <uxCurrentNumberOfTasks>:
    359c:	0000                	unimp
	...

000035a0 <uxDeletedTasksWaitingCleanUp>:
    35a0:	0000                	unimp
	...

000035a4 <uxSchedulerSuspended>:
    35a4:	0000                	unimp
	...

000035a8 <uxTaskNumber>:
    35a8:	0000                	unimp
	...

000035ac <uxTopReadyPriority>:
    35ac:	0000                	unimp
	...

000035b0 <xIdleTaskHandle>:
    35b0:	0000                	unimp
	...

000035b4 <xNextTaskUnblockTime>:
    35b4:	0000                	unimp
	...

000035b8 <xNumOfOverflows>:
    35b8:	0000                	unimp
	...

000035bc <xPendedTicks>:
    35bc:	0000                	unimp
	...

000035c0 <xSchedulerRunning>:
    35c0:	0000                	unimp
	...

000035c4 <xTickCount>:
    35c4:	0000                	unimp
	...

000035c8 <xYieldPending>:
    35c8:	0000                	unimp
	...

000035cc <pxCurrentTimerList>:
    35cc:	0000                	unimp
	...

000035d0 <pxOverflowTimerList>:
    35d0:	0000                	unimp
	...

000035d4 <xLastTime.0>:
    35d4:	0000                	unimp
	...

000035d8 <xTimerQueue>:
    35d8:	0000                	unimp
	...

000035dc <xTimerTaskHandle>:
    35dc:	0000                	unimp
	...

000035e0 <cnt.0>:
    35e0:	0000                	unimp
	...

000035e4 <ucHeap>:
	...

000135f0 <xISRStack>:
	...

000155f0 <xQueueRegistry>:
	...

00015630 <pxReadyTasksLists>:
	...

000156bc <xDelayedTaskList1>:
	...

000156d0 <xDelayedTaskList2>:
	...

000156e4 <xPendingReadyList>:
	...

000156f8 <xSuspendedTaskList>:
	...

0001570c <xTasksWaitingTermination>:
	...

00015720 <xActiveTimerList1>:
	...

00015734 <xActiveTimerList2>:
	...

00015748 <exints>:
	...

000157c8 <console>:
	...

Disassembly of section .stack:

0001584c <_stack_top-0x404>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e31                	jal	328 <vPortFree+0x58>
   e:	2e31                	jal	32a <vPortFree+0x5a>
  10:	0030                	addi	a2,sp,8

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1f41                	addi	t5,t5,-16
   2:	0000                	unimp
   4:	7200                	flw	fs0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <_start+0x14>
   c:	0015                	c.nop	5
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3376                	fld	ft6,376(sp)
  16:	6932                	flw	fs2,12(sp)
  18:	7032                	flw	ft0,44(sp)
  1a:	0030                	addi	a2,sp,8
  1c:	0108                	addi	a0,sp,128
  1e:	0b0a                	slli	s6,s6,0x2

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	013e                	slli	sp,sp,0xf
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0401                	addi	s0,s0,0
   8:	0000                	unimp
   a:	0000                	unimp
   c:	a904                	fsd	fs1,16(a0)
   e:	0000                	unimp
  10:	1d00                	addi	s0,sp,688
  12:	0056                	c.slli	zero,0x15
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0000                	unimp
  1a:	2b84                	fld	fs1,16(a5)
  1c:	0000                	unimp
  1e:	004c                	addi	a1,sp,4
  20:	0000                	unimp
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0405                	addi	s0,s0,1
  28:	6905                	lui	s2,0x1
  2a:	746e                	flw	fs0,248(sp)
  2c:	0100                	addi	s0,sp,128
  2e:	0704                	addi	s1,sp,896
  30:	0035                	c.nop	13
  32:	0000                	unimp
  34:	0801                	addi	a6,a6,0
  36:	0005                	c.nop	1
  38:	0000                	unimp
  3a:	0100                	addi	s0,sp,128
  3c:	0410                	addi	a2,sp,512
  3e:	0062                	c.slli	zero,0x18
  40:	0000                	unimp
  42:	0101                	addi	sp,sp,0
  44:	4406                	lw	s0,64(sp)
  46:	0000                	unimp
  48:	0100                	addi	s0,sp,128
  4a:	0801                	addi	a6,a6,0
  4c:	0042                	c.slli	zero,0x10
  4e:	0000                	unimp
  50:	0201                	addi	tp,tp,0
  52:	9f05                	0x9f05
  54:	0000                	unimp
  56:	0100                	addi	s0,sp,128
  58:	0702                	c.slli64	a4
  5a:	006e                	c.slli	zero,0x1b
  5c:	0000                	unimp
  5e:	0401                	addi	s0,s0,0
  60:	0505                	addi	a0,a0,1
  62:	0000                	unimp
  64:	0100                	addi	s0,sp,128
  66:	0704                	addi	s1,sp,896
  68:	0030                	addi	a2,sp,8
  6a:	0000                	unimp
  6c:	0801                	addi	a6,a6,0
  6e:	00002b07          	flw	fs6,0(zero) # 0 <_start>
  72:	0100                	addi	s0,sp,128
  74:	0801                	addi	a6,a6,0
  76:	0000004b          	fnmsub.s	ft0,ft0,ft0,ft0,rne
  7a:	8f02                	jr	t5
  7c:	0000                	unimp
  7e:	7b00                	flw	fs0,48(a4)
  80:	4916                	lw	s2,68(sp)
  82:	0000                	unimp
  84:	0300                	addi	s0,sp,384
  86:	007a                	c.slli	zero,0x1e
  88:	0000                	unimp
  8a:	9802                	jalr	a6
  8c:	0000                	unimp
  8e:	8000                	0x8000
  90:	0000260f          	0x260f
  94:	0200                	addi	s0,sp,256
  96:	00000097          	auipc	ra,0x0
  9a:	1681                	addi	a3,a3,-32
  9c:	002d                	c.nop	11
  9e:	0000                	unimp
  a0:	0401                	addi	s0,s0,0
  a2:	8904                	0x8904
  a4:	0000                	unimp
  a6:	0100                	addi	s0,sp,128
  a8:	0308                	addi	a0,sp,384
  aa:	0081                	addi	ra,ra,0
  ac:	0000                	unimp
  ae:	0801                	addi	a6,a6,0
  b0:	6704                	flw	fs1,8(a4)
  b2:	0000                	unimp
  b4:	0100                	addi	s0,sp,128
  b6:	0310                	addi	a2,sp,384
  b8:	00000017          	auipc	zero,0x0
  bc:	2001                	jal	bc <_start+0xbc>
  be:	00005a03          	lhu	s4,0(zero) # 0 <_start>
  c2:	0600                	addi	s0,sp,768
  c4:	0085                	addi	ra,ra,1
  c6:	0000                	unimp
  c8:	000000d3          	fadd.s	ft1,ft0,ft0,rne
  cc:	00002d07          	flw	fs10,0(zero) # 0 <_start>
  d0:	ff00                	fsw	fs0,56(a4)
  d2:	0300                	addi	s0,sp,384
  d4:	000000c3          	fmadd.s	ft1,ft0,ft0,ft0,rne
  d8:	5008                	lw	a0,32(s0)
  da:	0000                	unimp
  dc:	0200                	addi	s0,sp,256
  de:	0202                	c.slli64	tp
  e0:	d316                	sw	t0,164(sp)
  e2:	0000                	unimp
  e4:	0900                	addi	s0,sp,144
  e6:	000e                	c.slli	zero,0x3
  e8:	0000                	unimp
  ea:	ae01                	j	3fa <prvCopyDataToQueue+0x12>
  ec:	0102                	c.slli64	sp
  ee:	0026                	c.slli	zero,0x9
  f0:	0000                	unimp
  f2:	2b84                	fld	fs1,16(a5)
  f4:	0000                	unimp
  f6:	004c                	addi	a1,sp,4
  f8:	0000                	unimp
  fa:	9c01                	0x9c01
  fc:	780a                	flw	fa6,160(sp)
  fe:	0100                	addi	s0,sp,128
 100:	02ae                	slli	t0,t0,0xb
 102:	9512                	add	a0,a0,tp
 104:	0000                	unimp
 106:	0c00                	addi	s0,sp,528
 108:	0000                	unimp
 10a:	0b00                	addi	s0,sp,400
 10c:	6572                	flw	fa0,28(sp)
 10e:	0074                	addi	a3,sp,12
 110:	b001                	j	fffff910 <_stack_top+0xfffe9cc0>
 112:	0902                	c.slli64	s2
 114:	008a                	slli	ra,ra,0x2
 116:	0000                	unimp
 118:	0c0c                	addi	a1,sp,528
 11a:	0000                	unimp
 11c:	0d00                	addi	s0,sp,656
 11e:	0026                	c.slli	zero,0x9
 120:	0000                	unimp
 122:	b201                	j	fffffa22 <_stack_top+0xfffe9dd2>
 124:	0302                	c.slli64	t1
 126:	0095                	addi	ra,ra,5
 128:	0000                	unimp
 12a:	0031                	c.nop	12
 12c:	0000                	unimp
 12e:	5f0e                	lw	t5,224(sp)
 130:	615f 0100 02b2      	0x2b20100615f
 136:	00009503          	lh	a0,0(ra) # 96 <_start+0x96>
 13a:	5600                	lw	s0,40(a2)
 13c:	0000                	unimp
 13e:	0000                	unimp
 140:	0000                	unimp
 142:	0020                	addi	s0,sp,8
 144:	0000                	unimp
 146:	0005                	c.nop	1
 148:	0401                	addi	s0,s0,0
 14a:	00ca                	slli	ra,ra,0x12
 14c:	0000                	unimp
 14e:	cb01                	beqz	a4,15e <main+0x5e>
 150:	0000                	unimp
 152:	d000                	sw	s0,32(s0)
 154:	2400002b          	0x2400002b
 158:	0156                	slli	sp,sp,0x15
 15a:	0000                	unimp
 15c:	015f 0000 01b5      	0x1b50000015f
 162:	0000                	unimp
 164:	8001                	c.srli64	s0
 166:	00d4                	addi	a3,sp,68
 168:	0000                	unimp
 16a:	0005                	c.nop	1
 16c:	0401                	addi	s0,s0,0
 16e:	00de                	slli	ra,ra,0x17
 170:	0000                	unimp
 172:	0000a903          	lw	s2,0(ra)
 176:	1d00                	addi	s0,sp,688
 178:	0056                	c.slli	zero,0x15
 17a:	0000                	unimp
 17c:	0000                	unimp
 17e:	0000                	unimp
 180:	0145                	addi	sp,sp,17
 182:	0000                	unimp
 184:	0404                	addi	s1,sp,512
 186:	6905                	lui	s2,0x1
 188:	746e                	flw	fs0,248(sp)
 18a:	0100                	addi	s0,sp,128
 18c:	0704                	addi	s1,sp,896
 18e:	0035                	c.nop	13
 190:	0000                	unimp
 192:	0801                	addi	a6,a6,0
 194:	0005                	c.nop	1
 196:	0000                	unimp
 198:	0100                	addi	s0,sp,128
 19a:	0410                	addi	a2,sp,512
 19c:	0062                	c.slli	zero,0x18
 19e:	0000                	unimp
 1a0:	0101                	addi	sp,sp,0
 1a2:	4406                	lw	s0,64(sp)
 1a4:	0000                	unimp
 1a6:	0100                	addi	s0,sp,128
 1a8:	0801                	addi	a6,a6,0
 1aa:	0042                	c.slli	zero,0x10
 1ac:	0000                	unimp
 1ae:	0201                	addi	tp,tp,0
 1b0:	9f05                	0x9f05
 1b2:	0000                	unimp
 1b4:	0100                	addi	s0,sp,128
 1b6:	0702                	c.slli64	a4
 1b8:	006e                	c.slli	zero,0x1b
 1ba:	0000                	unimp
 1bc:	0401                	addi	s0,s0,0
 1be:	0505                	addi	a0,a0,1
 1c0:	0000                	unimp
 1c2:	0100                	addi	s0,sp,128
 1c4:	0704                	addi	s1,sp,896
 1c6:	0030                	addi	a2,sp,8
 1c8:	0000                	unimp
 1ca:	0801                	addi	a6,a6,0
 1cc:	00002b07          	flw	fs6,0(zero) # 0 <_start>
 1d0:	0100                	addi	s0,sp,128
 1d2:	0801                	addi	a6,a6,0
 1d4:	0000004b          	fnmsub.s	ft0,ft0,ft0,ft0,rne
 1d8:	8f05                	sub	a4,a4,s1
 1da:	0000                	unimp
 1dc:	0100                	addi	s0,sp,128
 1de:	0041167b          	0x41167b
 1e2:	0000                	unimp
 1e4:	7202                	flw	ft4,32(sp)
 1e6:	0000                	unimp
 1e8:	0100                	addi	s0,sp,128
 1ea:	0404                	addi	s1,sp,512
 1ec:	0089                	addi	ra,ra,2
 1ee:	0000                	unimp
 1f0:	0801                	addi	a6,a6,0
 1f2:	00008103          	lb	sp,0(ra)
 1f6:	0100                	addi	s0,sp,128
 1f8:	0408                	addi	a0,sp,512
 1fa:	00000067          	jr	zero # 0 <_start>
 1fe:	1001                	c.nop	-32
 200:	00001703          	lh	a4,0(zero) # 0 <_start>
 204:	0100                	addi	s0,sp,128
 206:	0320                	addi	s0,sp,392
 208:	005a                	c.slli	zero,0x16
 20a:	0000                	unimp
 20c:	7e06                	flw	ft8,96(sp)
 20e:	0000                	unimp
 210:	b600                	fsd	fs0,40(a2)
 212:	0000                	unimp
 214:	0700                	addi	s0,sp,896
 216:	0025                	c.nop	9
 218:	0000                	unimp
 21a:	00ff                	0xff
 21c:	a602                	fsd	ft0,264(sp)
 21e:	0000                	unimp
 220:	0800                	addi	s0,sp,16
 222:	0050                	addi	a2,sp,4
 224:	0000                	unimp
 226:	0201                	addi	tp,tp,0
 228:	1602                	slli	a2,a2,0x20
 22a:	00b6                	slli	ra,ra,0xd
 22c:	0000                	unimp
 22e:	bb09                	j	ffffff40 <_stack_top+0xfffea2f0>
 230:	0000                	unimp
 232:	0200                	addi	s0,sp,256
 234:	029e                	slli	t0,t0,0x7
 236:	3c03050f          	0x3c03050f
 23a:	0034                	addi	a3,sp,8
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	2401                	jal	200 <pvPortMalloc+0x8c>
   2:	0b00                	addi	s0,sp,400
   4:	030b3e0b          	0x30b3e0b
   8:	000e                	c.slli	zero,0x3
   a:	0200                	addi	s0,sp,256
   c:	0016                	c.slli	zero,0x5
   e:	213a0e03          	lb	t3,531(s4)
  12:	3b02                	fld	fs6,32(sp)
  14:	490b390b          	0x490b390b
  18:	03000013          	li	zero,48
  1c:	0026                	c.slli	zero,0x9
  1e:	1349                	addi	t1,t1,-14
  20:	0000                	unimp
  22:	1104                	addi	s1,sp,160
  24:	2501                	jal	624 <xQueueGenericCreate+0x10>
  26:	130e                	slli	t1,t1,0x23
  28:	1b1f030b          	0x1b1f030b
  2c:	111f 1201 1006      	0x10061201111f
  32:	05000017          	auipc	zero,0x5000
  36:	0024                	addi	s1,sp,8
  38:	0b3e0b0b          	0xb3e0b0b
  3c:	00000803          	lb	a6,0(zero) # 0 <_start>
  40:	0106                	slli	sp,sp,0x1
  42:	4901                	li	s2,0
  44:	00130113          	addi	sp,t1,1 # ffffa001 <_stack_top+0xfffe43b1>
  48:	0700                	addi	s0,sp,896
  4a:	0021                	c.nop	8
  4c:	1349                	addi	t1,t1,-14
  4e:	00000b2f          	0xb2f
  52:	3408                	fld	fa0,40(s0)
  54:	0300                	addi	s0,sp,384
  56:	3a0e                	fld	fs4,224(sp)
  58:	39053b0b          	0x39053b0b
  5c:	3f13490b          	0x3f13490b
  60:	3c19                	jal	fffffa76 <_stack_top+0xfffe9e26>
  62:	0019                	c.nop	6
  64:	0900                	addi	s0,sp,144
  66:	012e                	slli	sp,sp,0xb
  68:	0e03193f 053b0b3a 	0x53b0b3a0e03193f
  70:	0b39                	addi	s6,s6,14
  72:	13491927          	0x13491927
  76:	0111                	addi	sp,sp,4
  78:	0612                	slli	a2,a2,0x4
  7a:	1840                	addi	s0,sp,52
  7c:	197a                	slli	s2,s2,0x3e
  7e:	0000                	unimp
  80:	050a                	slli	a0,a0,0x2
  82:	0300                	addi	s0,sp,384
  84:	3a08                	fld	fa0,48(a2)
  86:	39053b0b          	0x39053b0b
  8a:	0213490b          	0x213490b
  8e:	0b000017          	auipc	zero,0xb000
  92:	0034                	addi	a3,sp,8
  94:	0b3a0803          	lb	a6,179(s4)
  98:	0b39053b          	0xb39053b
  9c:	1349                	addi	t1,t1,-14
  9e:	0000                	unimp
  a0:	0b0c                	addi	a1,sp,400
  a2:	5501                	li	a0,-32
  a4:	0d000017          	auipc	zero,0xd000
  a8:	0034                	addi	a3,sp,8
  aa:	0b3a0e03          	lb	t3,179(s4)
  ae:	0b39053b          	0xb39053b
  b2:	1349                	addi	t1,t1,-14
  b4:	1702                	slli	a4,a4,0x20
  b6:	0000                	unimp
  b8:	340e                	fld	fs0,224(sp)
  ba:	0300                	addi	s0,sp,384
  bc:	3a08                	fld	fa0,48(a2)
  be:	39053b0b          	0x39053b0b
  c2:	0213490b          	0x213490b
  c6:	00000017          	auipc	zero,0x0
  ca:	1101                	addi	sp,sp,-32
  cc:	1000                	addi	s0,sp,32
  ce:	12011117          	auipc	sp,0x12011
  d2:	1b0e030f          	0x1b0e030f
  d6:	250e                	fld	fa0,192(sp)
  d8:	130e                	slli	t1,t1,0x23
  da:	0005                	c.nop	1
  dc:	0000                	unimp
  de:	2401                	jal	2de <vPortFree+0xe>
  e0:	0b00                	addi	s0,sp,400
  e2:	030b3e0b          	0x30b3e0b
  e6:	000e                	c.slli	zero,0x3
  e8:	0200                	addi	s0,sp,256
  ea:	0026                	c.slli	zero,0x9
  ec:	1349                	addi	t1,t1,-14
  ee:	0000                	unimp
  f0:	25011103          	lh	sp,592(sp) # 1201131e <_stack_top+0x11ffb6ce>
  f4:	130e                	slli	t1,t1,0x23
  f6:	1b1f030b          	0x1b1f030b
  fa:	101f 0017 0400      	0x4000017101f
 100:	0024                	addi	s1,sp,8
 102:	0b3e0b0b          	0xb3e0b0b
 106:	00000803          	lb	a6,0(zero) # 0 <_start>
 10a:	1605                	addi	a2,a2,-31
 10c:	0300                	addi	s0,sp,384
 10e:	3a0e                	fld	fs4,224(sp)
 110:	390b3b0b          	0x390b3b0b
 114:	0013490b          	0x13490b
 118:	0600                	addi	s0,sp,768
 11a:	0101                	addi	sp,sp,0
 11c:	1349                	addi	t1,t1,-14
 11e:	1301                	addi	t1,t1,-32
 120:	0000                	unimp
 122:	49002107          	flw	ft2,1168(zero) # 490 <__stack_size+0x90>
 126:	000b2f13          	slti	t5,s6,0
 12a:	0800                	addi	s0,sp,16
 12c:	0034                	addi	a3,sp,8
 12e:	0b3a0e03          	lb	t3,179(s4)
 132:	0b39053b          	0xb39053b
 136:	1349                	addi	t1,t1,-14
 138:	193c193f 34090000 	0x34090000193c193f
 140:	4700                	lw	s0,8(a4)
 142:	3b0b3a13          	sltiu	s4,s6,944
 146:	3905                	jal	fffffd76 <_stack_top+0xfffea126>
 148:	0018020b          	0x18020b
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
   0:	005e                	c.slli	zero,0x17
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	0x4
   8:	0000                	unimp
   a:	0000                	unimp
   c:	002b8407          	0x2b8407
  10:	a800                	fsd	fs0,16(s0)
  12:	0100002b          	0x100002b
  16:	075a                	slli	a4,a4,0x16
  18:	2ba8                	fld	fa0,80(a5)
  1a:	0000                	unimp
  1c:	2bbc                	fld	fa5,80(a5)
  1e:	0000                	unimp
  20:	a304                	fsd	fs1,0(a4)
  22:	5a01                	li	s4,-32
  24:	079f 2bbc 0000      	0x2bbc079f
  2a:	2bd0                	fld	fa2,144(a5)
  2c:	0000                	unimp
  2e:	5a01                	li	s4,-32
  30:	0700                	addi	s0,sp,896
  32:	2b84                	fld	fs1,16(a5)
  34:	0000                	unimp
  36:	2ba8                	fld	fa0,80(a5)
  38:	0000                	unimp
  3a:	5a01                	li	s4,-32
  3c:	002ba807          	flw	fa6,2(s7)
  40:	bc00                	fsd	fs0,56(s0)
  42:	0400002b          	0x400002b
  46:	9f5a01a3          	sb	s5,-1565(s4)
  4a:	002bbc07          	fld	fs8,2(s7)
  4e:	d000                	sw	s0,32(s0)
  50:	0100002b          	0x100002b
  54:	005a                	c.slli	zero,0x16
  56:	002b9807          	0x2b9807
  5a:	ac00                	fsd	fs0,24(s0)
  5c:	0100002b          	0x100002b
  60:	005f        	0x5f

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	001c                	0x1c
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0004                	0x4
   c:	0000                	unimp
   e:	0000                	unimp
  10:	2b84                	fld	fs1,16(a5)
  12:	0000                	unimp
  14:	004c                	addi	a1,sp,4
	...
  1e:	0000                	unimp
  20:	001c                	0x1c
  22:	0000                	unimp
  24:	0002                	c.slli64	zero
  26:	0142                	slli	sp,sp,0x10
  28:	0000                	unimp
  2a:	0004                	0x4
  2c:	0000                	unimp
  2e:	0000                	unimp
  30:	2bd0                	fld	fa2,144(a5)
  32:	0000                	unimp
  34:	0024                	addi	s1,sp,8
	...
  3e:	0000                	unimp
  40:	0014                	0x14
  42:	0000                	unimp
  44:	0002                	c.slli64	zero
  46:	0166                	slli	sp,sp,0x19
  48:	0000                	unimp
  4a:	0004                	0x4
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	0024                	addi	s1,sp,8
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	0x4
   8:	0000                	unimp
   a:	0000                	unimp
   c:	8406                	mv	s0,ra
   e:	9800002b          	0x9800002b
  12:	0600002b          	0x600002b
  16:	2b98                	fld	fa4,16(a5)
  18:	0000                	unimp
  1a:	2bb4                	fld	fa3,80(a5)
  1c:	0000                	unimp
  1e:	bc06                	fsd	ft1,56(sp)
  20:	d000002b          	0xd000002b
  24:	0000002b          	0x2b

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000c7          	fmsub.s	ft1,ft0,ft0,ft0,rne
   4:	0005                	c.nop	1
   6:	0004                	0x4
   8:	00000033          	add	zero,zero,zero
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffff1e <_stack_top+0xfffea2ce>
  10:	0d0e                	slli	s10,s10,0x3
  12:	0100                	addi	s0,sp,128
  14:	0101                	addi	sp,sp,0
  16:	0001                	nop
  18:	0000                	unimp
  1a:	0001                	nop
  1c:	0100                	addi	s0,sp,128
  1e:	0101                	addi	sp,sp,0
  20:	021f 0000 0000      	0x21f
  26:	007c                	addi	a5,sp,12
  28:	0000                	unimp
  2a:	0102                	c.slli64	sp
  2c:	021f 030f 0056      	0x56030f021f
  32:	0000                	unimp
  34:	7200                	flw	fs0,32(a2)
  36:	0000                	unimp
  38:	0100                	addi	s0,sp,128
  3a:	0098                	addi	a4,sp,64
  3c:	0000                	unimp
  3e:	0501                	addi	a0,a0,0
  40:	0001                	nop
  42:	0205                	addi	tp,tp,1
  44:	2b84                	fld	fs1,16(a5)
  46:	0000                	unimp
  48:	0105ae03          	lw	t3,16(a1)
  4c:	0305                	addi	t1,t1,1
  4e:	00090103          	lb	sp,0(s2) # 1000 <xTaskIncrementTick+0x104>
  52:	0100                	addi	s0,sp,128
  54:	00090203          	lb	tp,0(s2)
  58:	0100                	addi	s0,sp,128
  5a:	00090003          	lb	zero,0(s2)
  5e:	0100                	addi	s0,sp,128
  60:	00090003          	lb	zero,0(s2)
  64:	0100                	addi	s0,sp,128
  66:	00090003          	lb	zero,0(s2)
  6a:	0100                	addi	s0,sp,128
  6c:	00090003          	lb	zero,0(s2)
  70:	0100                	addi	s0,sp,128
  72:	0200                	addi	s0,sp,256
  74:	0304                	addi	s1,sp,384
  76:	0306                	slli	t1,t1,0x1
  78:	0900                	addi	s0,sp,144
  7a:	0008                	0x8
  7c:	0001                	nop
  7e:	0402                	c.slli64	s0
  80:	060e                	slli	a2,a2,0x3
  82:	0c090003          	lb	zero,192(s2)
  86:	0100                	addi	s0,sp,128
  88:	0200                	addi	s0,sp,256
  8a:	0e04                	addi	s1,sp,784
  8c:	00090003          	lb	zero,0(s2)
  90:	0100                	addi	s0,sp,128
  92:	0200                	addi	s0,sp,256
  94:	0e04                	addi	s1,sp,784
  96:	00090203          	lb	tp,0(s2)
  9a:	0100                	addi	s0,sp,128
  9c:	0200                	addi	s0,sp,256
  9e:	0e04                	addi	s1,sp,784
  a0:	0306                	slli	t1,t1,0x1
  a2:	097e                	slli	s2,s2,0x1f
  a4:	0000                	unimp
  a6:	0501                	addi	a0,a0,0
  a8:	0001                	nop
  aa:	0402                	c.slli64	s0
  ac:	030e                	slli	t1,t1,0x3
  ae:	001c0903          	lb	s2,1(s8)
  b2:	0501                	addi	a0,a0,0
  b4:	04020003          	lb	zero,64(tp) # fffe1040 <_stack_top+0xfffcb3f0>
  b8:	0304                	addi	s1,sp,384
  ba:	097d                	addi	s2,s2,31
  bc:	0008                	0x8
  be:	0301                	addi	t1,t1,0
  c0:	0900                	addi	s0,sp,144
  c2:	000c                	0xc
  c4:	0901                	addi	s2,s2,0
  c6:	0008                	0x8
  c8:	0100                	addi	s0,sp,128
  ca:	7601                	lui	a2,0xfffe0
  cc:	0000                	unimp
  ce:	0500                	addi	s0,sp,640
  d0:	0400                	addi	s0,sp,512
  d2:	2e00                	fld	fs0,24(a2)
  d4:	0000                	unimp
  d6:	0100                	addi	s0,sp,128
  d8:	0101                	addi	sp,sp,0
  da:	000d0efb          	0xd0efb
  de:	0101                	addi	sp,sp,0
  e0:	0101                	addi	sp,sp,0
  e2:	0000                	unimp
  e4:	0100                	addi	s0,sp,128
  e6:	0000                	unimp
  e8:	0101                	addi	sp,sp,0
  ea:	1f01                	addi	t5,t5,-32
  ec:	a202                	fsd	ft0,256(sp)
  ee:	0000                	unimp
  f0:	a200                	fsd	fs0,0(a2)
  f2:	0000                	unimp
  f4:	0200                	addi	s0,sp,256
  f6:	1f01                	addi	t5,t5,-32
  f8:	0f02                	c.slli64	t5
  fa:	cb02                	sw	zero,148(sp)
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	000000cb          	fnmsub.s	ft1,ft0,ft0,ft0,rne
 104:	0001                	nop
 106:	0205                	addi	tp,tp,1
 108:	2bd0                	fld	fa2,144(a5)
 10a:	0000                	unimp
 10c:	03012403          	lw	s0,48(sp)
 110:	0901                	addi	s2,s2,0
 112:	0004                	0x4
 114:	0301                	addi	t1,t1,0
 116:	0902                	c.slli64	s2
 118:	0004                	0x4
 11a:	0301                	addi	t1,t1,0
 11c:	0901                	addi	s2,s2,0
 11e:	0004                	0x4
 120:	0301                	addi	t1,t1,0
 122:	0901                	addi	s2,s2,0
 124:	0004                	0x4
 126:	0301                	addi	t1,t1,0
 128:	0902                	c.slli64	s2
 12a:	0004                	0x4
 12c:	0301                	addi	t1,t1,0
 12e:	0901                	addi	s2,s2,0
 130:	0004                	0x4
 132:	0301                	addi	t1,t1,0
 134:	0901                	addi	s2,s2,0
 136:	0004                	0x4
 138:	0301                	addi	t1,t1,0
 13a:	0901                	addi	s2,s2,0
 13c:	0004                	0x4
 13e:	0901                	addi	s2,s2,0
 140:	0004                	0x4
 142:	0100                	addi	s0,sp,128
 144:	3b01                	jal	fffffe54 <_stack_top+0xfffea204>
 146:	0000                	unimp
 148:	0500                	addi	s0,sp,640
 14a:	0400                	addi	s0,sp,512
 14c:	3300                	fld	fs0,32(a4)
 14e:	0000                	unimp
 150:	0100                	addi	s0,sp,128
 152:	0101                	addi	sp,sp,0
 154:	000d0efb          	0xd0efb
 158:	0101                	addi	sp,sp,0
 15a:	0101                	addi	sp,sp,0
 15c:	0000                	unimp
 15e:	0100                	addi	s0,sp,128
 160:	0000                	unimp
 162:	0101                	addi	sp,sp,0
 164:	1f01                	addi	t5,t5,-32
 166:	0002                	c.slli64	zero
 168:	0000                	unimp
 16a:	7c00                	flw	fs0,56(s0)
 16c:	0000                	unimp
 16e:	0200                	addi	s0,sp,256
 170:	1f01                	addi	t5,t5,-32
 172:	0f02                	c.slli64	t5
 174:	00005603          	lhu	a2,0(zero) # 0 <_start>
 178:	0000                	unimp
 17a:	0098                	addi	a4,sp,64
 17c:	0000                	unimp
 17e:	7201                	lui	tp,0xfffe0
 180:	0000                	unimp
 182:	0100                	addi	s0,sp,128

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f6c                	flw	fa1,92(a4)
   2:	676e                	flw	fa4,216(sp)
   4:	6c20                	flw	fs0,88(s0)
   6:	20676e6f          	jal	t3,7620c <_stack_top+0x605bc>
   a:	6e69                	lui	t3,0x1a
   c:	0074                	addi	a3,sp,12
   e:	5f5f 6c63 737a      	0x737a6c635f5f
  14:	3269                	jal	fffff99e <_stack_top+0xfffe9d4e>
  16:	6300                	flw	fs0,0(a4)
  18:	6c706d6f          	jal	s10,6ede <__global_pointer$+0x319e>
  1c:	7865                	lui	a6,0xffff9
  1e:	6420                	flw	fs0,72(s0)
  20:	6c62756f          	jal	a0,276e6 <_stack_top+0x11a96>
  24:	0065                	c.nop	25
  26:	5f5f 7278 6c00      	0x6c0072785f5f
  2c:	20676e6f          	jal	t3,76232 <_stack_top+0x605e2>
  30:	6f6c                	flw	fa1,92(a4)
  32:	676e                	flw	fa4,216(sp)
  34:	7520                	flw	fs0,104(a0)
  36:	736e                	flw	ft6,248(sp)
  38:	6769                	lui	a4,0x1a
  3a:	656e                	flw	fa0,216(sp)
  3c:	2064                	fld	fs1,192(s0)
  3e:	6e69                	lui	t3,0x1a
  40:	0074                	addi	a3,sp,12
  42:	6e75                	lui	t3,0x1d
  44:	6e676973          	csrrsi	s2,0x6e6,14
  48:	6465                	lui	s0,0x19
  4a:	6320                	flw	fs0,64(a4)
  4c:	6168                	flw	fa0,68(a0)
  4e:	0072                	c.slli	zero,0x1c
  50:	5f5f 6c63 5f7a      	0x5f7a6c635f5f
  56:	6174                	flw	fa3,68(a0)
  58:	0062                	c.slli	zero,0x18
  5a:	706d6f63          	bltu	s10,t1,778 <xQueueGenericSend+0xa8>
  5e:	656c                	flw	fa1,76(a0)
  60:	2078                	fld	fa4,192(s0)
  62:	6f6c                	flw	fa1,92(a4)
  64:	676e                	flw	fa4,216(sp)
  66:	6420                	flw	fs0,72(s0)
  68:	6c62756f          	jal	a0,2772e <_stack_top+0x11ade>
  6c:	0065                	c.nop	25
  6e:	726f6873          	csrrsi	a6,0x726,30
  72:	2074                	fld	fa3,192(s0)
  74:	6e75                	lui	t3,0x1d
  76:	6e676973          	csrrsi	s2,0x6e6,14
  7a:	6465                	lui	s0,0x19
  7c:	6920                	flw	fs0,80(a0)
  7e:	746e                	flw	fs0,248(sp)
  80:	6300                	flw	fs0,0(a4)
  82:	6c706d6f          	jal	s10,6f48 <__global_pointer$+0x3208>
  86:	7865                	lui	a6,0xffff9
  88:	6620                	flw	fs0,72(a2)
  8a:	6f6c                	flw	fa1,92(a4)
  8c:	7461                	lui	s0,0xffff8
  8e:	5500                	lw	s0,40(a0)
  90:	4951                	li	s2,20
  92:	7974                	flw	fa3,116(a0)
  94:	6570                	flw	fa2,76(a0)
  96:	5500                	lw	s0,40(a0)
  98:	79744953          	0x79744953
  9c:	6570                	flw	fa2,76(a0)
  9e:	7300                	flw	fs0,32(a4)
  a0:	6f68                	flw	fa0,92(a4)
  a2:	7472                	flw	fs0,60(sp)
  a4:	6920                	flw	fs0,80(a0)
  a6:	746e                	flw	fs0,248(sp)
  a8:	4700                	lw	s0,8(a4)
  aa:	554e                	lw	a0,240(sp)
  ac:	4320                	lw	s0,64(a4)
  ae:	3731                	jal	ffffffba <_stack_top+0xfffea36a>
  b0:	3120                	fld	fs0,96(a0)
  b2:	2e31                	jal	3ce <xPortStartScheduler+0x12>
  b4:	2e31                	jal	3d0 <xPortStartScheduler+0x14>
  b6:	2030                	fld	fa2,64(s0)
  b8:	6d2d                	lui	s10,0xb
  ba:	646f6d63          	bltu	t5,t1,714 <xQueueGenericSend+0x44>
  be:	6c65                	lui	s8,0x19
  c0:	6d3d                	lui	s10,0xf
  c2:	6465                	lui	s0,0x19
  c4:	6f6c                	flw	fa1,92(a4)
  c6:	6d2d2077          	0x6d2d2077
  ca:	646f6d63          	bltu	t5,t1,724 <xQueueGenericSend+0x54>
  ce:	6c65                	lui	s8,0x19
  d0:	6d3d                	lui	s10,0xf
  d2:	6465                	lui	s0,0x19
  d4:	6f6c                	flw	fa1,92(a4)
  d6:	6d2d2077          	0x6d2d2077
  da:	7574                	flw	fa3,108(a0)
  dc:	656e                	flw	fa0,216(sp)
  de:	723d                	lui	tp,0xfffef
  e0:	656b636f          	jal	t1,b6736 <_stack_top+0xa0ae6>
  e4:	2074                	fld	fa3,192(s0)
  e6:	6d2d                	lui	s10,0xb
  e8:	7261                	lui	tp,0xffff8
  ea:	723d6863          	bltu	s10,gp,81a <xQueueGenericSend+0x14a>
  ee:	3376                	fld	ft6,376(sp)
  f0:	6932                	flw	fs2,12(sp)
  f2:	2d20                	fld	fs0,88(a0)
  f4:	616d                	addi	sp,sp,240
  f6:	6962                	flw	fs2,24(sp)
  f8:	693d                	lui	s2,0xf
  fa:	706c                	flw	fa1,100(s0)
  fc:	2d203233          	0x2d203233
 100:	616d                	addi	sp,sp,240
 102:	6372                	flw	ft6,28(sp)
 104:	3d68                	fld	fa0,248(a0)
 106:	7672                	flw	fa2,60(sp)
 108:	20693233          	0x20693233
 10c:	672d                	lui	a4,0xb
 10e:	2d20                	fld	fs0,88(a0)
 110:	2d20734f          	0x2d20734f
 114:	2d20324f          	0x2d20324f
 118:	2d20734f          	0x2d20734f
 11c:	6266                	flw	ft4,88(sp)
 11e:	6975                	lui	s2,0x1d
 120:	646c                	flw	fa1,76(s0)
 122:	6e69                	lui	t3,0x1a
 124:	696c2d67          	0x696c2d67
 128:	6762                	flw	fa4,24(sp)
 12a:	2d206363          	bltu	zero,s2,3f0 <prvCopyDataToQueue+0x8>
 12e:	6e66                	flw	ft8,88(sp)
 130:	74732d6f          	jal	s10,33076 <_stack_top+0x1d426>
 134:	6361                	lui	t1,0x18
 136:	72702d6b          	0x72702d6b
 13a:	6365746f          	jal	s0,57770 <_stack_top+0x41b20>
 13e:	6f74                	flw	fa3,92(a4)
 140:	2072                	fld	ft0,280(sp)
 142:	662d                	lui	a2,0xb
 144:	6976                	flw	fs2,92(sp)
 146:	69626973          	csrrsi	s2,0x696,4
 14a:	696c                	flw	fa1,84(a0)
 14c:	7974                	flw	fa3,116(a0)
 14e:	683d                	lui	a6,0xf
 150:	6469                	lui	s0,0x1a
 152:	6564                	flw	fs1,76(a0)
 154:	006e                	c.slli	zero,0x1b
 156:	756d                	lui	a0,0xffffb
 158:	646c                	flw	fa1,76(s0)
 15a:	3369                	jal	fffffee4 <_stack_top+0xfffea294>
 15c:	532e                	lw	t1,232(sp)
 15e:	2f00                	fld	fs0,24(a4)
 160:	6f68                	flw	fa0,92(a4)
 162:	656d                	lui	a0,0x1b
 164:	6e616b2f          	0x6e616b2f
 168:	6d61                	lui	s10,0x18
 16a:	2f69726f          	jal	tp,97460 <_stack_top+0x81810>
 16e:	6972                	flw	fs2,28(sp)
 170:	2d766373          	csrrsi	t1,0x2d7,12
 174:	2d756e67          	0x2d756e67
 178:	6f74                	flw	fa3,92(a4)
 17a:	68636c6f          	jal	s8,36800 <_stack_top+0x20bb0>
 17e:	6961                	lui	s2,0x18
 180:	2f6e                	fld	ft10,216(sp)
 182:	7562                	flw	fa0,56(sp)
 184:	6c69                	lui	s8,0x1a
 186:	2d64                	fld	fs1,216(a0)
 188:	2d636367          	0x2d636367
 18c:	656e                	flw	fa0,216(sp)
 18e:	62696c77          	0x62696c77
 192:	732d                	lui	t1,0xfffeb
 194:	6174                	flw	fa3,68(a0)
 196:	2f326567          	0x2f326567
 19a:	6972                	flw	fs2,28(sp)
 19c:	33766373          	csrrsi	t1,mhpmevent23,12
 1a0:	2d32                	fld	fs10,264(sp)
 1a2:	6e75                	lui	t3,0x1d
 1a4:	776f6e6b          	0x776f6e6b
 1a8:	2d6e                	fld	fs10,216(sp)
 1aa:	6c65                	lui	s8,0x19
 1ac:	2f66                	fld	ft10,88(sp)
 1ae:	696c                	flw	fa1,84(a0)
 1b0:	6762                	flw	fa4,24(sp)
 1b2:	47006363          	bltu	zero,a6,618 <xQueueGenericCreate+0x4>
 1b6:	554e                	lw	a0,240(sp)
 1b8:	4120                	lw	s0,64(a0)
 1ba:	2e322053          	0x2e322053
 1be:	312e3633          	0x312e3633
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6d6f682f          	0x6d6f682f
   4:	2f65                	jal	7bc <xQueueGenericSend+0xec>
   6:	616e616b          	0x616e616b
   a:	6f6d                	lui	t5,0x1b
   c:	6972                	flw	fs2,28(sp)
   e:	7369722f          	0x7369722f
  12:	672d7663          	bgeu	s10,s2,67e <xQueueGenericCreate+0x6a>
  16:	756e                	flw	fa0,248(sp)
  18:	742d                	lui	s0,0xfffeb
  1a:	636c6f6f          	jal	t5,c6650 <_stack_top+0xb0a00>
  1e:	6168                	flw	fa0,68(a0)
  20:	6e69                	lui	t3,0x1a
  22:	6975622f          	0x6975622f
  26:	646c                	flw	fa1,76(s0)
  28:	672d                	lui	a4,0xb
  2a:	6e2d6363          	bltu	s10,sp,710 <xQueueGenericSend+0x40>
  2e:	7765                	lui	a4,0xffff9
  30:	696c                	flw	fa1,84(a0)
  32:	2d62                	fld	fs10,24(sp)
  34:	67617473          	csrrci	s0,0x676,2
  38:	3265                	jal	fffff9e0 <_stack_top+0xfffe9d90>
  3a:	7369722f          	0x7369722f
  3e:	32337663          	bgeu	t1,gp,36a <vPortSetupTimerInterrupt+0x32>
  42:	752d                	lui	a0,0xfffeb
  44:	6b6e                	flw	fs6,216(sp)
  46:	6f6e                	flw	ft10,216(sp)
  48:	652d6e77          	0x652d6e77
  4c:	666c                	flw	fa1,76(a2)
  4e:	62696c2f          	0x62696c2f
  52:	00636367          	0x636367
  56:	2e2e                	fld	ft8,200(sp)
  58:	2f2e2e2f          	0x2f2e2e2f
  5c:	2e2e                	fld	ft8,200(sp)
  5e:	722f2e2f          	0x722f2e2f
  62:	7369                	lui	t1,0xffffa
  64:	672d7663          	bgeu	s10,s2,6d0 <xQueueGenericSend>
  68:	6c2f6363          	bltu	t5,sp,72e <xQueueGenericSend+0x5e>
  6c:	6269                	lui	tp,0x1a
  6e:	2f636367          	0x2f636367
  72:	696c                	flw	fa1,84(a0)
  74:	6762                	flw	fa4,24(sp)
  76:	2e326363          	bltu	tp,gp,35c <vPortSetupTimerInterrupt+0x24>
  7a:	2e2e0063          	beq	t3,sp,35a <vPortSetupTimerInterrupt+0x22>
  7e:	2f2e2e2f          	0x2f2e2e2f
  82:	2e2e                	fld	ft8,200(sp)
  84:	722f2e2f          	0x722f2e2f
  88:	7369                	lui	t1,0xffffa
  8a:	672d7663          	bgeu	s10,s2,6f6 <xQueueGenericSend+0x26>
  8e:	6c2f6363          	bltu	t5,sp,754 <xQueueGenericSend+0x84>
  92:	6269                	lui	tp,0x1a
  94:	00636367          	0x636367
  98:	696c                	flw	fa1,84(a0)
  9a:	6762                	flw	fa4,24(sp)
  9c:	2e326363          	bltu	tp,gp,382 <vPortSetupTimerInterrupt+0x4a>
  a0:	0068                	addi	a0,sp,12
  a2:	2e2e                	fld	ft8,200(sp)
  a4:	2f2e2e2f          	0x2f2e2e2f
  a8:	2e2e                	fld	ft8,200(sp)
  aa:	722f2e2f          	0x722f2e2f
  ae:	7369                	lui	t1,0xffffa
  b0:	672d7663          	bgeu	s10,s2,71c <xQueueGenericSend+0x4c>
  b4:	6c2f6363          	bltu	t5,sp,77a <xQueueGenericSend+0xaa>
  b8:	6269                	lui	tp,0x1a
  ba:	2f636367          	0x2f636367
  be:	666e6f63          	bltu	t3,t1,73c <xQueueGenericSend+0x6c>
  c2:	6769                	lui	a4,0x1a
  c4:	7369722f          	0x7369722f
  c8:	6d007663          	bgeu	zero,a6,794 <xQueueGenericSend+0xc4>
  cc:	6c75                	lui	s8,0x1d
  ce:	6964                	flw	fs1,84(a0)
  d0:	00532e33          	slt	t3,t1,t0

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	0xc
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	000c                	0xc
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	2b84                	fld	fs1,16(a5)
  1a:	0000                	unimp
  1c:	004c                	addi	a1,sp,4
	...
