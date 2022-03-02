
build/linetrace.axf:     file format elf32-littleriscv
build/linetrace.axf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x00002c28 memsz 0x00015280 flags rwx

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         000000d8  00000000  00000000  00001000  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00002984  00000100  00000100  00001100  2**8
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata.align 00000000  00002a84  00002c28  00003c28  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  3 .rodata       00000184  00002a84  00002a84  00003a84  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .data.align   00000000  00002c08  00002c28  00003c28  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000020  00002c08  00002c08  00003c08  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .bss.align    00000000  00002c28  00002c28  00000000  2**0
                  ALLOC
  7 .bss          00012248  00002c30  00002c30  00003c28  2**4
                  ALLOC
  8 .stack        00000408  00014e78  00014e78  00003c28  2**0
                  ALLOC
  9 .comment      00000012  00000000  00000000  00003c28  2**0
                  CONTENTS, READONLY
 10 .riscv.attributes 00000020  00000000  00000000  00003c3a  2**0
                  CONTENTS, READONLY
 11 .debug_info   0000023e  00000000  00000000  00003c5a  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_abbrev 0000014e  00000000  00000000  00003e98  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_loclists 00000062  00000000  00000000  00003fe6  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_aranges 00000058  00000000  00000000  00004048  2**3
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_rnglists 00000028  00000000  00000000  000040a0  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_line   00000184  00000000  00000000  000040c8  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_str    000001c3  00000000  00000000  0000424c  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 18 .debug_line_str 000000d4  00000000  00000000  0000440f  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_frame  00000020  00000000  00000000  000044e4  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
00000000 l    d  .init	00000000 .init
00000100 l    d  .text	00000000 .text
00002a84 l    d  .rodata.align	00000000 .rodata.align
00002a84 l    d  .rodata	00000000 .rodata
00002c08 l    d  .data.align	00000000 .data.align
00002c08 l    d  .data	00000000 .data
00002c28 l    d  .bss.align	00000000 .bss.align
00002c30 l    d  .bss	00000000 .bss
00014e78 l    d  .stack	00000000 .stack
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
00000000 l    df *ABS*	00000000 heap_2.c
00002ca0 l     O .bss	00010000 ucHeap
00002c30 l     O .bss	00000008 xEnd
00002c38 l     O .bss	00000004 xHeapHasBeenInitialised.0
00002c3c l     O .bss	00000008 xStart
00002c08 l     O .data	00000004 xFreeBytesRemaining
00000000 l    df *ABS*	00000000 port.c
00012ca0 l     O .bss	00002000 xISRStack
00000000 l    df *ABS*	00000000 queue.c
000003b4 l     F .text	00000130 prvCopyDataToQueue
000004e4 l     F .text	000000fc prvUnlockQueue
00000000 l    df *ABS*	00000000 list.c
00000000 l    df *ABS*	00000000 tasks.c
00000c94 l     F .text	00000128 prvAddCurrentTaskToDelayedList
00000dbc l     F .text	000000e8 prvIdleTask
00014ce0 l     O .bss	0000008c pxReadyTasksLists
00014d6c l     O .bss	00000014 xDelayedTaskList1
00014d80 l     O .bss	00000014 xDelayedTaskList2
00014d94 l     O .bss	00000014 xPendingReadyList
00014da8 l     O .bss	00000014 xSuspendedTaskList
00014dbc l     O .bss	00000014 xTasksWaitingTermination
00002c54 l     O .bss	00000004 pxDelayedTaskList
00002c58 l     O .bss	00000004 pxOverflowDelayedTaskList
00002c5c l     O .bss	00000004 uxCurrentNumberOfTasks
00002c60 l     O .bss	00000004 uxDeletedTasksWaitingCleanUp
00002c64 l     O .bss	00000004 uxSchedulerSuspended
00002c68 l     O .bss	00000004 uxTaskNumber
00002c6c l     O .bss	00000004 uxTopReadyPriority
00002c70 l     O .bss	00000004 xIdleTaskHandle
00002c74 l     O .bss	00000004 xNextTaskUnblockTime
00002c78 l     O .bss	00000004 xNumOfOverflows
00002c7c l     O .bss	00000004 xPendedTicks
00002c80 l     O .bss	00000004 xSchedulerRunning
00002c84 l     O .bss	00000004 xTickCount
00002c88 l     O .bss	00000004 xYieldPending
00000000 l    df *ABS*	00000000 timers.c
00001b74 l     F .text	00000098 prvCheckForValidListAndQueue
00001e08 l     F .text	000002e8 prvTimerTask
00001d38 l     F .text	000000d0 prvSwitchTimerLists
00014dd0 l     O .bss	00000014 xActiveTimerList1
00014de4 l     O .bss	00000014 xActiveTimerList2
00002c8c l     O .bss	00000004 pxCurrentTimerList
00002c90 l     O .bss	00000004 pxOverflowTimerList
00002c94 l     O .bss	00000004 xLastTime.0
00002c98 l     O .bss	00000004 xTimerQueue
00002c9c l     O .bss	00000004 xTimerTaskHandle
00000000 l    df *ABS*	00000000 riscv-virt.c
00000000 l    df *ABS*	00000000 interrupt.c
00000000 l    df *ABS*	00000000 portASM.o
00002490 l       .text	00000000 test_if_asynchronous
00002514 l       .text	00000000 handle_synchronous
0000249c l       .text	00000000 handle_asynchronous
0000249c l       .text	00000000 test_if_mtimer
00002500 l       .text	00000000 test_if_external_interrupt
00002548 l       .text	00000000 processed_source
00002540 l       .text	00000000 as_yet_unhandled
0000251c l       .text	00000000 test_if_environment_call
00002530 l       .text	00000000 is_exception
00002730 l       .text	00000000 chip_specific_stack_frame
00000000 l    df *ABS*	00000000 libgcc2.c
00000000 l    df *ABS*	00000000 memcpy.c
00000000 l    df *ABS*	00000000 strlen.c
00000000 l    df *ABS*	00000000 libgcc2.c
00002c14 g     O .data	00000004 PWM_PORT
00002c18 g     O .data	00000004 TOHOST_PORT
00003408 g       .data	00000000 __global_pointer$
00000af4 g     F .text	000000a8 vQueueWaitForMessageRestricted
000021ac g     F .text	000000b0 init_EXINT
00002c0c g     O .data	00000004 pullNextTime
0000149c g     F .text	00000030 vTaskEnterCritical
00000834 g     F .text	000000c4 xQueueGenericSendFromISR
00002c50 g     O .bss	00000004 pxCurrentTCB
00002a84 g       .text	00000000 _etext
00000400 g       *ABS*	00000000 __stack_size
00001364 g     F .text	0000001c vTaskInternalSetTimeOutState
00000388 g     F .text	0000002c xPortStartScheduler
000027f4 g     F .text	00000128 memcpy
00001214 g     F .text	00000038 vTaskPlaceOnEventList
00000304  w    F .text	00000084 vPortSetupTimerInterrupt
0000216c g     F .text	00000040 set_PWM
0000029c g     F .text	00000068 vPortFree
000022a0 g     F .text	00000080 handle_trap
00000bc4 g     F .text	00000030 vListInsertEnd
00000bbc g     F .text	00000008 vListInitialiseItem
000008f8 g     F .text	000001bc xQueueReceive
00014ca0 g     O .bss	00000040 xQueueRegistry
00014df8 g     O .bss	00000080 exints
00000140 g     F .text	0000015c pvPortMalloc
0000225c g     F .text	00000044 get_EXINT
00000b9c g     F .text	00000020 vListInitialise
00000ebc g     F .text	0000000c xTaskGetTickCount
0000069c g     F .text	00000198 xQueueGenericSend
00014e78 g       .bss	00000000 _ebss
000013b4 g     F .text	000000e8 xTaskPriorityDisinherit
00015280 g       .stack	00000000 _stack_top
00002400 g       .text	00000000 freertos_risc_v_trap_handler
00002a84 g       .rodata.align	00000000 _rodata
00001298 g     F .text	000000cc xTaskRemoveFromEventList
000023bc g     F .text	00000020 vApplicationMallocFailedHook
000023fc g     F .text	00000004 vApplicationTickHook
00002c24 g     O .data	00000004 xISRStackTop
00002784 g     F .text	0000004c .hidden __clzsi2
00001a70 g     F .text	00000104 xTaskCheckForTimeOut
00002c28 g       .bss.align	00000000 _bss
00000000 g     F .init	00000000 _start
00000ea4 g     F .text	00000018 vTaskSuspendAll
00000c44 g     F .text	00000050 uxListRemove
000027d0 g     F .text	00000024 .hidden __mulsi3
0000111c g     F .text	000000f8 vTaskSwitchContext
00002c28 g       *ABS*	00000000 _bss_lma
0000124c g     F .text	0000004c vTaskPlaceOnEventListRestricted
00001c64 g     F .text	000000d4 xTimerGenericCommand
000023dc g     F .text	00000020 vApplicationStackOverflowHook
00000000 g       .init	00000000 _text
0000291c g     F .text	000000dc memset
00000100 g     F .text	00000040 main
0000215c g     F .text	00000010 simrv_exit
00000bf4 g     F .text	00000050 vListInsert
00001c0c g     F .text	00000058 xTimerCreateTimerTask
00002a84 g       *ABS*	00000000 _rodata_lma
000005e0 g     F .text	000000bc xQueueGenericCreate
000018a4 g     F .text	000001cc xTaskResumeAll
00002c10 g     O .data	00000004 uxTopUsedPriority
00002b08 g     O .rodata	00000100 .hidden __clz_tab
00001810 g     F .text	00000094 vTaskStartScheduler
000020f0 g     F .text	0000006c vSendString
00002600 g       .text	00000000 xPortStartFirstTask
00002c08 g       .data.align	00000000 _data
00001380 g     F .text	00000010 vTaskMissedYield
00000ab4 g     F .text	00000040 vQueueAddToRegistry
00002320 g     F .text	0000009c linetrace
00000ec8 g     F .text	00000254 xTaskIncrementTick
00002c44 g     O .bss	00000004 pullMachineTimerCompareRegister
00002c28 g       .data	00000000 _edata
00014e78 g       .bss	00000000 _end
00001510 g     F .text	00000300 xTaskCreate
00002c08 g       *ABS*	00000000 _data_lma
00002c20 g     O .data	00000004 uxTimerIncrementsForOneTick
00001390 g     F .text	00000024 xTaskGetSchedulerState
000014cc g     F .text	00000044 vTaskExitCritical
000029f8 g     F .text	0000008c strlen
00002700 g       .text	00000000 pxPortInitialiseStack
00002c48 g     O .bss	00000008 ullNextTime
00002c08 g       .rodata	00000000 _erodata



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
  7c:	00003197          	auipc	gp,0x3
  80:	38c18193          	addi	gp,gp,908 # 3408 <__global_pointer$>
  84:	f1402573          	csrr	a0,mhartid
  88:	00000593          	li	a1,0
  8c:	04b51263          	bne	a0,a1,d0 <secondary>
  90:	00015117          	auipc	sp,0x15
  94:	1f010113          	addi	sp,sp,496 # 15280 <_stack_top>
  98:	00003517          	auipc	a0,0x3
  9c:	b9050513          	addi	a0,a0,-1136 # 2c28 <_bss>
  a0:	00015597          	auipc	a1,0x15
  a4:	dd858593          	addi	a1,a1,-552 # 14e78 <_ebss>
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
     104:	00003517          	auipc	a0,0x3
     108:	9c050513          	addi	a0,a0,-1600 # 2ac4 <_etext+0x40>
     10c:	00112623          	sw	ra,12(sp)
     110:	7e1010ef          	jal	ra,20f0 <vSendString>
     114:	00000793          	li	a5,0
     118:	00300713          	li	a4,3
     11c:	00000693          	li	a3,0
     120:	40000613          	li	a2,1024
     124:	00003597          	auipc	a1,0x3
     128:	9b458593          	addi	a1,a1,-1612 # 2ad8 <_etext+0x54>
     12c:	00002517          	auipc	a0,0x2
     130:	1f450513          	addi	a0,a0,500 # 2320 <linetrace>
     134:	3dc010ef          	jal	ra,1510 <xTaskCreate>
     138:	6d8010ef          	jal	ra,1810 <vTaskStartScheduler>
     13c:	0000006f          	j	13c <main+0x3c>

00000140 <pvPortMalloc>:
     140:	ff010113          	addi	sp,sp,-16
     144:	00812423          	sw	s0,8(sp)
     148:	00112623          	sw	ra,12(sp)
     14c:	00050413          	mv	s0,a0
     150:	555000ef          	jal	ra,ea4 <vTaskSuspendAll>
     154:	00003717          	auipc	a4,0x3
     158:	ae470713          	addi	a4,a4,-1308 # 2c38 <xHeapHasBeenInitialised.0>
     15c:	00072783          	lw	a5,0(a4)
     160:	04079663          	bnez	a5,1ac <pvPortMalloc+0x6c>
     164:	00003797          	auipc	a5,0x3
     168:	b4c78793          	addi	a5,a5,-1204 # 2cb0 <ucHeap+0x10>
     16c:	000106b7          	lui	a3,0x10
     170:	ff07f793          	andi	a5,a5,-16
     174:	00003617          	auipc	a2,0x3
     178:	abc60613          	addi	a2,a2,-1348 # 2c30 <xEnd>
     17c:	ff068693          	addi	a3,a3,-16 # fff0 <__global_pointer$+0xcbe8>
     180:	00003597          	auipc	a1,0x3
     184:	aaf5ae23          	sw	a5,-1348(a1) # 2c3c <xStart>
     188:	00d7a223          	sw	a3,4(a5)
     18c:	00c7a023          	sw	a2,0(a5)
     190:	00100793          	li	a5,1
     194:	00003597          	auipc	a1,0x3
     198:	aa05a623          	sw	zero,-1364(a1) # 2c40 <xStart+0x4>
     19c:	00d62223          	sw	a3,4(a2)
     1a0:	00003597          	auipc	a1,0x3
     1a4:	a805a823          	sw	zero,-1392(a1) # 2c30 <xEnd>
     1a8:	00f72023          	sw	a5,0(a4)
     1ac:	fff40793          	addi	a5,s0,-1
     1b0:	fee00713          	li	a4,-18
     1b4:	0cf76463          	bltu	a4,a5,27c <pvPortMalloc+0x13c>
     1b8:	01040413          	addi	s0,s0,16
     1bc:	ff047613          	andi	a2,s0,-16
     1c0:	01060613          	addi	a2,a2,16
     1c4:	0ac47c63          	bgeu	s0,a2,27c <pvPortMalloc+0x13c>
     1c8:	00003817          	auipc	a6,0x3
     1cc:	a4080813          	addi	a6,a6,-1472 # 2c08 <xFreeBytesRemaining>
     1d0:	00082503          	lw	a0,0(a6)
     1d4:	0ac56463          	bltu	a0,a2,27c <pvPortMalloc+0x13c>
     1d8:	00003597          	auipc	a1,0x3
     1dc:	a6458593          	addi	a1,a1,-1436 # 2c3c <xStart>
     1e0:	0005a783          	lw	a5,0(a1)
     1e4:	0140006f          	j	1f8 <pvPortMalloc+0xb8>
     1e8:	0007a703          	lw	a4,0(a5)
     1ec:	00070a63          	beqz	a4,200 <pvPortMalloc+0xc0>
     1f0:	00078593          	mv	a1,a5
     1f4:	00070793          	mv	a5,a4
     1f8:	0047a683          	lw	a3,4(a5)
     1fc:	fec6e6e3          	bltu	a3,a2,1e8 <pvPortMalloc+0xa8>
     200:	00003717          	auipc	a4,0x3
     204:	a3070713          	addi	a4,a4,-1488 # 2c30 <xEnd>
     208:	06e78a63          	beq	a5,a4,27c <pvPortMalloc+0x13c>
     20c:	0007a883          	lw	a7,0(a5)
     210:	0005a403          	lw	s0,0(a1)
     214:	40c68733          	sub	a4,a3,a2
     218:	0115a023          	sw	a7,0(a1)
     21c:	02000593          	li	a1,32
     220:	01040413          	addi	s0,s0,16
     224:	02e5fc63          	bgeu	a1,a4,25c <pvPortMalloc+0x11c>
     228:	00c788b3          	add	a7,a5,a2
     22c:	00e8a223          	sw	a4,4(a7)
     230:	00c7a223          	sw	a2,4(a5)
     234:	0048a583          	lw	a1,4(a7)
     238:	00003797          	auipc	a5,0x3
     23c:	a0478793          	addi	a5,a5,-1532 # 2c3c <xStart>
     240:	00078693          	mv	a3,a5
     244:	0007a783          	lw	a5,0(a5)
     248:	0047a703          	lw	a4,4(a5)
     24c:	feb76ae3          	bltu	a4,a1,240 <pvPortMalloc+0x100>
     250:	00f8a023          	sw	a5,0(a7)
     254:	0116a023          	sw	a7,0(a3)
     258:	00060693          	mv	a3,a2
     25c:	40d50533          	sub	a0,a0,a3
     260:	00a82023          	sw	a0,0(a6)
     264:	640010ef          	jal	ra,18a4 <xTaskResumeAll>
     268:	00c12083          	lw	ra,12(sp)
     26c:	00040513          	mv	a0,s0
     270:	00812403          	lw	s0,8(sp)
     274:	01010113          	addi	sp,sp,16
     278:	00008067          	ret
     27c:	628010ef          	jal	ra,18a4 <xTaskResumeAll>
     280:	13c020ef          	jal	ra,23bc <vApplicationMallocFailedHook>
     284:	00000413          	li	s0,0
     288:	00c12083          	lw	ra,12(sp)
     28c:	00040513          	mv	a0,s0
     290:	00812403          	lw	s0,8(sp)
     294:	01010113          	addi	sp,sp,16
     298:	00008067          	ret

0000029c <vPortFree>:
     29c:	06050263          	beqz	a0,300 <vPortFree+0x64>
     2a0:	ff010113          	addi	sp,sp,-16
     2a4:	00812423          	sw	s0,8(sp)
     2a8:	00112623          	sw	ra,12(sp)
     2ac:	00050413          	mv	s0,a0
     2b0:	3f5000ef          	jal	ra,ea4 <vTaskSuspendAll>
     2b4:	ff442683          	lw	a3,-12(s0)
     2b8:	ff040513          	addi	a0,s0,-16
     2bc:	00003797          	auipc	a5,0x3
     2c0:	98078793          	addi	a5,a5,-1664 # 2c3c <xStart>
     2c4:	00078613          	mv	a2,a5
     2c8:	0007a783          	lw	a5,0(a5)
     2cc:	0047a703          	lw	a4,4(a5)
     2d0:	fed76ae3          	bltu	a4,a3,2c4 <vPortFree+0x28>
     2d4:	00003597          	auipc	a1,0x3
     2d8:	93458593          	addi	a1,a1,-1740 # 2c08 <xFreeBytesRemaining>
     2dc:	0005a703          	lw	a4,0(a1)
     2e0:	fef42823          	sw	a5,-16(s0)
     2e4:	00812403          	lw	s0,8(sp)
     2e8:	00c12083          	lw	ra,12(sp)
     2ec:	00d707b3          	add	a5,a4,a3
     2f0:	00a62023          	sw	a0,0(a2)
     2f4:	00f5a023          	sw	a5,0(a1)
     2f8:	01010113          	addi	sp,sp,16
     2fc:	5a80106f          	j	18a4 <xTaskResumeAll>
     300:	00008067          	ret

00000304 <vPortSetupTimerInterrupt>:
     304:	ff010113          	addi	sp,sp,-16
     308:	f14027f3          	csrr	a5,mhartid
     30c:	00f12623          	sw	a5,12(sp)
     310:	00c12583          	lw	a1,12(sp)
     314:	0c0017b7          	lui	a5,0xc001
     318:	80078793          	addi	a5,a5,-2048 # c000800 <_stack_top+0xbfeb580>
     31c:	00f585b3          	add	a1,a1,a5
     320:	00359593          	slli	a1,a1,0x3
     324:	00003797          	auipc	a5,0x3
     328:	92b7a023          	sw	a1,-1760(a5) # 2c44 <pullMachineTimerCompareRegister>
     32c:	6000c7b7          	lui	a5,0x6000c
     330:	ffc7a683          	lw	a3,-4(a5) # 6000bffc <_stack_top+0x5fff6d7c>
     334:	ff87a603          	lw	a2,-8(a5)
     338:	ffc7a703          	lw	a4,-4(a5)
     33c:	fed71ae3          	bne	a4,a3,330 <vPortSetupTimerInterrupt+0x2c>
     340:	000186b7          	lui	a3,0x18
     344:	6a068693          	addi	a3,a3,1696 # 186a0 <_stack_top+0x3420>
     348:	000317b7          	lui	a5,0x31
     34c:	00d606b3          	add	a3,a2,a3
     350:	d4078793          	addi	a5,a5,-704 # 30d40 <_stack_top+0x1bac0>
     354:	00c6b533          	sltu	a0,a3,a2
     358:	00f607b3          	add	a5,a2,a5
     35c:	00d5a023          	sw	a3,0(a1)
     360:	00e508b3          	add	a7,a0,a4
     364:	00c7b633          	sltu	a2,a5,a2
     368:	0115a223          	sw	a7,4(a1)
     36c:	00003697          	auipc	a3,0x3
     370:	8dc68693          	addi	a3,a3,-1828 # 2c48 <ullNextTime>
     374:	00e60633          	add	a2,a2,a4
     378:	00f6a023          	sw	a5,0(a3)
     37c:	00c6a223          	sw	a2,4(a3)
     380:	01010113          	addi	sp,sp,16
     384:	00008067          	ret

00000388 <xPortStartScheduler>:
     388:	ff010113          	addi	sp,sp,-16
     38c:	00112623          	sw	ra,12(sp)
     390:	f75ff0ef          	jal	ra,304 <vPortSetupTimerInterrupt>
     394:	000017b7          	lui	a5,0x1
     398:	88078793          	addi	a5,a5,-1920 # 880 <xQueueGenericSendFromISR+0x4c>
     39c:	3047a073          	csrs	mie,a5
     3a0:	260020ef          	jal	ra,2600 <xPortStartFirstTask>
     3a4:	00c12083          	lw	ra,12(sp)
     3a8:	00000513          	li	a0,0
     3ac:	01010113          	addi	sp,sp,16
     3b0:	00008067          	ret

000003b4 <prvCopyDataToQueue>:
     3b4:	ff010113          	addi	sp,sp,-16
     3b8:	04052783          	lw	a5,64(a0)
     3bc:	00912223          	sw	s1,4(sp)
     3c0:	03852483          	lw	s1,56(a0)
     3c4:	00812423          	sw	s0,8(sp)
     3c8:	00112623          	sw	ra,12(sp)
     3cc:	01212023          	sw	s2,0(sp)
     3d0:	00050413          	mv	s0,a0
     3d4:	02079863          	bnez	a5,404 <__stack_size+0x4>
     3d8:	00052783          	lw	a5,0(a0)
     3dc:	00148493          	addi	s1,s1,1
     3e0:	00000513          	li	a0,0
     3e4:	0c078c63          	beqz	a5,4bc <__stack_size+0xbc>
     3e8:	02942c23          	sw	s1,56(s0)
     3ec:	00c12083          	lw	ra,12(sp)
     3f0:	00812403          	lw	s0,8(sp)
     3f4:	00412483          	lw	s1,4(sp)
     3f8:	00012903          	lw	s2,0(sp)
     3fc:	01010113          	addi	sp,sp,16
     400:	00008067          	ret
     404:	00060913          	mv	s2,a2
     408:	04061a63          	bnez	a2,45c <__stack_size+0x5c>
     40c:	00452503          	lw	a0,4(a0)
     410:	00078613          	mv	a2,a5
     414:	00148493          	addi	s1,s1,1
     418:	3dc020ef          	jal	ra,27f4 <memcpy>
     41c:	00442783          	lw	a5,4(s0)
     420:	04042683          	lw	a3,64(s0)
     424:	00842703          	lw	a4,8(s0)
     428:	00000513          	li	a0,0
     42c:	00d787b3          	add	a5,a5,a3
     430:	00f42223          	sw	a5,4(s0)
     434:	fae7eae3          	bltu	a5,a4,3e8 <prvCopyDataToQueue+0x34>
     438:	00042783          	lw	a5,0(s0)
     43c:	02942c23          	sw	s1,56(s0)
     440:	00c12083          	lw	ra,12(sp)
     444:	00f42223          	sw	a5,4(s0)
     448:	00812403          	lw	s0,8(sp)
     44c:	00412483          	lw	s1,4(sp)
     450:	00012903          	lw	s2,0(sp)
     454:	01010113          	addi	sp,sp,16
     458:	00008067          	ret
     45c:	00c52503          	lw	a0,12(a0)
     460:	00078613          	mv	a2,a5
     464:	390020ef          	jal	ra,27f4 <memcpy>
     468:	04042703          	lw	a4,64(s0)
     46c:	00c42783          	lw	a5,12(s0)
     470:	00042683          	lw	a3,0(s0)
     474:	40e00633          	neg	a2,a4
     478:	40e787b3          	sub	a5,a5,a4
     47c:	00f42623          	sw	a5,12(s0)
     480:	00d7f863          	bgeu	a5,a3,490 <__stack_size+0x90>
     484:	00842783          	lw	a5,8(s0)
     488:	00c787b3          	add	a5,a5,a2
     48c:	00f42623          	sw	a5,12(s0)
     490:	00200793          	li	a5,2
     494:	02f90c63          	beq	s2,a5,4cc <__stack_size+0xcc>
     498:	00148493          	addi	s1,s1,1
     49c:	02942c23          	sw	s1,56(s0)
     4a0:	00c12083          	lw	ra,12(sp)
     4a4:	00812403          	lw	s0,8(sp)
     4a8:	00412483          	lw	s1,4(sp)
     4ac:	00012903          	lw	s2,0(sp)
     4b0:	00000513          	li	a0,0
     4b4:	01010113          	addi	sp,sp,16
     4b8:	00008067          	ret
     4bc:	00842503          	lw	a0,8(s0)
     4c0:	6f5000ef          	jal	ra,13b4 <xTaskPriorityDisinherit>
     4c4:	00042423          	sw	zero,8(s0)
     4c8:	f21ff06f          	j	3e8 <prvCopyDataToQueue+0x34>
     4cc:	00048663          	beqz	s1,4d8 <__stack_size+0xd8>
     4d0:	00000513          	li	a0,0
     4d4:	f15ff06f          	j	3e8 <prvCopyDataToQueue+0x34>
     4d8:	00100493          	li	s1,1
     4dc:	00000513          	li	a0,0
     4e0:	f09ff06f          	j	3e8 <prvCopyDataToQueue+0x34>

000004e4 <prvUnlockQueue>:
     4e4:	ff010113          	addi	sp,sp,-16
     4e8:	00812423          	sw	s0,8(sp)
     4ec:	00912223          	sw	s1,4(sp)
     4f0:	00112623          	sw	ra,12(sp)
     4f4:	00050493          	mv	s1,a0
     4f8:	01212023          	sw	s2,0(sp)
     4fc:	7a1000ef          	jal	ra,149c <vTaskEnterCritical>
     500:	0454c783          	lbu	a5,69(s1)
     504:	01879413          	slli	s0,a5,0x18
     508:	41845413          	srai	s0,s0,0x18
     50c:	04805663          	blez	s0,558 <prvUnlockQueue+0x74>
     510:	02448913          	addi	s2,s1,36
     514:	0180006f          	j	52c <prvUnlockQueue+0x48>
     518:	fff40793          	addi	a5,s0,-1
     51c:	01879413          	slli	s0,a5,0x18
     520:	0ff7f713          	zext.b	a4,a5
     524:	41845413          	srai	s0,s0,0x18
     528:	02070863          	beqz	a4,558 <prvUnlockQueue+0x74>
     52c:	0244a783          	lw	a5,36(s1)
     530:	00090513          	mv	a0,s2
     534:	02078263          	beqz	a5,558 <prvUnlockQueue+0x74>
     538:	561000ef          	jal	ra,1298 <xTaskRemoveFromEventList>
     53c:	fc050ee3          	beqz	a0,518 <prvUnlockQueue+0x34>
     540:	641000ef          	jal	ra,1380 <vTaskMissedYield>
     544:	fff40793          	addi	a5,s0,-1
     548:	01879413          	slli	s0,a5,0x18
     54c:	0ff7f713          	zext.b	a4,a5
     550:	41845413          	srai	s0,s0,0x18
     554:	fc071ce3          	bnez	a4,52c <prvUnlockQueue+0x48>
     558:	fff00793          	li	a5,-1
     55c:	04f482a3          	sb	a5,69(s1)
     560:	76d000ef          	jal	ra,14cc <vTaskExitCritical>
     564:	739000ef          	jal	ra,149c <vTaskEnterCritical>
     568:	0444c783          	lbu	a5,68(s1)
     56c:	01879413          	slli	s0,a5,0x18
     570:	41845413          	srai	s0,s0,0x18
     574:	04805663          	blez	s0,5c0 <prvUnlockQueue+0xdc>
     578:	01048913          	addi	s2,s1,16
     57c:	0180006f          	j	594 <prvUnlockQueue+0xb0>
     580:	fff40793          	addi	a5,s0,-1
     584:	01879413          	slli	s0,a5,0x18
     588:	0ff7f713          	zext.b	a4,a5
     58c:	41845413          	srai	s0,s0,0x18
     590:	02070863          	beqz	a4,5c0 <prvUnlockQueue+0xdc>
     594:	0104a783          	lw	a5,16(s1)
     598:	00090513          	mv	a0,s2
     59c:	02078263          	beqz	a5,5c0 <prvUnlockQueue+0xdc>
     5a0:	4f9000ef          	jal	ra,1298 <xTaskRemoveFromEventList>
     5a4:	fc050ee3          	beqz	a0,580 <prvUnlockQueue+0x9c>
     5a8:	5d9000ef          	jal	ra,1380 <vTaskMissedYield>
     5ac:	fff40793          	addi	a5,s0,-1
     5b0:	01879413          	slli	s0,a5,0x18
     5b4:	0ff7f713          	zext.b	a4,a5
     5b8:	41845413          	srai	s0,s0,0x18
     5bc:	fc071ce3          	bnez	a4,594 <prvUnlockQueue+0xb0>
     5c0:	fff00793          	li	a5,-1
     5c4:	04f48223          	sb	a5,68(s1)
     5c8:	00812403          	lw	s0,8(sp)
     5cc:	00c12083          	lw	ra,12(sp)
     5d0:	00412483          	lw	s1,4(sp)
     5d4:	00012903          	lw	s2,0(sp)
     5d8:	01010113          	addi	sp,sp,16
     5dc:	6f10006f          	j	14cc <vTaskExitCritical>

000005e0 <xQueueGenericCreate>:
     5e0:	ff010113          	addi	sp,sp,-16
     5e4:	00112623          	sw	ra,12(sp)
     5e8:	00812423          	sw	s0,8(sp)
     5ec:	00912223          	sw	s1,4(sp)
     5f0:	01212023          	sw	s2,0(sp)
     5f4:	00058493          	mv	s1,a1
     5f8:	00050913          	mv	s2,a0
     5fc:	1d4020ef          	jal	ra,27d0 <__mulsi3>
     600:	04850513          	addi	a0,a0,72
     604:	b3dff0ef          	jal	ra,140 <pvPortMalloc>
     608:	00050413          	mv	s0,a0
     60c:	06050663          	beqz	a0,678 <xQueueGenericCreate+0x98>
     610:	00050793          	mv	a5,a0
     614:	08049063          	bnez	s1,694 <xQueueGenericCreate+0xb4>
     618:	00f42023          	sw	a5,0(s0)
     61c:	03242e23          	sw	s2,60(s0)
     620:	04942023          	sw	s1,64(s0)
     624:	679000ef          	jal	ra,149c <vTaskEnterCritical>
     628:	04042483          	lw	s1,64(s0)
     62c:	03c42583          	lw	a1,60(s0)
     630:	00042903          	lw	s2,0(s0)
     634:	00048513          	mv	a0,s1
     638:	198020ef          	jal	ra,27d0 <__mulsi3>
     63c:	fff00713          	li	a4,-1
     640:	02042c23          	sw	zero,56(s0)
     644:	409504b3          	sub	s1,a0,s1
     648:	00a907b3          	add	a5,s2,a0
     64c:	04e40223          	sb	a4,68(s0)
     650:	009904b3          	add	s1,s2,s1
     654:	01040513          	addi	a0,s0,16
     658:	00f42423          	sw	a5,8(s0)
     65c:	04e402a3          	sb	a4,69(s0)
     660:	01242223          	sw	s2,4(s0)
     664:	00942623          	sw	s1,12(s0)
     668:	534000ef          	jal	ra,b9c <vListInitialise>
     66c:	02440513          	addi	a0,s0,36
     670:	52c000ef          	jal	ra,b9c <vListInitialise>
     674:	659000ef          	jal	ra,14cc <vTaskExitCritical>
     678:	00c12083          	lw	ra,12(sp)
     67c:	00040513          	mv	a0,s0
     680:	00812403          	lw	s0,8(sp)
     684:	00412483          	lw	s1,4(sp)
     688:	00012903          	lw	s2,0(sp)
     68c:	01010113          	addi	sp,sp,16
     690:	00008067          	ret
     694:	04850793          	addi	a5,a0,72
     698:	f81ff06f          	j	618 <xQueueGenericCreate+0x38>

0000069c <xQueueGenericSend>:
     69c:	fc010113          	addi	sp,sp,-64
     6a0:	02812c23          	sw	s0,56(sp)
     6a4:	02912a23          	sw	s1,52(sp)
     6a8:	00050413          	mv	s0,a0
     6ac:	03212823          	sw	s2,48(sp)
     6b0:	03312623          	sw	s3,44(sp)
     6b4:	03412423          	sw	s4,40(sp)
     6b8:	03512223          	sw	s5,36(sp)
     6bc:	03612023          	sw	s6,32(sp)
     6c0:	02112e23          	sw	ra,60(sp)
     6c4:	00058a93          	mv	s5,a1
     6c8:	00c12623          	sw	a2,12(sp)
     6cc:	00068913          	mv	s2,a3
     6d0:	01050a13          	addi	s4,a0,16
     6d4:	5c9000ef          	jal	ra,149c <vTaskEnterCritical>
     6d8:	03842703          	lw	a4,56(s0)
     6dc:	03c42783          	lw	a5,60(s0)
     6e0:	00000b13          	li	s6,0
     6e4:	00200993          	li	s3,2
     6e8:	fff00493          	li	s1,-1
     6ec:	08f76863          	bltu	a4,a5,77c <xQueueGenericSend+0xe0>
     6f0:	09390663          	beq	s2,s3,77c <xQueueGenericSend+0xe0>
     6f4:	00c12783          	lw	a5,12(sp)
     6f8:	10078e63          	beqz	a5,814 <xQueueGenericSend+0x178>
     6fc:	0e0b0c63          	beqz	s6,7f4 <xQueueGenericSend+0x158>
     700:	5cd000ef          	jal	ra,14cc <vTaskExitCritical>
     704:	7a0000ef          	jal	ra,ea4 <vTaskSuspendAll>
     708:	595000ef          	jal	ra,149c <vTaskEnterCritical>
     70c:	04444783          	lbu	a5,68(s0)
     710:	01879793          	slli	a5,a5,0x18
     714:	4187d793          	srai	a5,a5,0x18
     718:	00979463          	bne	a5,s1,720 <xQueueGenericSend+0x84>
     71c:	04040223          	sb	zero,68(s0)
     720:	04544783          	lbu	a5,69(s0)
     724:	01879793          	slli	a5,a5,0x18
     728:	4187d793          	srai	a5,a5,0x18
     72c:	00979463          	bne	a5,s1,734 <xQueueGenericSend+0x98>
     730:	040402a3          	sb	zero,69(s0)
     734:	599000ef          	jal	ra,14cc <vTaskExitCritical>
     738:	00c10593          	addi	a1,sp,12
     73c:	01810513          	addi	a0,sp,24
     740:	330010ef          	jal	ra,1a70 <xTaskCheckForTimeOut>
     744:	0c051e63          	bnez	a0,820 <xQueueGenericSend+0x184>
     748:	555000ef          	jal	ra,149c <vTaskEnterCritical>
     74c:	03842703          	lw	a4,56(s0)
     750:	03c42783          	lw	a5,60(s0)
     754:	06f70a63          	beq	a4,a5,7c8 <xQueueGenericSend+0x12c>
     758:	575000ef          	jal	ra,14cc <vTaskExitCritical>
     75c:	00040513          	mv	a0,s0
     760:	d85ff0ef          	jal	ra,4e4 <prvUnlockQueue>
     764:	140010ef          	jal	ra,18a4 <xTaskResumeAll>
     768:	00100b13          	li	s6,1
     76c:	531000ef          	jal	ra,149c <vTaskEnterCritical>
     770:	03842703          	lw	a4,56(s0)
     774:	03c42783          	lw	a5,60(s0)
     778:	f6f77ce3          	bgeu	a4,a5,6f0 <xQueueGenericSend+0x54>
     77c:	00090613          	mv	a2,s2
     780:	000a8593          	mv	a1,s5
     784:	00040513          	mv	a0,s0
     788:	c2dff0ef          	jal	ra,3b4 <prvCopyDataToQueue>
     78c:	02442783          	lw	a5,36(s0)
     790:	06079863          	bnez	a5,800 <xQueueGenericSend+0x164>
     794:	06051c63          	bnez	a0,80c <xQueueGenericSend+0x170>
     798:	535000ef          	jal	ra,14cc <vTaskExitCritical>
     79c:	00100513          	li	a0,1
     7a0:	03c12083          	lw	ra,60(sp)
     7a4:	03812403          	lw	s0,56(sp)
     7a8:	03412483          	lw	s1,52(sp)
     7ac:	03012903          	lw	s2,48(sp)
     7b0:	02c12983          	lw	s3,44(sp)
     7b4:	02812a03          	lw	s4,40(sp)
     7b8:	02412a83          	lw	s5,36(sp)
     7bc:	02012b03          	lw	s6,32(sp)
     7c0:	04010113          	addi	sp,sp,64
     7c4:	00008067          	ret
     7c8:	505000ef          	jal	ra,14cc <vTaskExitCritical>
     7cc:	00c12583          	lw	a1,12(sp)
     7d0:	000a0513          	mv	a0,s4
     7d4:	241000ef          	jal	ra,1214 <vTaskPlaceOnEventList>
     7d8:	00040513          	mv	a0,s0
     7dc:	d09ff0ef          	jal	ra,4e4 <prvUnlockQueue>
     7e0:	0c4010ef          	jal	ra,18a4 <xTaskResumeAll>
     7e4:	f80512e3          	bnez	a0,768 <xQueueGenericSend+0xcc>
     7e8:	00000073          	ecall
     7ec:	00100b13          	li	s6,1
     7f0:	f7dff06f          	j	76c <xQueueGenericSend+0xd0>
     7f4:	01810513          	addi	a0,sp,24
     7f8:	36d000ef          	jal	ra,1364 <vTaskInternalSetTimeOutState>
     7fc:	f05ff06f          	j	700 <xQueueGenericSend+0x64>
     800:	02440513          	addi	a0,s0,36
     804:	295000ef          	jal	ra,1298 <xTaskRemoveFromEventList>
     808:	f80508e3          	beqz	a0,798 <xQueueGenericSend+0xfc>
     80c:	00000073          	ecall
     810:	f89ff06f          	j	798 <xQueueGenericSend+0xfc>
     814:	4b9000ef          	jal	ra,14cc <vTaskExitCritical>
     818:	00000513          	li	a0,0
     81c:	f85ff06f          	j	7a0 <xQueueGenericSend+0x104>
     820:	00040513          	mv	a0,s0
     824:	cc1ff0ef          	jal	ra,4e4 <prvUnlockQueue>
     828:	07c010ef          	jal	ra,18a4 <xTaskResumeAll>
     82c:	00000513          	li	a0,0
     830:	f71ff06f          	j	7a0 <xQueueGenericSend+0x104>

00000834 <xQueueGenericSendFromISR>:
     834:	03852703          	lw	a4,56(a0)
     838:	03c52783          	lw	a5,60(a0)
     83c:	ff010113          	addi	sp,sp,-16
     840:	00812423          	sw	s0,8(sp)
     844:	01212023          	sw	s2,0(sp)
     848:	00112623          	sw	ra,12(sp)
     84c:	00912223          	sw	s1,4(sp)
     850:	00060913          	mv	s2,a2
     854:	00050413          	mv	s0,a0
     858:	00068613          	mv	a2,a3
     85c:	02f76463          	bltu	a4,a5,884 <xQueueGenericSendFromISR+0x50>
     860:	00200793          	li	a5,2
     864:	00000513          	li	a0,0
     868:	00f68e63          	beq	a3,a5,884 <xQueueGenericSendFromISR+0x50>
     86c:	00c12083          	lw	ra,12(sp)
     870:	00812403          	lw	s0,8(sp)
     874:	00412483          	lw	s1,4(sp)
     878:	00012903          	lw	s2,0(sp)
     87c:	01010113          	addi	sp,sp,16
     880:	00008067          	ret
     884:	04544483          	lbu	s1,69(s0)
     888:	03842783          	lw	a5,56(s0)
     88c:	00040513          	mv	a0,s0
     890:	01849493          	slli	s1,s1,0x18
     894:	b21ff0ef          	jal	ra,3b4 <prvCopyDataToQueue>
     898:	4184d493          	srai	s1,s1,0x18
     89c:	fff00793          	li	a5,-1
     8a0:	02f48863          	beq	s1,a5,8d0 <xQueueGenericSendFromISR+0x9c>
     8a4:	00148493          	addi	s1,s1,1
     8a8:	01849493          	slli	s1,s1,0x18
     8ac:	4184d493          	srai	s1,s1,0x18
     8b0:	049402a3          	sb	s1,69(s0)
     8b4:	00c12083          	lw	ra,12(sp)
     8b8:	00812403          	lw	s0,8(sp)
     8bc:	00412483          	lw	s1,4(sp)
     8c0:	00012903          	lw	s2,0(sp)
     8c4:	00100513          	li	a0,1
     8c8:	01010113          	addi	sp,sp,16
     8cc:	00008067          	ret
     8d0:	02442783          	lw	a5,36(s0)
     8d4:	fe0780e3          	beqz	a5,8b4 <xQueueGenericSendFromISR+0x80>
     8d8:	02440513          	addi	a0,s0,36
     8dc:	1bd000ef          	jal	ra,1298 <xTaskRemoveFromEventList>
     8e0:	fc050ae3          	beqz	a0,8b4 <xQueueGenericSendFromISR+0x80>
     8e4:	fc0908e3          	beqz	s2,8b4 <xQueueGenericSendFromISR+0x80>
     8e8:	00100793          	li	a5,1
     8ec:	00f92023          	sw	a5,0(s2)
     8f0:	00100513          	li	a0,1
     8f4:	f79ff06f          	j	86c <xQueueGenericSendFromISR+0x38>

000008f8 <xQueueReceive>:
     8f8:	fc010113          	addi	sp,sp,-64
     8fc:	02812c23          	sw	s0,56(sp)
     900:	00050413          	mv	s0,a0
     904:	03212823          	sw	s2,48(sp)
     908:	03312623          	sw	s3,44(sp)
     90c:	02112e23          	sw	ra,60(sp)
     910:	02912a23          	sw	s1,52(sp)
     914:	03412423          	sw	s4,40(sp)
     918:	00058993          	mv	s3,a1
     91c:	00c12623          	sw	a2,12(sp)
     920:	37d000ef          	jal	ra,149c <vTaskEnterCritical>
     924:	03842903          	lw	s2,56(s0)
     928:	10091463          	bnez	s2,a30 <xQueueReceive+0x138>
     92c:	00c12783          	lw	a5,12(sp)
     930:	08078e63          	beqz	a5,9cc <xQueueReceive+0xd4>
     934:	01810513          	addi	a0,sp,24
     938:	22d000ef          	jal	ra,1364 <vTaskInternalSetTimeOutState>
     93c:	fff00493          	li	s1,-1
     940:	02440a13          	addi	s4,s0,36
     944:	389000ef          	jal	ra,14cc <vTaskExitCritical>
     948:	55c000ef          	jal	ra,ea4 <vTaskSuspendAll>
     94c:	351000ef          	jal	ra,149c <vTaskEnterCritical>
     950:	04444783          	lbu	a5,68(s0)
     954:	01879793          	slli	a5,a5,0x18
     958:	4187d793          	srai	a5,a5,0x18
     95c:	00979463          	bne	a5,s1,964 <xQueueReceive+0x6c>
     960:	04040223          	sb	zero,68(s0)
     964:	04544783          	lbu	a5,69(s0)
     968:	01879793          	slli	a5,a5,0x18
     96c:	4187d793          	srai	a5,a5,0x18
     970:	00979463          	bne	a5,s1,978 <xQueueReceive+0x80>
     974:	040402a3          	sb	zero,69(s0)
     978:	355000ef          	jal	ra,14cc <vTaskExitCritical>
     97c:	00c10593          	addi	a1,sp,12
     980:	01810513          	addi	a0,sp,24
     984:	0ec010ef          	jal	ra,1a70 <xTaskCheckForTimeOut>
     988:	06051663          	bnez	a0,9f4 <xQueueReceive+0xfc>
     98c:	311000ef          	jal	ra,149c <vTaskEnterCritical>
     990:	03842783          	lw	a5,56(s0)
     994:	08079063          	bnez	a5,a14 <xQueueReceive+0x11c>
     998:	335000ef          	jal	ra,14cc <vTaskExitCritical>
     99c:	00c12583          	lw	a1,12(sp)
     9a0:	000a0513          	mv	a0,s4
     9a4:	071000ef          	jal	ra,1214 <vTaskPlaceOnEventList>
     9a8:	00040513          	mv	a0,s0
     9ac:	b39ff0ef          	jal	ra,4e4 <prvUnlockQueue>
     9b0:	6f5000ef          	jal	ra,18a4 <xTaskResumeAll>
     9b4:	0c050c63          	beqz	a0,a8c <xQueueReceive+0x194>
     9b8:	2e5000ef          	jal	ra,149c <vTaskEnterCritical>
     9bc:	03842903          	lw	s2,56(s0)
     9c0:	06091863          	bnez	s2,a30 <xQueueReceive+0x138>
     9c4:	00c12783          	lw	a5,12(sp)
     9c8:	f6079ee3          	bnez	a5,944 <xQueueReceive+0x4c>
     9cc:	301000ef          	jal	ra,14cc <vTaskExitCritical>
     9d0:	03c12083          	lw	ra,60(sp)
     9d4:	03812403          	lw	s0,56(sp)
     9d8:	03412483          	lw	s1,52(sp)
     9dc:	03012903          	lw	s2,48(sp)
     9e0:	02c12983          	lw	s3,44(sp)
     9e4:	02812a03          	lw	s4,40(sp)
     9e8:	00000513          	li	a0,0
     9ec:	04010113          	addi	sp,sp,64
     9f0:	00008067          	ret
     9f4:	00040513          	mv	a0,s0
     9f8:	aedff0ef          	jal	ra,4e4 <prvUnlockQueue>
     9fc:	6a9000ef          	jal	ra,18a4 <xTaskResumeAll>
     a00:	29d000ef          	jal	ra,149c <vTaskEnterCritical>
     a04:	03842783          	lw	a5,56(s0)
     a08:	fc0782e3          	beqz	a5,9cc <xQueueReceive+0xd4>
     a0c:	2c1000ef          	jal	ra,14cc <vTaskExitCritical>
     a10:	fa9ff06f          	j	9b8 <xQueueReceive+0xc0>
     a14:	2b9000ef          	jal	ra,14cc <vTaskExitCritical>
     a18:	00040513          	mv	a0,s0
     a1c:	ac9ff0ef          	jal	ra,4e4 <prvUnlockQueue>
     a20:	685000ef          	jal	ra,18a4 <xTaskResumeAll>
     a24:	279000ef          	jal	ra,149c <vTaskEnterCritical>
     a28:	03842903          	lw	s2,56(s0)
     a2c:	f8090ce3          	beqz	s2,9c4 <xQueueReceive+0xcc>
     a30:	04042603          	lw	a2,64(s0)
     a34:	02060063          	beqz	a2,a54 <xQueueReceive+0x15c>
     a38:	00c42583          	lw	a1,12(s0)
     a3c:	00842783          	lw	a5,8(s0)
     a40:	00c585b3          	add	a1,a1,a2
     a44:	00b42623          	sw	a1,12(s0)
     a48:	04f5f663          	bgeu	a1,a5,a94 <xQueueReceive+0x19c>
     a4c:	00098513          	mv	a0,s3
     a50:	5a5010ef          	jal	ra,27f4 <memcpy>
     a54:	fff90913          	addi	s2,s2,-1
     a58:	03242c23          	sw	s2,56(s0)
     a5c:	01042783          	lw	a5,16(s0)
     a60:	04079063          	bnez	a5,aa0 <xQueueReceive+0x1a8>
     a64:	269000ef          	jal	ra,14cc <vTaskExitCritical>
     a68:	03c12083          	lw	ra,60(sp)
     a6c:	03812403          	lw	s0,56(sp)
     a70:	03412483          	lw	s1,52(sp)
     a74:	03012903          	lw	s2,48(sp)
     a78:	02c12983          	lw	s3,44(sp)
     a7c:	02812a03          	lw	s4,40(sp)
     a80:	00100513          	li	a0,1
     a84:	04010113          	addi	sp,sp,64
     a88:	00008067          	ret
     a8c:	00000073          	ecall
     a90:	f29ff06f          	j	9b8 <xQueueReceive+0xc0>
     a94:	00042583          	lw	a1,0(s0)
     a98:	00b42623          	sw	a1,12(s0)
     a9c:	fb1ff06f          	j	a4c <xQueueReceive+0x154>
     aa0:	01040513          	addi	a0,s0,16
     aa4:	7f4000ef          	jal	ra,1298 <xTaskRemoveFromEventList>
     aa8:	fa050ee3          	beqz	a0,a64 <xQueueReceive+0x16c>
     aac:	00000073          	ecall
     ab0:	fb5ff06f          	j	a64 <xQueueReceive+0x16c>

00000ab4 <vQueueAddToRegistry>:
     ab4:	00014817          	auipc	a6,0x14
     ab8:	1ec80813          	addi	a6,a6,492 # 14ca0 <xQueueRegistry>
     abc:	00080713          	mv	a4,a6
     ac0:	00000793          	li	a5,0
     ac4:	00800613          	li	a2,8
     ac8:	00072683          	lw	a3,0(a4)
     acc:	00870713          	addi	a4,a4,8
     ad0:	00068863          	beqz	a3,ae0 <vQueueAddToRegistry+0x2c>
     ad4:	00178793          	addi	a5,a5,1
     ad8:	fec798e3          	bne	a5,a2,ac8 <vQueueAddToRegistry+0x14>
     adc:	00008067          	ret
     ae0:	00379793          	slli	a5,a5,0x3
     ae4:	00f80833          	add	a6,a6,a5
     ae8:	00b82023          	sw	a1,0(a6)
     aec:	00a82223          	sw	a0,4(a6)
     af0:	00008067          	ret

00000af4 <vQueueWaitForMessageRestricted>:
     af4:	ff010113          	addi	sp,sp,-16
     af8:	00812423          	sw	s0,8(sp)
     afc:	00912223          	sw	s1,4(sp)
     b00:	01212023          	sw	s2,0(sp)
     b04:	00050413          	mv	s0,a0
     b08:	00112623          	sw	ra,12(sp)
     b0c:	00058493          	mv	s1,a1
     b10:	00060913          	mv	s2,a2
     b14:	189000ef          	jal	ra,149c <vTaskEnterCritical>
     b18:	04444783          	lbu	a5,68(s0)
     b1c:	fff00713          	li	a4,-1
     b20:	01879793          	slli	a5,a5,0x18
     b24:	4187d793          	srai	a5,a5,0x18
     b28:	00e79463          	bne	a5,a4,b30 <vQueueWaitForMessageRestricted+0x3c>
     b2c:	04040223          	sb	zero,68(s0)
     b30:	04544783          	lbu	a5,69(s0)
     b34:	fff00713          	li	a4,-1
     b38:	01879793          	slli	a5,a5,0x18
     b3c:	4187d793          	srai	a5,a5,0x18
     b40:	00e79463          	bne	a5,a4,b48 <vQueueWaitForMessageRestricted+0x54>
     b44:	040402a3          	sb	zero,69(s0)
     b48:	185000ef          	jal	ra,14cc <vTaskExitCritical>
     b4c:	03842783          	lw	a5,56(s0)
     b50:	02078063          	beqz	a5,b70 <vQueueWaitForMessageRestricted+0x7c>
     b54:	00040513          	mv	a0,s0
     b58:	00812403          	lw	s0,8(sp)
     b5c:	00c12083          	lw	ra,12(sp)
     b60:	00412483          	lw	s1,4(sp)
     b64:	00012903          	lw	s2,0(sp)
     b68:	01010113          	addi	sp,sp,16
     b6c:	979ff06f          	j	4e4 <prvUnlockQueue>
     b70:	02440513          	addi	a0,s0,36
     b74:	00090613          	mv	a2,s2
     b78:	00048593          	mv	a1,s1
     b7c:	6d0000ef          	jal	ra,124c <vTaskPlaceOnEventListRestricted>
     b80:	00040513          	mv	a0,s0
     b84:	00812403          	lw	s0,8(sp)
     b88:	00c12083          	lw	ra,12(sp)
     b8c:	00412483          	lw	s1,4(sp)
     b90:	00012903          	lw	s2,0(sp)
     b94:	01010113          	addi	sp,sp,16
     b98:	94dff06f          	j	4e4 <prvUnlockQueue>

00000b9c <vListInitialise>:
     b9c:	00850793          	addi	a5,a0,8
     ba0:	fff00713          	li	a4,-1
     ba4:	00f52223          	sw	a5,4(a0)
     ba8:	00e52423          	sw	a4,8(a0)
     bac:	00f52623          	sw	a5,12(a0)
     bb0:	00f52823          	sw	a5,16(a0)
     bb4:	00052023          	sw	zero,0(a0)
     bb8:	00008067          	ret

00000bbc <vListInitialiseItem>:
     bbc:	00052823          	sw	zero,16(a0)
     bc0:	00008067          	ret

00000bc4 <vListInsertEnd>:
     bc4:	00452783          	lw	a5,4(a0)
     bc8:	00052703          	lw	a4,0(a0)
     bcc:	0087a683          	lw	a3,8(a5)
     bd0:	00f5a223          	sw	a5,4(a1)
     bd4:	00170713          	addi	a4,a4,1
     bd8:	00d5a423          	sw	a3,8(a1)
     bdc:	0087a683          	lw	a3,8(a5)
     be0:	00b6a223          	sw	a1,4(a3)
     be4:	00b7a423          	sw	a1,8(a5)
     be8:	00a5a823          	sw	a0,16(a1)
     bec:	00e52023          	sw	a4,0(a0)
     bf0:	00008067          	ret

00000bf4 <vListInsert>:
     bf4:	0005a603          	lw	a2,0(a1)
     bf8:	fff00713          	li	a4,-1
     bfc:	00850793          	addi	a5,a0,8
     c00:	02e60c63          	beq	a2,a4,c38 <vListInsert+0x44>
     c04:	00078693          	mv	a3,a5
     c08:	0047a783          	lw	a5,4(a5)
     c0c:	0007a703          	lw	a4,0(a5)
     c10:	fee67ae3          	bgeu	a2,a4,c04 <vListInsert+0x10>
     c14:	00f5a223          	sw	a5,4(a1)
     c18:	00b7a423          	sw	a1,8(a5)
     c1c:	00052783          	lw	a5,0(a0)
     c20:	00d5a423          	sw	a3,8(a1)
     c24:	00b6a223          	sw	a1,4(a3)
     c28:	00a5a823          	sw	a0,16(a1)
     c2c:	00178793          	addi	a5,a5,1
     c30:	00f52023          	sw	a5,0(a0)
     c34:	00008067          	ret
     c38:	01052683          	lw	a3,16(a0)
     c3c:	0046a783          	lw	a5,4(a3)
     c40:	fd5ff06f          	j	c14 <vListInsert+0x20>

00000c44 <uxListRemove>:
     c44:	01052783          	lw	a5,16(a0)
     c48:	00452683          	lw	a3,4(a0)
     c4c:	00852703          	lw	a4,8(a0)
     c50:	0047a603          	lw	a2,4(a5)
     c54:	00e6a423          	sw	a4,8(a3)
     c58:	00d72223          	sw	a3,4(a4)
     c5c:	00a60e63          	beq	a2,a0,c78 <uxListRemove+0x34>
     c60:	0007a703          	lw	a4,0(a5)
     c64:	00052823          	sw	zero,16(a0)
     c68:	fff70713          	addi	a4,a4,-1
     c6c:	00e7a023          	sw	a4,0(a5)
     c70:	0007a503          	lw	a0,0(a5)
     c74:	00008067          	ret
     c78:	00e7a223          	sw	a4,4(a5)
     c7c:	0007a703          	lw	a4,0(a5)
     c80:	00052823          	sw	zero,16(a0)
     c84:	fff70713          	addi	a4,a4,-1
     c88:	00e7a023          	sw	a4,0(a5)
     c8c:	0007a503          	lw	a0,0(a5)
     c90:	00008067          	ret

00000c94 <prvAddCurrentTaskToDelayedList>:
     c94:	fe010113          	addi	sp,sp,-32
     c98:	00912a23          	sw	s1,20(sp)
     c9c:	00002497          	auipc	s1,0x2
     ca0:	fb448493          	addi	s1,s1,-76 # 2c50 <pxCurrentTCB>
     ca4:	01212823          	sw	s2,16(sp)
     ca8:	00002917          	auipc	s2,0x2
     cac:	fdc92903          	lw	s2,-36(s2) # 2c84 <xTickCount>
     cb0:	0004a703          	lw	a4,0(s1)
     cb4:	0004a783          	lw	a5,0(s1)
     cb8:	00812c23          	sw	s0,24(sp)
     cbc:	01312623          	sw	s3,12(sp)
     cc0:	00112e23          	sw	ra,28(sp)
     cc4:	00050413          	mv	s0,a0
     cc8:	04070aa3          	sb	zero,85(a4)
     ccc:	00478513          	addi	a0,a5,4
     cd0:	00058993          	mv	s3,a1
     cd4:	f71ff0ef          	jal	ra,c44 <uxListRemove>
     cd8:	02051663          	bnez	a0,d04 <prvAddCurrentTaskToDelayedList+0x70>
     cdc:	0004a783          	lw	a5,0(s1)
     ce0:	00002717          	auipc	a4,0x2
     ce4:	f8c70713          	addi	a4,a4,-116 # 2c6c <uxTopReadyPriority>
     ce8:	00072683          	lw	a3,0(a4)
     cec:	02c7a603          	lw	a2,44(a5)
     cf0:	00100793          	li	a5,1
     cf4:	00c797b3          	sll	a5,a5,a2
     cf8:	fff7c793          	not	a5,a5
     cfc:	00d7f7b3          	and	a5,a5,a3
     d00:	00f72023          	sw	a5,0(a4)
     d04:	fff00793          	li	a5,-1
     d08:	08f40263          	beq	s0,a5,d8c <prvAddCurrentTaskToDelayedList+0xf8>
     d0c:	0004a783          	lw	a5,0(s1)
     d10:	00890433          	add	s0,s2,s0
     d14:	0087a223          	sw	s0,4(a5)
     d18:	05246463          	bltu	s0,s2,d60 <prvAddCurrentTaskToDelayedList+0xcc>
     d1c:	00002517          	auipc	a0,0x2
     d20:	f3852503          	lw	a0,-200(a0) # 2c54 <pxDelayedTaskList>
     d24:	0004a583          	lw	a1,0(s1)
     d28:	00458593          	addi	a1,a1,4
     d2c:	ec9ff0ef          	jal	ra,bf4 <vListInsert>
     d30:	00002797          	auipc	a5,0x2
     d34:	f4478793          	addi	a5,a5,-188 # 2c74 <xNextTaskUnblockTime>
     d38:	0007a703          	lw	a4,0(a5)
     d3c:	00e47463          	bgeu	s0,a4,d44 <prvAddCurrentTaskToDelayedList+0xb0>
     d40:	0087a023          	sw	s0,0(a5)
     d44:	01c12083          	lw	ra,28(sp)
     d48:	01812403          	lw	s0,24(sp)
     d4c:	01412483          	lw	s1,20(sp)
     d50:	01012903          	lw	s2,16(sp)
     d54:	00c12983          	lw	s3,12(sp)
     d58:	02010113          	addi	sp,sp,32
     d5c:	00008067          	ret
     d60:	01812403          	lw	s0,24(sp)
     d64:	00002517          	auipc	a0,0x2
     d68:	ef452503          	lw	a0,-268(a0) # 2c58 <pxOverflowDelayedTaskList>
     d6c:	0004a583          	lw	a1,0(s1)
     d70:	01c12083          	lw	ra,28(sp)
     d74:	01412483          	lw	s1,20(sp)
     d78:	01012903          	lw	s2,16(sp)
     d7c:	00c12983          	lw	s3,12(sp)
     d80:	00458593          	addi	a1,a1,4
     d84:	02010113          	addi	sp,sp,32
     d88:	e6dff06f          	j	bf4 <vListInsert>
     d8c:	f80980e3          	beqz	s3,d0c <prvAddCurrentTaskToDelayedList+0x78>
     d90:	0004a583          	lw	a1,0(s1)
     d94:	01812403          	lw	s0,24(sp)
     d98:	01c12083          	lw	ra,28(sp)
     d9c:	01412483          	lw	s1,20(sp)
     da0:	01012903          	lw	s2,16(sp)
     da4:	00c12983          	lw	s3,12(sp)
     da8:	00014517          	auipc	a0,0x14
     dac:	00050513          	mv	a0,a0
     db0:	00458593          	addi	a1,a1,4
     db4:	02010113          	addi	sp,sp,32
     db8:	e0dff06f          	j	bc4 <vListInsertEnd>

00000dbc <prvIdleTask>:
     dbc:	fe010113          	addi	sp,sp,-32
     dc0:	00912a23          	sw	s1,20(sp)
     dc4:	01212823          	sw	s2,16(sp)
     dc8:	01312623          	sw	s3,12(sp)
     dcc:	01412423          	sw	s4,8(sp)
     dd0:	01512223          	sw	s5,4(sp)
     dd4:	00112e23          	sw	ra,28(sp)
     dd8:	00812c23          	sw	s0,24(sp)
     ddc:	00002497          	auipc	s1,0x2
     de0:	e8448493          	addi	s1,s1,-380 # 2c60 <uxDeletedTasksWaitingCleanUp>
     de4:	00002997          	auipc	s3,0x2
     de8:	e9c98993          	addi	s3,s3,-356 # 2c80 <xSchedulerRunning>
     dec:	00002a17          	auipc	s4,0x2
     df0:	e64a0a13          	addi	s4,s4,-412 # 2c50 <pxCurrentTCB>
     df4:	00014a97          	auipc	s5,0x14
     df8:	fc8a8a93          	addi	s5,s5,-56 # 14dbc <xTasksWaitingTermination>
     dfc:	00002917          	auipc	s2,0x2
     e00:	e6090913          	addi	s2,s2,-416 # 2c5c <uxCurrentNumberOfTasks>
     e04:	0004a783          	lw	a5,0(s1)
     e08:	fe078ee3          	beqz	a5,e04 <prvIdleTask+0x48>
     e0c:	30047073          	csrci	mstatus,8
     e10:	0009a783          	lw	a5,0(s3)
     e14:	00078c63          	beqz	a5,e2c <prvIdleTask+0x70>
     e18:	000a2703          	lw	a4,0(s4)
     e1c:	000a2783          	lw	a5,0(s4)
     e20:	04472783          	lw	a5,68(a4)
     e24:	00178793          	addi	a5,a5,1
     e28:	04f72223          	sw	a5,68(a4)
     e2c:	00caa783          	lw	a5,12(s5)
     e30:	00c7a403          	lw	s0,12(a5)
     e34:	00440513          	addi	a0,s0,4
     e38:	e0dff0ef          	jal	ra,c44 <uxListRemove>
     e3c:	00092783          	lw	a5,0(s2)
     e40:	fff78793          	addi	a5,a5,-1
     e44:	00f92023          	sw	a5,0(s2)
     e48:	0004a783          	lw	a5,0(s1)
     e4c:	fff78793          	addi	a5,a5,-1
     e50:	00f4a023          	sw	a5,0(s1)
     e54:	0009a783          	lw	a5,0(s3)
     e58:	02078863          	beqz	a5,e88 <prvIdleTask+0xcc>
     e5c:	000a2783          	lw	a5,0(s4)
     e60:	0447a783          	lw	a5,68(a5)
     e64:	02078263          	beqz	a5,e88 <prvIdleTask+0xcc>
     e68:	000a2703          	lw	a4,0(s4)
     e6c:	000a2683          	lw	a3,0(s4)
     e70:	04472783          	lw	a5,68(a4)
     e74:	fff78793          	addi	a5,a5,-1
     e78:	04f72223          	sw	a5,68(a4)
     e7c:	0446a783          	lw	a5,68(a3)
     e80:	00079463          	bnez	a5,e88 <prvIdleTask+0xcc>
     e84:	30046073          	csrsi	mstatus,8
     e88:	03042503          	lw	a0,48(s0)
     e8c:	c10ff0ef          	jal	ra,29c <vPortFree>
     e90:	00040513          	mv	a0,s0
     e94:	c08ff0ef          	jal	ra,29c <vPortFree>
     e98:	0004a783          	lw	a5,0(s1)
     e9c:	f60798e3          	bnez	a5,e0c <prvIdleTask+0x50>
     ea0:	f65ff06f          	j	e04 <prvIdleTask+0x48>

00000ea4 <vTaskSuspendAll>:
     ea4:	00002717          	auipc	a4,0x2
     ea8:	dc070713          	addi	a4,a4,-576 # 2c64 <uxSchedulerSuspended>
     eac:	00072783          	lw	a5,0(a4)
     eb0:	00178793          	addi	a5,a5,1
     eb4:	00f72023          	sw	a5,0(a4)
     eb8:	00008067          	ret

00000ebc <xTaskGetTickCount>:
     ebc:	00002517          	auipc	a0,0x2
     ec0:	dc852503          	lw	a0,-568(a0) # 2c84 <xTickCount>
     ec4:	00008067          	ret

00000ec8 <xTaskIncrementTick>:
     ec8:	fd010113          	addi	sp,sp,-48
     ecc:	02112623          	sw	ra,44(sp)
     ed0:	02812423          	sw	s0,40(sp)
     ed4:	02912223          	sw	s1,36(sp)
     ed8:	03212023          	sw	s2,32(sp)
     edc:	01312e23          	sw	s3,28(sp)
     ee0:	01412c23          	sw	s4,24(sp)
     ee4:	01512a23          	sw	s5,20(sp)
     ee8:	01612823          	sw	s6,16(sp)
     eec:	01712623          	sw	s7,12(sp)
     ef0:	01812423          	sw	s8,8(sp)
     ef4:	01912223          	sw	s9,4(sp)
     ef8:	00002797          	auipc	a5,0x2
     efc:	d6c7a783          	lw	a5,-660(a5) # 2c64 <uxSchedulerSuspended>
     f00:	1c079663          	bnez	a5,10cc <xTaskIncrementTick+0x204>
     f04:	00002797          	auipc	a5,0x2
     f08:	d8078793          	addi	a5,a5,-640 # 2c84 <xTickCount>
     f0c:	0007a483          	lw	s1,0(a5)
     f10:	00002c17          	auipc	s8,0x2
     f14:	d64c0c13          	addi	s8,s8,-668 # 2c74 <xNextTaskUnblockTime>
     f18:	00148493          	addi	s1,s1,1
     f1c:	0097a023          	sw	s1,0(a5)
     f20:	14048c63          	beqz	s1,1078 <xTaskIncrementTick+0x1b0>
     f24:	000c2783          	lw	a5,0(s8)
     f28:	0cf4e063          	bltu	s1,a5,fe8 <xTaskIncrementTick+0x120>
     f2c:	00002917          	auipc	s2,0x2
     f30:	d2890913          	addi	s2,s2,-728 # 2c54 <pxDelayedTaskList>
     f34:	00092783          	lw	a5,0(s2)
     f38:	00000b13          	li	s6,0
     f3c:	00014a17          	auipc	s4,0x14
     f40:	da4a0a13          	addi	s4,s4,-604 # 14ce0 <pxReadyTasksLists>
     f44:	0007a783          	lw	a5,0(a5)
     f48:	00002a97          	auipc	s5,0x2
     f4c:	d08a8a93          	addi	s5,s5,-760 # 2c50 <pxCurrentTCB>
     f50:	1c078063          	beqz	a5,1110 <xTaskIncrementTick+0x248>
     f54:	00002997          	auipc	s3,0x2
     f58:	d1898993          	addi	s3,s3,-744 # 2c6c <uxTopReadyPriority>
     f5c:	00100b93          	li	s7,1
     f60:	0640006f          	j	fc4 <xTaskIncrementTick+0xfc>
     f64:	ce1ff0ef          	jal	ra,c44 <uxListRemove>
     f68:	02842783          	lw	a5,40(s0)
     f6c:	01840513          	addi	a0,s0,24
     f70:	00078463          	beqz	a5,f78 <xTaskIncrementTick+0xb0>
     f74:	cd1ff0ef          	jal	ra,c44 <uxListRemove>
     f78:	02c42783          	lw	a5,44(s0)
     f7c:	0009a703          	lw	a4,0(s3)
     f80:	000c8593          	mv	a1,s9
     f84:	00279513          	slli	a0,a5,0x2
     f88:	00f50533          	add	a0,a0,a5
     f8c:	00251513          	slli	a0,a0,0x2
     f90:	00fb97b3          	sll	a5,s7,a5
     f94:	00e7e7b3          	or	a5,a5,a4
     f98:	00aa0533          	add	a0,s4,a0
     f9c:	00f9a023          	sw	a5,0(s3)
     fa0:	c25ff0ef          	jal	ra,bc4 <vListInsertEnd>
     fa4:	000aa783          	lw	a5,0(s5)
     fa8:	02c42703          	lw	a4,44(s0)
     fac:	02c7a783          	lw	a5,44(a5)
     fb0:	00f76463          	bltu	a4,a5,fb8 <xTaskIncrementTick+0xf0>
     fb4:	00100b13          	li	s6,1
     fb8:	00092783          	lw	a5,0(s2)
     fbc:	0007a783          	lw	a5,0(a5)
     fc0:	14078863          	beqz	a5,1110 <xTaskIncrementTick+0x248>
     fc4:	00092783          	lw	a5,0(s2)
     fc8:	00c7a783          	lw	a5,12(a5)
     fcc:	00c7a403          	lw	s0,12(a5)
     fd0:	00442783          	lw	a5,4(s0)
     fd4:	00440c93          	addi	s9,s0,4
     fd8:	000c8513          	mv	a0,s9
     fdc:	f8f4f4e3          	bgeu	s1,a5,f64 <xTaskIncrementTick+0x9c>
     fe0:	00fc2023          	sw	a5,0(s8)
     fe4:	0180006f          	j	ffc <xTaskIncrementTick+0x134>
     fe8:	00000b13          	li	s6,0
     fec:	00014a17          	auipc	s4,0x14
     ff0:	cf4a0a13          	addi	s4,s4,-780 # 14ce0 <pxReadyTasksLists>
     ff4:	00002a97          	auipc	s5,0x2
     ff8:	c5ca8a93          	addi	s5,s5,-932 # 2c50 <pxCurrentTCB>
     ffc:	000aa783          	lw	a5,0(s5)
    1000:	00100693          	li	a3,1
    1004:	02c7a703          	lw	a4,44(a5)
    1008:	00271793          	slli	a5,a4,0x2
    100c:	00e787b3          	add	a5,a5,a4
    1010:	00279793          	slli	a5,a5,0x2
    1014:	00fa0a33          	add	s4,s4,a5
    1018:	000a2783          	lw	a5,0(s4)
    101c:	00f6f463          	bgeu	a3,a5,1024 <xTaskIncrementTick+0x15c>
    1020:	00100b13          	li	s6,1
    1024:	00002797          	auipc	a5,0x2
    1028:	c587a783          	lw	a5,-936(a5) # 2c7c <xPendedTicks>
    102c:	0c078063          	beqz	a5,10ec <xTaskIncrementTick+0x224>
    1030:	00002797          	auipc	a5,0x2
    1034:	c587a783          	lw	a5,-936(a5) # 2c88 <xYieldPending>
    1038:	00078463          	beqz	a5,1040 <xTaskIncrementTick+0x178>
    103c:	00100b13          	li	s6,1
    1040:	02c12083          	lw	ra,44(sp)
    1044:	02812403          	lw	s0,40(sp)
    1048:	02412483          	lw	s1,36(sp)
    104c:	02012903          	lw	s2,32(sp)
    1050:	01c12983          	lw	s3,28(sp)
    1054:	01812a03          	lw	s4,24(sp)
    1058:	01412a83          	lw	s5,20(sp)
    105c:	00c12b83          	lw	s7,12(sp)
    1060:	00812c03          	lw	s8,8(sp)
    1064:	00412c83          	lw	s9,4(sp)
    1068:	000b0513          	mv	a0,s6
    106c:	01012b03          	lw	s6,16(sp)
    1070:	03010113          	addi	sp,sp,48
    1074:	00008067          	ret
    1078:	00002797          	auipc	a5,0x2
    107c:	bdc78793          	addi	a5,a5,-1060 # 2c54 <pxDelayedTaskList>
    1080:	00002717          	auipc	a4,0x2
    1084:	bd870713          	addi	a4,a4,-1064 # 2c58 <pxOverflowDelayedTaskList>
    1088:	0007a603          	lw	a2,0(a5)
    108c:	00072583          	lw	a1,0(a4)
    1090:	00002697          	auipc	a3,0x2
    1094:	be868693          	addi	a3,a3,-1048 # 2c78 <xNumOfOverflows>
    1098:	00b7a023          	sw	a1,0(a5)
    109c:	00c72023          	sw	a2,0(a4)
    10a0:	0006a703          	lw	a4,0(a3)
    10a4:	00170713          	addi	a4,a4,1
    10a8:	00e6a023          	sw	a4,0(a3)
    10ac:	0007a703          	lw	a4,0(a5)
    10b0:	00072703          	lw	a4,0(a4)
    10b4:	04071063          	bnez	a4,10f4 <xTaskIncrementTick+0x22c>
    10b8:	fff00793          	li	a5,-1
    10bc:	00fc2023          	sw	a5,0(s8)
    10c0:	000c2783          	lw	a5,0(s8)
    10c4:	f2f4e2e3          	bltu	s1,a5,fe8 <xTaskIncrementTick+0x120>
    10c8:	e65ff06f          	j	f2c <xTaskIncrementTick+0x64>
    10cc:	00002717          	auipc	a4,0x2
    10d0:	bb070713          	addi	a4,a4,-1104 # 2c7c <xPendedTicks>
    10d4:	00072783          	lw	a5,0(a4)
    10d8:	00000b13          	li	s6,0
    10dc:	00178793          	addi	a5,a5,1
    10e0:	00f72023          	sw	a5,0(a4)
    10e4:	318010ef          	jal	ra,23fc <vApplicationTickHook>
    10e8:	f59ff06f          	j	1040 <xTaskIncrementTick+0x178>
    10ec:	310010ef          	jal	ra,23fc <vApplicationTickHook>
    10f0:	f41ff06f          	j	1030 <xTaskIncrementTick+0x168>
    10f4:	0007a783          	lw	a5,0(a5)
    10f8:	00c7a783          	lw	a5,12(a5)
    10fc:	0007a783          	lw	a5,0(a5)
    1100:	00fc2023          	sw	a5,0(s8)
    1104:	000c2783          	lw	a5,0(s8)
    1108:	eef4e0e3          	bltu	s1,a5,fe8 <xTaskIncrementTick+0x120>
    110c:	e21ff06f          	j	f2c <xTaskIncrementTick+0x64>
    1110:	fff00793          	li	a5,-1
    1114:	00fc2023          	sw	a5,0(s8)
    1118:	ee5ff06f          	j	ffc <xTaskIncrementTick+0x134>

0000111c <vTaskSwitchContext>:
    111c:	00002797          	auipc	a5,0x2
    1120:	b487a783          	lw	a5,-1208(a5) # 2c64 <uxSchedulerSuspended>
    1124:	00078a63          	beqz	a5,1138 <vTaskSwitchContext+0x1c>
    1128:	00100793          	li	a5,1
    112c:	00002717          	auipc	a4,0x2
    1130:	b4f72e23          	sw	a5,-1188(a4) # 2c88 <xYieldPending>
    1134:	00008067          	ret
    1138:	ff010113          	addi	sp,sp,-16
    113c:	00002797          	auipc	a5,0x2
    1140:	b407a623          	sw	zero,-1204(a5) # 2c88 <xYieldPending>
    1144:	00812423          	sw	s0,8(sp)
    1148:	00002417          	auipc	s0,0x2
    114c:	b0840413          	addi	s0,s0,-1272 # 2c50 <pxCurrentTCB>
    1150:	00042703          	lw	a4,0(s0)
    1154:	a5a5a7b7          	lui	a5,0xa5a5a
    1158:	00112623          	sw	ra,12(sp)
    115c:	03072703          	lw	a4,48(a4)
    1160:	5a578793          	addi	a5,a5,1445 # a5a5a5a5 <_stack_top+0xa5a45325>
    1164:	00072683          	lw	a3,0(a4)
    1168:	00f69663          	bne	a3,a5,1174 <vTaskSwitchContext+0x58>
    116c:	00472783          	lw	a5,4(a4)
    1170:	06d78863          	beq	a5,a3,11e0 <vTaskSwitchContext+0xc4>
    1174:	00042503          	lw	a0,0(s0)
    1178:	00042583          	lw	a1,0(s0)
    117c:	03458593          	addi	a1,a1,52
    1180:	25c010ef          	jal	ra,23dc <vApplicationStackOverflowHook>
    1184:	00002517          	auipc	a0,0x2
    1188:	ae852503          	lw	a0,-1304(a0) # 2c6c <uxTopReadyPriority>
    118c:	5f8010ef          	jal	ra,2784 <__clzsi2>
    1190:	01f00793          	li	a5,31
    1194:	40a787b3          	sub	a5,a5,a0
    1198:	00279513          	slli	a0,a5,0x2
    119c:	00f50533          	add	a0,a0,a5
    11a0:	00251513          	slli	a0,a0,0x2
    11a4:	00014797          	auipc	a5,0x14
    11a8:	b3c78793          	addi	a5,a5,-1220 # 14ce0 <pxReadyTasksLists>
    11ac:	00a786b3          	add	a3,a5,a0
    11b0:	0046a703          	lw	a4,4(a3)
    11b4:	00850513          	addi	a0,a0,8
    11b8:	00a787b3          	add	a5,a5,a0
    11bc:	00472703          	lw	a4,4(a4)
    11c0:	00e6a223          	sw	a4,4(a3)
    11c4:	02f70863          	beq	a4,a5,11f4 <vTaskSwitchContext+0xd8>
    11c8:	00c72783          	lw	a5,12(a4)
    11cc:	00c12083          	lw	ra,12(sp)
    11d0:	00f42023          	sw	a5,0(s0)
    11d4:	00812403          	lw	s0,8(sp)
    11d8:	01010113          	addi	sp,sp,16
    11dc:	00008067          	ret
    11e0:	00872683          	lw	a3,8(a4)
    11e4:	f8f698e3          	bne	a3,a5,1174 <vTaskSwitchContext+0x58>
    11e8:	00c72783          	lw	a5,12(a4)
    11ec:	f8d794e3          	bne	a5,a3,1174 <vTaskSwitchContext+0x58>
    11f0:	f95ff06f          	j	1184 <vTaskSwitchContext+0x68>
    11f4:	00472703          	lw	a4,4(a4)
    11f8:	00c12083          	lw	ra,12(sp)
    11fc:	00c72783          	lw	a5,12(a4)
    1200:	00e6a223          	sw	a4,4(a3)
    1204:	00f42023          	sw	a5,0(s0)
    1208:	00812403          	lw	s0,8(sp)
    120c:	01010113          	addi	sp,sp,16
    1210:	00008067          	ret

00001214 <vTaskPlaceOnEventList>:
    1214:	ff010113          	addi	sp,sp,-16
    1218:	00002797          	auipc	a5,0x2
    121c:	a387a783          	lw	a5,-1480(a5) # 2c50 <pxCurrentTCB>
    1220:	00812423          	sw	s0,8(sp)
    1224:	00058413          	mv	s0,a1
    1228:	01878593          	addi	a1,a5,24
    122c:	00112623          	sw	ra,12(sp)
    1230:	9c5ff0ef          	jal	ra,bf4 <vListInsert>
    1234:	00040513          	mv	a0,s0
    1238:	00812403          	lw	s0,8(sp)
    123c:	00c12083          	lw	ra,12(sp)
    1240:	00100593          	li	a1,1
    1244:	01010113          	addi	sp,sp,16
    1248:	a4dff06f          	j	c94 <prvAddCurrentTaskToDelayedList>

0000124c <vTaskPlaceOnEventListRestricted>:
    124c:	ff010113          	addi	sp,sp,-16
    1250:	00002797          	auipc	a5,0x2
    1254:	a007a783          	lw	a5,-1536(a5) # 2c50 <pxCurrentTCB>
    1258:	00812423          	sw	s0,8(sp)
    125c:	00912223          	sw	s1,4(sp)
    1260:	00060413          	mv	s0,a2
    1264:	00058493          	mv	s1,a1
    1268:	01878593          	addi	a1,a5,24
    126c:	00112623          	sw	ra,12(sp)
    1270:	955ff0ef          	jal	ra,bc4 <vListInsertEnd>
    1274:	00040463          	beqz	s0,127c <vTaskPlaceOnEventListRestricted+0x30>
    1278:	fff00493          	li	s1,-1
    127c:	00040593          	mv	a1,s0
    1280:	00812403          	lw	s0,8(sp)
    1284:	00c12083          	lw	ra,12(sp)
    1288:	00048513          	mv	a0,s1
    128c:	00412483          	lw	s1,4(sp)
    1290:	01010113          	addi	sp,sp,16
    1294:	a01ff06f          	j	c94 <prvAddCurrentTaskToDelayedList>

00001298 <xTaskRemoveFromEventList>:
    1298:	00c52783          	lw	a5,12(a0)
    129c:	ff010113          	addi	sp,sp,-16
    12a0:	00812423          	sw	s0,8(sp)
    12a4:	00c7a403          	lw	s0,12(a5)
    12a8:	00912223          	sw	s1,4(sp)
    12ac:	00112623          	sw	ra,12(sp)
    12b0:	01840493          	addi	s1,s0,24
    12b4:	00048513          	mv	a0,s1
    12b8:	98dff0ef          	jal	ra,c44 <uxListRemove>
    12bc:	00002797          	auipc	a5,0x2
    12c0:	9a87a783          	lw	a5,-1624(a5) # 2c64 <uxSchedulerSuspended>
    12c4:	08079663          	bnez	a5,1350 <xTaskRemoveFromEventList+0xb8>
    12c8:	00440493          	addi	s1,s0,4
    12cc:	00048513          	mv	a0,s1
    12d0:	975ff0ef          	jal	ra,c44 <uxListRemove>
    12d4:	02c42683          	lw	a3,44(s0)
    12d8:	00002617          	auipc	a2,0x2
    12dc:	99460613          	addi	a2,a2,-1644 # 2c6c <uxTopReadyPriority>
    12e0:	00062583          	lw	a1,0(a2)
    12e4:	00269713          	slli	a4,a3,0x2
    12e8:	00d70733          	add	a4,a4,a3
    12ec:	00100793          	li	a5,1
    12f0:	00d797b3          	sll	a5,a5,a3
    12f4:	00271713          	slli	a4,a4,0x2
    12f8:	00014517          	auipc	a0,0x14
    12fc:	9e850513          	addi	a0,a0,-1560 # 14ce0 <pxReadyTasksLists>
    1300:	00b7e7b3          	or	a5,a5,a1
    1304:	00e50533          	add	a0,a0,a4
    1308:	00048593          	mv	a1,s1
    130c:	00f62023          	sw	a5,0(a2)
    1310:	8b5ff0ef          	jal	ra,bc4 <vListInsertEnd>
    1314:	00002797          	auipc	a5,0x2
    1318:	93c7a783          	lw	a5,-1732(a5) # 2c50 <pxCurrentTCB>
    131c:	02c42703          	lw	a4,44(s0)
    1320:	02c7a783          	lw	a5,44(a5)
    1324:	00000513          	li	a0,0
    1328:	00e7fa63          	bgeu	a5,a4,133c <xTaskRemoveFromEventList+0xa4>
    132c:	00100793          	li	a5,1
    1330:	00002717          	auipc	a4,0x2
    1334:	94f72c23          	sw	a5,-1704(a4) # 2c88 <xYieldPending>
    1338:	00100513          	li	a0,1
    133c:	00c12083          	lw	ra,12(sp)
    1340:	00812403          	lw	s0,8(sp)
    1344:	00412483          	lw	s1,4(sp)
    1348:	01010113          	addi	sp,sp,16
    134c:	00008067          	ret
    1350:	00048593          	mv	a1,s1
    1354:	00014517          	auipc	a0,0x14
    1358:	a4050513          	addi	a0,a0,-1472 # 14d94 <xPendingReadyList>
    135c:	869ff0ef          	jal	ra,bc4 <vListInsertEnd>
    1360:	fb5ff06f          	j	1314 <xTaskRemoveFromEventList+0x7c>

00001364 <vTaskInternalSetTimeOutState>:
    1364:	00002717          	auipc	a4,0x2
    1368:	91472703          	lw	a4,-1772(a4) # 2c78 <xNumOfOverflows>
    136c:	00002797          	auipc	a5,0x2
    1370:	9187a783          	lw	a5,-1768(a5) # 2c84 <xTickCount>
    1374:	00e52023          	sw	a4,0(a0)
    1378:	00f52223          	sw	a5,4(a0)
    137c:	00008067          	ret

00001380 <vTaskMissedYield>:
    1380:	00100793          	li	a5,1
    1384:	00002717          	auipc	a4,0x2
    1388:	90f72223          	sw	a5,-1788(a4) # 2c88 <xYieldPending>
    138c:	00008067          	ret

00001390 <xTaskGetSchedulerState>:
    1390:	00002797          	auipc	a5,0x2
    1394:	8f07a783          	lw	a5,-1808(a5) # 2c80 <xSchedulerRunning>
    1398:	00100513          	li	a0,1
    139c:	00078a63          	beqz	a5,13b0 <xTaskGetSchedulerState+0x20>
    13a0:	00002517          	auipc	a0,0x2
    13a4:	8c452503          	lw	a0,-1852(a0) # 2c64 <uxSchedulerSuspended>
    13a8:	00153513          	seqz	a0,a0
    13ac:	00151513          	slli	a0,a0,0x1
    13b0:	00008067          	ret

000013b4 <xTaskPriorityDisinherit>:
    13b4:	04050663          	beqz	a0,1400 <xTaskPriorityDisinherit+0x4c>
    13b8:	04c52783          	lw	a5,76(a0)
    13bc:	ff010113          	addi	sp,sp,-16
    13c0:	02c52683          	lw	a3,44(a0)
    13c4:	04852703          	lw	a4,72(a0)
    13c8:	00812423          	sw	s0,8(sp)
    13cc:	00112623          	sw	ra,12(sp)
    13d0:	00912223          	sw	s1,4(sp)
    13d4:	fff78793          	addi	a5,a5,-1
    13d8:	04f52623          	sw	a5,76(a0)
    13dc:	00050413          	mv	s0,a0
    13e0:	00e68463          	beq	a3,a4,13e8 <xTaskPriorityDisinherit+0x34>
    13e4:	02078263          	beqz	a5,1408 <xTaskPriorityDisinherit+0x54>
    13e8:	00c12083          	lw	ra,12(sp)
    13ec:	00812403          	lw	s0,8(sp)
    13f0:	00412483          	lw	s1,4(sp)
    13f4:	00000513          	li	a0,0
    13f8:	01010113          	addi	sp,sp,16
    13fc:	00008067          	ret
    1400:	00000513          	li	a0,0
    1404:	00008067          	ret
    1408:	00450493          	addi	s1,a0,4
    140c:	00048513          	mv	a0,s1
    1410:	835ff0ef          	jal	ra,c44 <uxListRemove>
    1414:	00002617          	auipc	a2,0x2
    1418:	85860613          	addi	a2,a2,-1960 # 2c6c <uxTopReadyPriority>
    141c:	02051063          	bnez	a0,143c <xTaskPriorityDisinherit+0x88>
    1420:	02c42683          	lw	a3,44(s0)
    1424:	00062703          	lw	a4,0(a2)
    1428:	00100793          	li	a5,1
    142c:	00d797b3          	sll	a5,a5,a3
    1430:	fff7c793          	not	a5,a5
    1434:	00e7f7b3          	and	a5,a5,a4
    1438:	00f62023          	sw	a5,0(a2)
    143c:	04842683          	lw	a3,72(s0)
    1440:	00062583          	lw	a1,0(a2)
    1444:	00700513          	li	a0,7
    1448:	00269713          	slli	a4,a3,0x2
    144c:	40d50533          	sub	a0,a0,a3
    1450:	00d70733          	add	a4,a4,a3
    1454:	00100793          	li	a5,1
    1458:	00a42c23          	sw	a0,24(s0)
    145c:	00d797b3          	sll	a5,a5,a3
    1460:	00271713          	slli	a4,a4,0x2
    1464:	00014517          	auipc	a0,0x14
    1468:	87c50513          	addi	a0,a0,-1924 # 14ce0 <pxReadyTasksLists>
    146c:	00b7e7b3          	or	a5,a5,a1
    1470:	02d42623          	sw	a3,44(s0)
    1474:	00048593          	mv	a1,s1
    1478:	00e50533          	add	a0,a0,a4
    147c:	00f62023          	sw	a5,0(a2)
    1480:	f44ff0ef          	jal	ra,bc4 <vListInsertEnd>
    1484:	00c12083          	lw	ra,12(sp)
    1488:	00812403          	lw	s0,8(sp)
    148c:	00412483          	lw	s1,4(sp)
    1490:	00100513          	li	a0,1
    1494:	01010113          	addi	sp,sp,16
    1498:	00008067          	ret

0000149c <vTaskEnterCritical>:
    149c:	30047073          	csrci	mstatus,8
    14a0:	00001797          	auipc	a5,0x1
    14a4:	7e07a783          	lw	a5,2016(a5) # 2c80 <xSchedulerRunning>
    14a8:	02078063          	beqz	a5,14c8 <vTaskEnterCritical+0x2c>
    14ac:	00001797          	auipc	a5,0x1
    14b0:	7a478793          	addi	a5,a5,1956 # 2c50 <pxCurrentTCB>
    14b4:	0007a703          	lw	a4,0(a5)
    14b8:	0007a783          	lw	a5,0(a5)
    14bc:	04472783          	lw	a5,68(a4)
    14c0:	00178793          	addi	a5,a5,1
    14c4:	04f72223          	sw	a5,68(a4)
    14c8:	00008067          	ret

000014cc <vTaskExitCritical>:
    14cc:	00001797          	auipc	a5,0x1
    14d0:	7b47a783          	lw	a5,1972(a5) # 2c80 <xSchedulerRunning>
    14d4:	02078c63          	beqz	a5,150c <vTaskExitCritical+0x40>
    14d8:	00001797          	auipc	a5,0x1
    14dc:	77878793          	addi	a5,a5,1912 # 2c50 <pxCurrentTCB>
    14e0:	0007a703          	lw	a4,0(a5)
    14e4:	04472703          	lw	a4,68(a4)
    14e8:	02070263          	beqz	a4,150c <vTaskExitCritical+0x40>
    14ec:	0007a703          	lw	a4,0(a5)
    14f0:	0007a683          	lw	a3,0(a5)
    14f4:	04472783          	lw	a5,68(a4)
    14f8:	fff78793          	addi	a5,a5,-1
    14fc:	04f72223          	sw	a5,68(a4)
    1500:	0446a783          	lw	a5,68(a3)
    1504:	00079463          	bnez	a5,150c <vTaskExitCritical+0x40>
    1508:	30046073          	csrsi	mstatus,8
    150c:	00008067          	ret

00001510 <xTaskCreate>:
    1510:	fd010113          	addi	sp,sp,-48
    1514:	02912223          	sw	s1,36(sp)
    1518:	00261493          	slli	s1,a2,0x2
    151c:	01312e23          	sw	s3,28(sp)
    1520:	00050993          	mv	s3,a0
    1524:	00048513          	mv	a0,s1
    1528:	01412c23          	sw	s4,24(sp)
    152c:	01512a23          	sw	s5,20(sp)
    1530:	01612823          	sw	s6,16(sp)
    1534:	01712623          	sw	s7,12(sp)
    1538:	02112623          	sw	ra,44(sp)
    153c:	02812423          	sw	s0,40(sp)
    1540:	03212023          	sw	s2,32(sp)
    1544:	01812423          	sw	s8,8(sp)
    1548:	00058b93          	mv	s7,a1
    154c:	00068a13          	mv	s4,a3
    1550:	00070b13          	mv	s6,a4
    1554:	00078a93          	mv	s5,a5
    1558:	be9fe0ef          	jal	ra,140 <pvPortMalloc>
    155c:	1c050a63          	beqz	a0,1730 <xTaskCreate+0x220>
    1560:	00050913          	mv	s2,a0
    1564:	05800513          	li	a0,88
    1568:	bd9fe0ef          	jal	ra,140 <pvPortMalloc>
    156c:	00050413          	mv	s0,a0
    1570:	1e050463          	beqz	a0,1758 <xTaskCreate+0x248>
    1574:	03252823          	sw	s2,48(a0)
    1578:	00048613          	mv	a2,s1
    157c:	0a500593          	li	a1,165
    1580:	00090513          	mv	a0,s2
    1584:	398010ef          	jal	ra,291c <memset>
    1588:	03042c03          	lw	s8,48(s0)
    158c:	1e0b8e63          	beqz	s7,1788 <xTaskCreate+0x278>
    1590:	000b8593          	mv	a1,s7
    1594:	03440813          	addi	a6,s0,52
    1598:	010b8793          	addi	a5,s7,16
    159c:	0005c883          	lbu	a7,0(a1)
    15a0:	00180813          	addi	a6,a6,1
    15a4:	00158593          	addi	a1,a1,1
    15a8:	ff180fa3          	sb	a7,-1(a6)
    15ac:	00088463          	beqz	a7,15b4 <xTaskCreate+0xa4>
    15b0:	fef596e3          	bne	a1,a5,159c <xTaskCreate+0x8c>
    15b4:	040401a3          	sb	zero,67(s0)
    15b8:	00600793          	li	a5,6
    15bc:	000b0913          	mv	s2,s6
    15c0:	1967e863          	bltu	a5,s6,1750 <xTaskCreate+0x240>
    15c4:	00440b13          	addi	s6,s0,4
    15c8:	000b0513          	mv	a0,s6
    15cc:	03242623          	sw	s2,44(s0)
    15d0:	05242423          	sw	s2,72(s0)
    15d4:	04042623          	sw	zero,76(s0)
    15d8:	de4ff0ef          	jal	ra,bbc <vListInitialiseItem>
    15dc:	01840513          	addi	a0,s0,24
    15e0:	ddcff0ef          	jal	ra,bbc <vListInitialiseItem>
    15e4:	00700793          	li	a5,7
    15e8:	ffc48493          	addi	s1,s1,-4
    15ec:	412787b3          	sub	a5,a5,s2
    15f0:	009c0533          	add	a0,s8,s1
    15f4:	00842823          	sw	s0,16(s0)
    15f8:	00f42c23          	sw	a5,24(s0)
    15fc:	02842223          	sw	s0,36(s0)
    1600:	04042223          	sw	zero,68(s0)
    1604:	04040823          	sb	zero,80(s0)
    1608:	040408a3          	sb	zero,81(s0)
    160c:	04040923          	sb	zero,82(s0)
    1610:	040409a3          	sb	zero,83(s0)
    1614:	04040a23          	sb	zero,84(s0)
    1618:	04040aa3          	sb	zero,85(s0)
    161c:	000a0613          	mv	a2,s4
    1620:	00098593          	mv	a1,s3
    1624:	ff057513          	andi	a0,a0,-16
    1628:	0d8010ef          	jal	ra,2700 <pxPortInitialiseStack>
    162c:	00a42023          	sw	a0,0(s0)
    1630:	000a8463          	beqz	s5,1638 <xTaskCreate+0x128>
    1634:	008aa023          	sw	s0,0(s5)
    1638:	30047073          	csrci	mstatus,8
    163c:	00001917          	auipc	s2,0x1
    1640:	64490913          	addi	s2,s2,1604 # 2c80 <xSchedulerRunning>
    1644:	00092783          	lw	a5,0(s2)
    1648:	00001497          	auipc	s1,0x1
    164c:	60848493          	addi	s1,s1,1544 # 2c50 <pxCurrentTCB>
    1650:	0e079463          	bnez	a5,1738 <xTaskCreate+0x228>
    1654:	00001717          	auipc	a4,0x1
    1658:	60870713          	addi	a4,a4,1544 # 2c5c <uxCurrentNumberOfTasks>
    165c:	00072783          	lw	a5,0(a4)
    1660:	00178793          	addi	a5,a5,1
    1664:	00f72023          	sw	a5,0(a4)
    1668:	0004a783          	lw	a5,0(s1)
    166c:	0e078e63          	beqz	a5,1768 <xTaskCreate+0x258>
    1670:	00092783          	lw	a5,0(s2)
    1674:	02c42703          	lw	a4,44(s0)
    1678:	00013997          	auipc	s3,0x13
    167c:	66898993          	addi	s3,s3,1640 # 14ce0 <pxReadyTasksLists>
    1680:	00079a63          	bnez	a5,1694 <xTaskCreate+0x184>
    1684:	0004a783          	lw	a5,0(s1)
    1688:	02c7a783          	lw	a5,44(a5)
    168c:	00f76463          	bltu	a4,a5,1694 <xTaskCreate+0x184>
    1690:	0084a023          	sw	s0,0(s1)
    1694:	00001817          	auipc	a6,0x1
    1698:	5d480813          	addi	a6,a6,1492 # 2c68 <uxTaskNumber>
    169c:	00001617          	auipc	a2,0x1
    16a0:	5d060613          	addi	a2,a2,1488 # 2c6c <uxTopReadyPriority>
    16a4:	00062583          	lw	a1,0(a2)
    16a8:	00082683          	lw	a3,0(a6)
    16ac:	00271513          	slli	a0,a4,0x2
    16b0:	00e50533          	add	a0,a0,a4
    16b4:	00100793          	li	a5,1
    16b8:	00e797b3          	sll	a5,a5,a4
    16bc:	00251513          	slli	a0,a0,0x2
    16c0:	00b7e7b3          	or	a5,a5,a1
    16c4:	00168713          	addi	a4,a3,1
    16c8:	00a98533          	add	a0,s3,a0
    16cc:	000b0593          	mv	a1,s6
    16d0:	00f62023          	sw	a5,0(a2)
    16d4:	00e82023          	sw	a4,0(a6)
    16d8:	cecff0ef          	jal	ra,bc4 <vListInsertEnd>
    16dc:	df1ff0ef          	jal	ra,14cc <vTaskExitCritical>
    16e0:	00092783          	lw	a5,0(s2)
    16e4:	00100513          	li	a0,1
    16e8:	00078c63          	beqz	a5,1700 <xTaskCreate+0x1f0>
    16ec:	0004a703          	lw	a4,0(s1)
    16f0:	02c42783          	lw	a5,44(s0)
    16f4:	02c72703          	lw	a4,44(a4)
    16f8:	00f77463          	bgeu	a4,a5,1700 <xTaskCreate+0x1f0>
    16fc:	00000073          	ecall
    1700:	02c12083          	lw	ra,44(sp)
    1704:	02812403          	lw	s0,40(sp)
    1708:	02412483          	lw	s1,36(sp)
    170c:	02012903          	lw	s2,32(sp)
    1710:	01c12983          	lw	s3,28(sp)
    1714:	01812a03          	lw	s4,24(sp)
    1718:	01412a83          	lw	s5,20(sp)
    171c:	01012b03          	lw	s6,16(sp)
    1720:	00c12b83          	lw	s7,12(sp)
    1724:	00812c03          	lw	s8,8(sp)
    1728:	03010113          	addi	sp,sp,48
    172c:	00008067          	ret
    1730:	fff00513          	li	a0,-1
    1734:	fcdff06f          	j	1700 <xTaskCreate+0x1f0>
    1738:	0004a703          	lw	a4,0(s1)
    173c:	0004a783          	lw	a5,0(s1)
    1740:	04472783          	lw	a5,68(a4)
    1744:	00178793          	addi	a5,a5,1
    1748:	04f72223          	sw	a5,68(a4)
    174c:	f09ff06f          	j	1654 <xTaskCreate+0x144>
    1750:	00600913          	li	s2,6
    1754:	e71ff06f          	j	15c4 <xTaskCreate+0xb4>
    1758:	00090513          	mv	a0,s2
    175c:	b41fe0ef          	jal	ra,29c <vPortFree>
    1760:	fff00513          	li	a0,-1
    1764:	f9dff06f          	j	1700 <xTaskCreate+0x1f0>
    1768:	0084a023          	sw	s0,0(s1)
    176c:	00072703          	lw	a4,0(a4)
    1770:	00100793          	li	a5,1
    1774:	00f70e63          	beq	a4,a5,1790 <xTaskCreate+0x280>
    1778:	02c42703          	lw	a4,44(s0)
    177c:	00013997          	auipc	s3,0x13
    1780:	56498993          	addi	s3,s3,1380 # 14ce0 <pxReadyTasksLists>
    1784:	f11ff06f          	j	1694 <xTaskCreate+0x184>
    1788:	02040a23          	sb	zero,52(s0)
    178c:	e2dff06f          	j	15b8 <xTaskCreate+0xa8>
    1790:	00013997          	auipc	s3,0x13
    1794:	55098993          	addi	s3,s3,1360 # 14ce0 <pxReadyTasksLists>
    1798:	00098a13          	mv	s4,s3
    179c:	00013a97          	auipc	s5,0x13
    17a0:	5d0a8a93          	addi	s5,s5,1488 # 14d6c <xDelayedTaskList1>
    17a4:	000a0513          	mv	a0,s4
    17a8:	014a0a13          	addi	s4,s4,20
    17ac:	bf0ff0ef          	jal	ra,b9c <vListInitialise>
    17b0:	ff4a9ae3          	bne	s5,s4,17a4 <xTaskCreate+0x294>
    17b4:	00013a97          	auipc	s5,0x13
    17b8:	5b8a8a93          	addi	s5,s5,1464 # 14d6c <xDelayedTaskList1>
    17bc:	000a8513          	mv	a0,s5
    17c0:	bdcff0ef          	jal	ra,b9c <vListInitialise>
    17c4:	00013a17          	auipc	s4,0x13
    17c8:	5bca0a13          	addi	s4,s4,1468 # 14d80 <xDelayedTaskList2>
    17cc:	000a0513          	mv	a0,s4
    17d0:	bccff0ef          	jal	ra,b9c <vListInitialise>
    17d4:	00013517          	auipc	a0,0x13
    17d8:	5c050513          	addi	a0,a0,1472 # 14d94 <xPendingReadyList>
    17dc:	bc0ff0ef          	jal	ra,b9c <vListInitialise>
    17e0:	00013517          	auipc	a0,0x13
    17e4:	5dc50513          	addi	a0,a0,1500 # 14dbc <xTasksWaitingTermination>
    17e8:	bb4ff0ef          	jal	ra,b9c <vListInitialise>
    17ec:	00013517          	auipc	a0,0x13
    17f0:	5bc50513          	addi	a0,a0,1468 # 14da8 <xSuspendedTaskList>
    17f4:	ba8ff0ef          	jal	ra,b9c <vListInitialise>
    17f8:	00001797          	auipc	a5,0x1
    17fc:	4557ae23          	sw	s5,1116(a5) # 2c54 <pxDelayedTaskList>
    1800:	02c42703          	lw	a4,44(s0)
    1804:	00001797          	auipc	a5,0x1
    1808:	4547aa23          	sw	s4,1108(a5) # 2c58 <pxOverflowDelayedTaskList>
    180c:	e89ff06f          	j	1694 <xTaskCreate+0x184>

00001810 <vTaskStartScheduler>:
    1810:	ff010113          	addi	sp,sp,-16
    1814:	00001797          	auipc	a5,0x1
    1818:	45c78793          	addi	a5,a5,1116 # 2c70 <xIdleTaskHandle>
    181c:	00000713          	li	a4,0
    1820:	00000693          	li	a3,0
    1824:	20000613          	li	a2,512
    1828:	00001597          	auipc	a1,0x1
    182c:	25c58593          	addi	a1,a1,604 # 2a84 <_etext>
    1830:	fffff517          	auipc	a0,0xfffff
    1834:	58c50513          	addi	a0,a0,1420 # dbc <prvIdleTask>
    1838:	00112623          	sw	ra,12(sp)
    183c:	00812423          	sw	s0,8(sp)
    1840:	cd1ff0ef          	jal	ra,1510 <xTaskCreate>
    1844:	00100793          	li	a5,1
    1848:	00f50c63          	beq	a0,a5,1860 <vTaskStartScheduler+0x50>
    184c:	00c12083          	lw	ra,12(sp)
    1850:	00812403          	lw	s0,8(sp)
    1854:	8081a783          	lw	a5,-2040(gp) # 2c10 <uxTopUsedPriority>
    1858:	01010113          	addi	sp,sp,16
    185c:	00008067          	ret
    1860:	00050413          	mv	s0,a0
    1864:	3a8000ef          	jal	ra,1c0c <xTimerCreateTimerTask>
    1868:	fe8512e3          	bne	a0,s0,184c <vTaskStartScheduler+0x3c>
    186c:	30047073          	csrci	mstatus,8
    1870:	fff00793          	li	a5,-1
    1874:	00001717          	auipc	a4,0x1
    1878:	40f72023          	sw	a5,1024(a4) # 2c74 <xNextTaskUnblockTime>
    187c:	00001797          	auipc	a5,0x1
    1880:	40a7a223          	sw	a0,1028(a5) # 2c80 <xSchedulerRunning>
    1884:	00001797          	auipc	a5,0x1
    1888:	4007a023          	sw	zero,1024(a5) # 2c84 <xTickCount>
    188c:	afdfe0ef          	jal	ra,388 <xPortStartScheduler>
    1890:	00c12083          	lw	ra,12(sp)
    1894:	00812403          	lw	s0,8(sp)
    1898:	8081a783          	lw	a5,-2040(gp) # 2c10 <uxTopUsedPriority>
    189c:	01010113          	addi	sp,sp,16
    18a0:	00008067          	ret

000018a4 <xTaskResumeAll>:
    18a4:	fd010113          	addi	sp,sp,-48
    18a8:	02112623          	sw	ra,44(sp)
    18ac:	02812423          	sw	s0,40(sp)
    18b0:	02912223          	sw	s1,36(sp)
    18b4:	03212023          	sw	s2,32(sp)
    18b8:	01312e23          	sw	s3,28(sp)
    18bc:	01412c23          	sw	s4,24(sp)
    18c0:	01512a23          	sw	s5,20(sp)
    18c4:	01612823          	sw	s6,16(sp)
    18c8:	01712623          	sw	s7,12(sp)
    18cc:	30047073          	csrci	mstatus,8
    18d0:	00001797          	auipc	a5,0x1
    18d4:	3b07a783          	lw	a5,944(a5) # 2c80 <xSchedulerRunning>
    18d8:	02078063          	beqz	a5,18f8 <xTaskResumeAll+0x54>
    18dc:	00001917          	auipc	s2,0x1
    18e0:	37490913          	addi	s2,s2,884 # 2c50 <pxCurrentTCB>
    18e4:	00092703          	lw	a4,0(s2)
    18e8:	00092783          	lw	a5,0(s2)
    18ec:	04472783          	lw	a5,68(a4)
    18f0:	00178793          	addi	a5,a5,1
    18f4:	04f72223          	sw	a5,68(a4)
    18f8:	00001797          	auipc	a5,0x1
    18fc:	36c78793          	addi	a5,a5,876 # 2c64 <uxSchedulerSuspended>
    1900:	0007a703          	lw	a4,0(a5)
    1904:	fff70713          	addi	a4,a4,-1
    1908:	00e7a023          	sw	a4,0(a5)
    190c:	0007a783          	lw	a5,0(a5)
    1910:	10079263          	bnez	a5,1a14 <xTaskResumeAll+0x170>
    1914:	00001797          	auipc	a5,0x1
    1918:	3487a783          	lw	a5,840(a5) # 2c5c <uxCurrentNumberOfTasks>
    191c:	0e078c63          	beqz	a5,1a14 <xTaskResumeAll+0x170>
    1920:	00013b97          	auipc	s7,0x13
    1924:	474b8b93          	addi	s7,s7,1140 # 14d94 <xPendingReadyList>
    1928:	000ba783          	lw	a5,0(s7)
    192c:	00001a97          	auipc	s5,0x1
    1930:	35ca8a93          	addi	s5,s5,860 # 2c88 <xYieldPending>
    1934:	0a078663          	beqz	a5,19e0 <xTaskResumeAll+0x13c>
    1938:	00001917          	auipc	s2,0x1
    193c:	31890913          	addi	s2,s2,792 # 2c50 <pxCurrentTCB>
    1940:	00001497          	auipc	s1,0x1
    1944:	32c48493          	addi	s1,s1,812 # 2c6c <uxTopReadyPriority>
    1948:	00013a17          	auipc	s4,0x13
    194c:	398a0a13          	addi	s4,s4,920 # 14ce0 <pxReadyTasksLists>
    1950:	00001a97          	auipc	s5,0x1
    1954:	338a8a93          	addi	s5,s5,824 # 2c88 <xYieldPending>
    1958:	00100993          	li	s3,1
    195c:	00cba783          	lw	a5,12(s7)
    1960:	00c7a403          	lw	s0,12(a5)
    1964:	01840513          	addi	a0,s0,24
    1968:	adcff0ef          	jal	ra,c44 <uxListRemove>
    196c:	00440b13          	addi	s6,s0,4
    1970:	000b0513          	mv	a0,s6
    1974:	ad0ff0ef          	jal	ra,c44 <uxListRemove>
    1978:	02c42783          	lw	a5,44(s0)
    197c:	0004a703          	lw	a4,0(s1)
    1980:	000b0593          	mv	a1,s6
    1984:	00279513          	slli	a0,a5,0x2
    1988:	00f50533          	add	a0,a0,a5
    198c:	00251513          	slli	a0,a0,0x2
    1990:	00f997b3          	sll	a5,s3,a5
    1994:	00e7e7b3          	or	a5,a5,a4
    1998:	00aa0533          	add	a0,s4,a0
    199c:	00f4a023          	sw	a5,0(s1)
    19a0:	a24ff0ef          	jal	ra,bc4 <vListInsertEnd>
    19a4:	00092783          	lw	a5,0(s2)
    19a8:	02c42703          	lw	a4,44(s0)
    19ac:	02c7a783          	lw	a5,44(a5)
    19b0:	00f76463          	bltu	a4,a5,19b8 <xTaskResumeAll+0x114>
    19b4:	013aa023          	sw	s3,0(s5)
    19b8:	000ba783          	lw	a5,0(s7)
    19bc:	fa0790e3          	bnez	a5,195c <xTaskResumeAll+0xb8>
    19c0:	00001797          	auipc	a5,0x1
    19c4:	29478793          	addi	a5,a5,660 # 2c54 <pxDelayedTaskList>
    19c8:	0007a703          	lw	a4,0(a5)
    19cc:	00072703          	lw	a4,0(a4)
    19d0:	08071463          	bnez	a4,1a58 <xTaskResumeAll+0x1b4>
    19d4:	fff00793          	li	a5,-1
    19d8:	00001717          	auipc	a4,0x1
    19dc:	28f72e23          	sw	a5,668(a4) # 2c74 <xNextTaskUnblockTime>
    19e0:	00001417          	auipc	s0,0x1
    19e4:	29c42403          	lw	s0,668(s0) # 2c7c <xPendedTicks>
    19e8:	02040263          	beqz	s0,1a0c <xTaskResumeAll+0x168>
    19ec:	00100493          	li	s1,1
    19f0:	cd8ff0ef          	jal	ra,ec8 <xTaskIncrementTick>
    19f4:	fff40413          	addi	s0,s0,-1
    19f8:	00050463          	beqz	a0,1a00 <xTaskResumeAll+0x15c>
    19fc:	009aa023          	sw	s1,0(s5)
    1a00:	fe0418e3          	bnez	s0,19f0 <xTaskResumeAll+0x14c>
    1a04:	00001797          	auipc	a5,0x1
    1a08:	2607ac23          	sw	zero,632(a5) # 2c7c <xPendedTicks>
    1a0c:	000aa783          	lw	a5,0(s5)
    1a10:	02079e63          	bnez	a5,1a4c <xTaskResumeAll+0x1a8>
    1a14:	00000413          	li	s0,0
    1a18:	ab5ff0ef          	jal	ra,14cc <vTaskExitCritical>
    1a1c:	02c12083          	lw	ra,44(sp)
    1a20:	00040513          	mv	a0,s0
    1a24:	02812403          	lw	s0,40(sp)
    1a28:	02412483          	lw	s1,36(sp)
    1a2c:	02012903          	lw	s2,32(sp)
    1a30:	01c12983          	lw	s3,28(sp)
    1a34:	01812a03          	lw	s4,24(sp)
    1a38:	01412a83          	lw	s5,20(sp)
    1a3c:	01012b03          	lw	s6,16(sp)
    1a40:	00c12b83          	lw	s7,12(sp)
    1a44:	03010113          	addi	sp,sp,48
    1a48:	00008067          	ret
    1a4c:	00000073          	ecall
    1a50:	00100413          	li	s0,1
    1a54:	fc5ff06f          	j	1a18 <xTaskResumeAll+0x174>
    1a58:	0007a783          	lw	a5,0(a5)
    1a5c:	00c7a783          	lw	a5,12(a5)
    1a60:	0007a783          	lw	a5,0(a5)
    1a64:	00001717          	auipc	a4,0x1
    1a68:	20f72823          	sw	a5,528(a4) # 2c74 <xNextTaskUnblockTime>
    1a6c:	f75ff06f          	j	19e0 <xTaskResumeAll+0x13c>

00001a70 <xTaskCheckForTimeOut>:
    1a70:	ff010113          	addi	sp,sp,-16
    1a74:	00112623          	sw	ra,12(sp)
    1a78:	00812423          	sw	s0,8(sp)
    1a7c:	00050793          	mv	a5,a0
    1a80:	30047073          	csrci	mstatus,8
    1a84:	00001697          	auipc	a3,0x1
    1a88:	1fc6a683          	lw	a3,508(a3) # 2c80 <xSchedulerRunning>
    1a8c:	00001717          	auipc	a4,0x1
    1a90:	1c470713          	addi	a4,a4,452 # 2c50 <pxCurrentTCB>
    1a94:	00068c63          	beqz	a3,1aac <xTaskCheckForTimeOut+0x3c>
    1a98:	00072603          	lw	a2,0(a4)
    1a9c:	00072683          	lw	a3,0(a4)
    1aa0:	04462683          	lw	a3,68(a2)
    1aa4:	00168693          	addi	a3,a3,1
    1aa8:	04d62223          	sw	a3,68(a2)
    1aac:	00001697          	auipc	a3,0x1
    1ab0:	1d868693          	addi	a3,a3,472 # 2c84 <xTickCount>
    1ab4:	0006a803          	lw	a6,0(a3)
    1ab8:	00072603          	lw	a2,0(a4)
    1abc:	0047a503          	lw	a0,4(a5)
    1ac0:	05564603          	lbu	a2,85(a2)
    1ac4:	02060463          	beqz	a2,1aec <xTaskCheckForTimeOut+0x7c>
    1ac8:	00072783          	lw	a5,0(a4)
    1acc:	00100413          	li	s0,1
    1ad0:	04078aa3          	sb	zero,85(a5)
    1ad4:	9f9ff0ef          	jal	ra,14cc <vTaskExitCritical>
    1ad8:	00c12083          	lw	ra,12(sp)
    1adc:	00040513          	mv	a0,s0
    1ae0:	00812403          	lw	s0,8(sp)
    1ae4:	01010113          	addi	sp,sp,16
    1ae8:	00008067          	ret
    1aec:	0005a703          	lw	a4,0(a1)
    1af0:	fff00613          	li	a2,-1
    1af4:	00000413          	li	s0,0
    1af8:	fcc70ee3          	beq	a4,a2,1ad4 <xTaskCheckForTimeOut+0x64>
    1afc:	00001617          	auipc	a2,0x1
    1b00:	17c60613          	addi	a2,a2,380 # 2c78 <xNumOfOverflows>
    1b04:	00062883          	lw	a7,0(a2)
    1b08:	0007a303          	lw	t1,0(a5)
    1b0c:	03130463          	beq	t1,a7,1b34 <xTaskCheckForTimeOut+0xc4>
    1b10:	02a86263          	bltu	a6,a0,1b34 <xTaskCheckForTimeOut+0xc4>
    1b14:	0005a023          	sw	zero,0(a1)
    1b18:	9b5ff0ef          	jal	ra,14cc <vTaskExitCritical>
    1b1c:	00100413          	li	s0,1
    1b20:	00c12083          	lw	ra,12(sp)
    1b24:	00040513          	mv	a0,s0
    1b28:	00812403          	lw	s0,8(sp)
    1b2c:	01010113          	addi	sp,sp,16
    1b30:	00008067          	ret
    1b34:	40a808b3          	sub	a7,a6,a0
    1b38:	fce8fee3          	bgeu	a7,a4,1b14 <xTaskCheckForTimeOut+0xa4>
    1b3c:	00062603          	lw	a2,0(a2)
    1b40:	41070733          	sub	a4,a4,a6
    1b44:	0006a683          	lw	a3,0(a3)
    1b48:	00a70733          	add	a4,a4,a0
    1b4c:	00e5a023          	sw	a4,0(a1)
    1b50:	00c7a023          	sw	a2,0(a5)
    1b54:	00d7a223          	sw	a3,4(a5)
    1b58:	975ff0ef          	jal	ra,14cc <vTaskExitCritical>
    1b5c:	00000413          	li	s0,0
    1b60:	00c12083          	lw	ra,12(sp)
    1b64:	00040513          	mv	a0,s0
    1b68:	00812403          	lw	s0,8(sp)
    1b6c:	01010113          	addi	sp,sp,16
    1b70:	00008067          	ret

00001b74 <prvCheckForValidListAndQueue>:
    1b74:	ff010113          	addi	sp,sp,-16
    1b78:	00812423          	sw	s0,8(sp)
    1b7c:	00112623          	sw	ra,12(sp)
    1b80:	00912223          	sw	s1,4(sp)
    1b84:	01212023          	sw	s2,0(sp)
    1b88:	00001417          	auipc	s0,0x1
    1b8c:	11040413          	addi	s0,s0,272 # 2c98 <xTimerQueue>
    1b90:	90dff0ef          	jal	ra,149c <vTaskEnterCritical>
    1b94:	00042783          	lw	a5,0(s0)
    1b98:	00078e63          	beqz	a5,1bb4 <prvCheckForValidListAndQueue+0x40>
    1b9c:	00812403          	lw	s0,8(sp)
    1ba0:	00c12083          	lw	ra,12(sp)
    1ba4:	00412483          	lw	s1,4(sp)
    1ba8:	00012903          	lw	s2,0(sp)
    1bac:	01010113          	addi	sp,sp,16
    1bb0:	91dff06f          	j	14cc <vTaskExitCritical>
    1bb4:	00013917          	auipc	s2,0x13
    1bb8:	21c90913          	addi	s2,s2,540 # 14dd0 <xActiveTimerList1>
    1bbc:	00090513          	mv	a0,s2
    1bc0:	fddfe0ef          	jal	ra,b9c <vListInitialise>
    1bc4:	00013497          	auipc	s1,0x13
    1bc8:	22048493          	addi	s1,s1,544 # 14de4 <xActiveTimerList2>
    1bcc:	00048513          	mv	a0,s1
    1bd0:	fcdfe0ef          	jal	ra,b9c <vListInitialise>
    1bd4:	00000613          	li	a2,0
    1bd8:	01000593          	li	a1,16
    1bdc:	00600513          	li	a0,6
    1be0:	00001797          	auipc	a5,0x1
    1be4:	0b27a623          	sw	s2,172(a5) # 2c8c <pxCurrentTimerList>
    1be8:	00001797          	auipc	a5,0x1
    1bec:	0a97a423          	sw	s1,168(a5) # 2c90 <pxOverflowTimerList>
    1bf0:	9f1fe0ef          	jal	ra,5e0 <xQueueGenericCreate>
    1bf4:	00a42023          	sw	a0,0(s0)
    1bf8:	fa0502e3          	beqz	a0,1b9c <prvCheckForValidListAndQueue+0x28>
    1bfc:	00001597          	auipc	a1,0x1
    1c00:	e9058593          	addi	a1,a1,-368 # 2a8c <_etext+0x8>
    1c04:	eb1fe0ef          	jal	ra,ab4 <vQueueAddToRegistry>
    1c08:	f95ff06f          	j	1b9c <prvCheckForValidListAndQueue+0x28>

00001c0c <xTimerCreateTimerTask>:
    1c0c:	ff010113          	addi	sp,sp,-16
    1c10:	00112623          	sw	ra,12(sp)
    1c14:	f61ff0ef          	jal	ra,1b74 <prvCheckForValidListAndQueue>
    1c18:	00001797          	auipc	a5,0x1
    1c1c:	0807a783          	lw	a5,128(a5) # 2c98 <xTimerQueue>
    1c20:	02078a63          	beqz	a5,1c54 <xTimerCreateTimerTask+0x48>
    1c24:	00c12083          	lw	ra,12(sp)
    1c28:	00001797          	auipc	a5,0x1
    1c2c:	07478793          	addi	a5,a5,116 # 2c9c <xTimerTaskHandle>
    1c30:	00600713          	li	a4,6
    1c34:	00000693          	li	a3,0
    1c38:	06e00613          	li	a2,110
    1c3c:	00001597          	auipc	a1,0x1
    1c40:	e5858593          	addi	a1,a1,-424 # 2a94 <_etext+0x10>
    1c44:	00000517          	auipc	a0,0x0
    1c48:	1c450513          	addi	a0,a0,452 # 1e08 <prvTimerTask>
    1c4c:	01010113          	addi	sp,sp,16
    1c50:	8c1ff06f          	j	1510 <xTaskCreate>
    1c54:	00c12083          	lw	ra,12(sp)
    1c58:	00000513          	li	a0,0
    1c5c:	01010113          	addi	sp,sp,16
    1c60:	00008067          	ret

00001c64 <xTimerGenericCommand>:
    1c64:	fe010113          	addi	sp,sp,-32
    1c68:	00912a23          	sw	s1,20(sp)
    1c6c:	00001497          	auipc	s1,0x1
    1c70:	02c48493          	addi	s1,s1,44 # 2c98 <xTimerQueue>
    1c74:	0004a803          	lw	a6,0(s1)
    1c78:	00112e23          	sw	ra,28(sp)
    1c7c:	00812c23          	sw	s0,24(sp)
    1c80:	06080c63          	beqz	a6,1cf8 <xTimerGenericCommand+0x94>
    1c84:	00b12023          	sw	a1,0(sp)
    1c88:	00c12223          	sw	a2,4(sp)
    1c8c:	00a12423          	sw	a0,8(sp)
    1c90:	00500793          	li	a5,5
    1c94:	02b7ce63          	blt	a5,a1,1cd0 <xTimerGenericCommand+0x6c>
    1c98:	00070413          	mv	s0,a4
    1c9c:	ef4ff0ef          	jal	ra,1390 <xTaskGetSchedulerState>
    1ca0:	00200793          	li	a5,2
    1ca4:	06f50663          	beq	a0,a5,1d10 <xTimerGenericCommand+0xac>
    1ca8:	0004a503          	lw	a0,0(s1)
    1cac:	00010593          	mv	a1,sp
    1cb0:	00000693          	li	a3,0
    1cb4:	00000613          	li	a2,0
    1cb8:	9e5fe0ef          	jal	ra,69c <xQueueGenericSend>
    1cbc:	01c12083          	lw	ra,28(sp)
    1cc0:	01812403          	lw	s0,24(sp)
    1cc4:	01412483          	lw	s1,20(sp)
    1cc8:	02010113          	addi	sp,sp,32
    1ccc:	00008067          	ret
    1cd0:	00068613          	mv	a2,a3
    1cd4:	00010593          	mv	a1,sp
    1cd8:	00000693          	li	a3,0
    1cdc:	00080513          	mv	a0,a6
    1ce0:	b55fe0ef          	jal	ra,834 <xQueueGenericSendFromISR>
    1ce4:	01c12083          	lw	ra,28(sp)
    1ce8:	01812403          	lw	s0,24(sp)
    1cec:	01412483          	lw	s1,20(sp)
    1cf0:	02010113          	addi	sp,sp,32
    1cf4:	00008067          	ret
    1cf8:	01c12083          	lw	ra,28(sp)
    1cfc:	01812403          	lw	s0,24(sp)
    1d00:	01412483          	lw	s1,20(sp)
    1d04:	00000513          	li	a0,0
    1d08:	02010113          	addi	sp,sp,32
    1d0c:	00008067          	ret
    1d10:	0004a503          	lw	a0,0(s1)
    1d14:	00040613          	mv	a2,s0
    1d18:	00010593          	mv	a1,sp
    1d1c:	00000693          	li	a3,0
    1d20:	97dfe0ef          	jal	ra,69c <xQueueGenericSend>
    1d24:	01c12083          	lw	ra,28(sp)
    1d28:	01812403          	lw	s0,24(sp)
    1d2c:	01412483          	lw	s1,20(sp)
    1d30:	02010113          	addi	sp,sp,32
    1d34:	00008067          	ret

00001d38 <prvSwitchTimerLists>:
    1d38:	fe010113          	addi	sp,sp,-32
    1d3c:	01212823          	sw	s2,16(sp)
    1d40:	00112e23          	sw	ra,28(sp)
    1d44:	00812c23          	sw	s0,24(sp)
    1d48:	00912a23          	sw	s1,20(sp)
    1d4c:	01312623          	sw	s3,12(sp)
    1d50:	00001917          	auipc	s2,0x1
    1d54:	f3c90913          	addi	s2,s2,-196 # 2c8c <pxCurrentTimerList>
    1d58:	0340006f          	j	1d8c <prvSwitchTimerLists+0x54>
    1d5c:	00c7a783          	lw	a5,12(a5)
    1d60:	00c7a403          	lw	s0,12(a5)
    1d64:	0007a983          	lw	s3,0(a5)
    1d68:	00440493          	addi	s1,s0,4
    1d6c:	00048513          	mv	a0,s1
    1d70:	ed5fe0ef          	jal	ra,c44 <uxListRemove>
    1d74:	02042783          	lw	a5,32(s0)
    1d78:	00040513          	mv	a0,s0
    1d7c:	000780e7          	jalr	a5
    1d80:	02444783          	lbu	a5,36(s0)
    1d84:	0047f793          	andi	a5,a5,4
    1d88:	04079063          	bnez	a5,1dc8 <prvSwitchTimerLists+0x90>
    1d8c:	00092783          	lw	a5,0(s2)
    1d90:	0007a703          	lw	a4,0(a5)
    1d94:	fc0714e3          	bnez	a4,1d5c <prvSwitchTimerLists+0x24>
    1d98:	00001717          	auipc	a4,0x1
    1d9c:	ef870713          	addi	a4,a4,-264 # 2c90 <pxOverflowTimerList>
    1da0:	00072683          	lw	a3,0(a4)
    1da4:	01c12083          	lw	ra,28(sp)
    1da8:	01812403          	lw	s0,24(sp)
    1dac:	00d92023          	sw	a3,0(s2)
    1db0:	00f72023          	sw	a5,0(a4)
    1db4:	01412483          	lw	s1,20(sp)
    1db8:	01012903          	lw	s2,16(sp)
    1dbc:	00c12983          	lw	s3,12(sp)
    1dc0:	02010113          	addi	sp,sp,32
    1dc4:	00008067          	ret
    1dc8:	01842783          	lw	a5,24(s0)
    1dcc:	00048593          	mv	a1,s1
    1dd0:	00000713          	li	a4,0
    1dd4:	00f987b3          	add	a5,s3,a5
    1dd8:	00000693          	li	a3,0
    1ddc:	00098613          	mv	a2,s3
    1de0:	00040513          	mv	a0,s0
    1de4:	00f9fc63          	bgeu	s3,a5,1dfc <prvSwitchTimerLists+0xc4>
    1de8:	00092503          	lw	a0,0(s2)
    1dec:	00f42223          	sw	a5,4(s0)
    1df0:	00842823          	sw	s0,16(s0)
    1df4:	e01fe0ef          	jal	ra,bf4 <vListInsert>
    1df8:	f95ff06f          	j	1d8c <prvSwitchTimerLists+0x54>
    1dfc:	00000593          	li	a1,0
    1e00:	e65ff0ef          	jal	ra,1c64 <xTimerGenericCommand>
    1e04:	f89ff06f          	j	1d8c <prvSwitchTimerLists+0x54>

00001e08 <prvTimerTask>:
    1e08:	fc010113          	addi	sp,sp,-64
    1e0c:	02912a23          	sw	s1,52(sp)
    1e10:	03212823          	sw	s2,48(sp)
    1e14:	03312623          	sw	s3,44(sp)
    1e18:	03412423          	sw	s4,40(sp)
    1e1c:	03512223          	sw	s5,36(sp)
    1e20:	03612023          	sw	s6,32(sp)
    1e24:	02112e23          	sw	ra,60(sp)
    1e28:	02812c23          	sw	s0,56(sp)
    1e2c:	01712e23          	sw	s7,28(sp)
    1e30:	01812c23          	sw	s8,24(sp)
    1e34:	01912a23          	sw	s9,20(sp)
    1e38:	00001a17          	auipc	s4,0x1
    1e3c:	e54a0a13          	addi	s4,s4,-428 # 2c8c <pxCurrentTimerList>
    1e40:	00001917          	auipc	s2,0x1
    1e44:	e5490913          	addi	s2,s2,-428 # 2c94 <xLastTime.0>
    1e48:	00001b17          	auipc	s6,0x1
    1e4c:	e48b0b13          	addi	s6,s6,-440 # 2c90 <pxOverflowTimerList>
    1e50:	00001497          	auipc	s1,0x1
    1e54:	e4848493          	addi	s1,s1,-440 # 2c98 <xTimerQueue>
    1e58:	00001997          	auipc	s3,0x1
    1e5c:	c4498993          	addi	s3,s3,-956 # 2a9c <_etext+0x18>
    1e60:	00900a93          	li	s5,9
    1e64:	000a2783          	lw	a5,0(s4)
    1e68:	0007ab83          	lw	s7,0(a5)
    1e6c:	180b8463          	beqz	s7,1ff4 <prvTimerTask+0x1ec>
    1e70:	00c7a783          	lw	a5,12(a5)
    1e74:	0007ab83          	lw	s7,0(a5)
    1e78:	82cff0ef          	jal	ra,ea4 <vTaskSuspendAll>
    1e7c:	840ff0ef          	jal	ra,ebc <xTaskGetTickCount>
    1e80:	00092783          	lw	a5,0(s2)
    1e84:	00050413          	mv	s0,a0
    1e88:	18f56a63          	bltu	a0,a5,201c <prvTimerTask+0x214>
    1e8c:	00a92023          	sw	a0,0(s2)
    1e90:	00000613          	li	a2,0
    1e94:	1b757c63          	bgeu	a0,s7,204c <prvTimerTask+0x244>
    1e98:	0004a503          	lw	a0,0(s1)
    1e9c:	408b85b3          	sub	a1,s7,s0
    1ea0:	c55fe0ef          	jal	ra,af4 <vQueueWaitForMessageRestricted>
    1ea4:	a01ff0ef          	jal	ra,18a4 <xTaskResumeAll>
    1ea8:	00051463          	bnez	a0,1eb0 <prvTimerTask+0xa8>
    1eac:	00000073          	ecall
    1eb0:	0004a503          	lw	a0,0(s1)
    1eb4:	00000613          	li	a2,0
    1eb8:	00010593          	mv	a1,sp
    1ebc:	a3dfe0ef          	jal	ra,8f8 <xQueueReceive>
    1ec0:	fa0502e3          	beqz	a0,1e64 <prvTimerTask+0x5c>
    1ec4:	00012783          	lw	a5,0(sp)
    1ec8:	00812503          	lw	a0,8(sp)
    1ecc:	1007c863          	bltz	a5,1fdc <prvTimerTask+0x1d4>
    1ed0:	00812403          	lw	s0,8(sp)
    1ed4:	01442783          	lw	a5,20(s0)
    1ed8:	00078663          	beqz	a5,1ee4 <prvTimerTask+0xdc>
    1edc:	00440513          	addi	a0,s0,4
    1ee0:	d65fe0ef          	jal	ra,c44 <uxListRemove>
    1ee4:	fd9fe0ef          	jal	ra,ebc <xTaskGetTickCount>
    1ee8:	00092783          	lw	a5,0(s2)
    1eec:	00050b93          	mv	s7,a0
    1ef0:	12f56e63          	bltu	a0,a5,202c <prvTimerTask+0x224>
    1ef4:	00012783          	lw	a5,0(sp)
    1ef8:	01792023          	sw	s7,0(s2)
    1efc:	fafaeae3          	bltu	s5,a5,1eb0 <prvTimerTask+0xa8>
    1f00:	00279793          	slli	a5,a5,0x2
    1f04:	00f987b3          	add	a5,s3,a5
    1f08:	0007a783          	lw	a5,0(a5)
    1f0c:	00f987b3          	add	a5,s3,a5
    1f10:	00078067          	jr	a5
    1f14:	02444783          	lbu	a5,36(s0)
    1f18:	00412703          	lw	a4,4(sp)
    1f1c:	01842683          	lw	a3,24(s0)
    1f20:	0017e793          	ori	a5,a5,1
    1f24:	02f40223          	sb	a5,36(s0)
    1f28:	00d707b3          	add	a5,a4,a3
    1f2c:	00f42223          	sw	a5,4(s0)
    1f30:	00842823          	sw	s0,16(s0)
    1f34:	10fbe063          	bltu	s7,a5,2034 <prvTimerTask+0x22c>
    1f38:	40eb8bb3          	sub	s7,s7,a4
    1f3c:	06dbe463          	bltu	s7,a3,1fa4 <prvTimerTask+0x19c>
    1f40:	02042783          	lw	a5,32(s0)
    1f44:	00040513          	mv	a0,s0
    1f48:	000780e7          	jalr	a5
    1f4c:	02444783          	lbu	a5,36(s0)
    1f50:	0047f793          	andi	a5,a5,4
    1f54:	f4078ee3          	beqz	a5,1eb0 <prvTimerTask+0xa8>
    1f58:	01842783          	lw	a5,24(s0)
    1f5c:	00412603          	lw	a2,4(sp)
    1f60:	00000713          	li	a4,0
    1f64:	00000693          	li	a3,0
    1f68:	00f60633          	add	a2,a2,a5
    1f6c:	00000593          	li	a1,0
    1f70:	00040513          	mv	a0,s0
    1f74:	cf1ff0ef          	jal	ra,1c64 <xTimerGenericCommand>
    1f78:	f39ff06f          	j	1eb0 <prvTimerTask+0xa8>
    1f7c:	00412703          	lw	a4,4(sp)
    1f80:	02444783          	lbu	a5,36(s0)
    1f84:	00842823          	sw	s0,16(s0)
    1f88:	017706b3          	add	a3,a4,s7
    1f8c:	0017e793          	ori	a5,a5,1
    1f90:	02f40223          	sb	a5,36(s0)
    1f94:	00e42c23          	sw	a4,24(s0)
    1f98:	00d42223          	sw	a3,4(s0)
    1f9c:	0adbe063          	bltu	s7,a3,203c <prvTimerTask+0x234>
    1fa0:	f00708e3          	beqz	a4,1eb0 <prvTimerTask+0xa8>
    1fa4:	000b2503          	lw	a0,0(s6)
    1fa8:	00440593          	addi	a1,s0,4
    1fac:	c49fe0ef          	jal	ra,bf4 <vListInsert>
    1fb0:	f01ff06f          	j	1eb0 <prvTimerTask+0xa8>
    1fb4:	02444783          	lbu	a5,36(s0)
    1fb8:	ffe7f793          	andi	a5,a5,-2
    1fbc:	02f40223          	sb	a5,36(s0)
    1fc0:	ef1ff06f          	j	1eb0 <prvTimerTask+0xa8>
    1fc4:	02444783          	lbu	a5,36(s0)
    1fc8:	0027f713          	andi	a4,a5,2
    1fcc:	0c070063          	beqz	a4,208c <prvTimerTask+0x284>
    1fd0:	ffe7f793          	andi	a5,a5,-2
    1fd4:	02f40223          	sb	a5,36(s0)
    1fd8:	ed9ff06f          	j	1eb0 <prvTimerTask+0xa8>
    1fdc:	00412783          	lw	a5,4(sp)
    1fe0:	00c12583          	lw	a1,12(sp)
    1fe4:	000780e7          	jalr	a5
    1fe8:	00012783          	lw	a5,0(sp)
    1fec:	ec07c2e3          	bltz	a5,1eb0 <prvTimerTask+0xa8>
    1ff0:	ee1ff06f          	j	1ed0 <prvTimerTask+0xc8>
    1ff4:	eb1fe0ef          	jal	ra,ea4 <vTaskSuspendAll>
    1ff8:	ec5fe0ef          	jal	ra,ebc <xTaskGetTickCount>
    1ffc:	00092783          	lw	a5,0(s2)
    2000:	00050413          	mv	s0,a0
    2004:	00f56c63          	bltu	a0,a5,201c <prvTimerTask+0x214>
    2008:	000b2783          	lw	a5,0(s6)
    200c:	00892023          	sw	s0,0(s2)
    2010:	0007a603          	lw	a2,0(a5)
    2014:	00163613          	seqz	a2,a2
    2018:	e81ff06f          	j	1e98 <prvTimerTask+0x90>
    201c:	d1dff0ef          	jal	ra,1d38 <prvSwitchTimerLists>
    2020:	00892023          	sw	s0,0(s2)
    2024:	881ff0ef          	jal	ra,18a4 <xTaskResumeAll>
    2028:	e89ff06f          	j	1eb0 <prvTimerTask+0xa8>
    202c:	d0dff0ef          	jal	ra,1d38 <prvSwitchTimerLists>
    2030:	ec5ff06f          	j	1ef4 <prvTimerTask+0xec>
    2034:	00ebf463          	bgeu	s7,a4,203c <prvTimerTask+0x234>
    2038:	f0e7f4e3          	bgeu	a5,a4,1f40 <prvTimerTask+0x138>
    203c:	000a2503          	lw	a0,0(s4)
    2040:	00440593          	addi	a1,s0,4
    2044:	bb1fe0ef          	jal	ra,bf4 <vListInsert>
    2048:	e69ff06f          	j	1eb0 <prvTimerTask+0xa8>
    204c:	859ff0ef          	jal	ra,18a4 <xTaskResumeAll>
    2050:	000a2783          	lw	a5,0(s4)
    2054:	00c7a783          	lw	a5,12(a5)
    2058:	00c7ac03          	lw	s8,12(a5)
    205c:	004c0c93          	addi	s9,s8,4
    2060:	000c8513          	mv	a0,s9
    2064:	be1fe0ef          	jal	ra,c44 <uxListRemove>
    2068:	024c4783          	lbu	a5,36(s8)
    206c:	0047f713          	andi	a4,a5,4
    2070:	02071463          	bnez	a4,2098 <prvTimerTask+0x290>
    2074:	ffe7f793          	andi	a5,a5,-2
    2078:	02fc0223          	sb	a5,36(s8)
    207c:	020c2783          	lw	a5,32(s8)
    2080:	000c0513          	mv	a0,s8
    2084:	000780e7          	jalr	a5
    2088:	e29ff06f          	j	1eb0 <prvTimerTask+0xa8>
    208c:	00040513          	mv	a0,s0
    2090:	a0cfe0ef          	jal	ra,29c <vPortFree>
    2094:	e1dff06f          	j	1eb0 <prvTimerTask+0xa8>
    2098:	018c2703          	lw	a4,24(s8)
    209c:	018c2823          	sw	s8,16(s8)
    20a0:	00eb87b3          	add	a5,s7,a4
    20a4:	00fc2223          	sw	a5,4(s8)
    20a8:	00f47a63          	bgeu	s0,a5,20bc <prvTimerTask+0x2b4>
    20ac:	000a2503          	lw	a0,0(s4)
    20b0:	000c8593          	mv	a1,s9
    20b4:	b41fe0ef          	jal	ra,bf4 <vListInsert>
    20b8:	fc5ff06f          	j	207c <prvTimerTask+0x274>
    20bc:	41740433          	sub	s0,s0,s7
    20c0:	02e46063          	bltu	s0,a4,20e0 <prvTimerTask+0x2d8>
    20c4:	00000713          	li	a4,0
    20c8:	00000693          	li	a3,0
    20cc:	000b8613          	mv	a2,s7
    20d0:	00000593          	li	a1,0
    20d4:	000c0513          	mv	a0,s8
    20d8:	b8dff0ef          	jal	ra,1c64 <xTimerGenericCommand>
    20dc:	fa1ff06f          	j	207c <prvTimerTask+0x274>
    20e0:	000b2503          	lw	a0,0(s6)
    20e4:	000c8593          	mv	a1,s9
    20e8:	b0dfe0ef          	jal	ra,bf4 <vListInsert>
    20ec:	f91ff06f          	j	207c <prvTimerTask+0x274>

000020f0 <vSendString>:
    20f0:	fe010113          	addi	sp,sp,-32
    20f4:	00812c23          	sw	s0,24(sp)
    20f8:	00912a23          	sw	s1,20(sp)
    20fc:	01212823          	sw	s2,16(sp)
    2100:	01312623          	sw	s3,12(sp)
    2104:	00112e23          	sw	ra,28(sp)
    2108:	00050493          	mv	s1,a0
    210c:	00000413          	li	s0,0
    2110:	b8cff0ef          	jal	ra,149c <vTaskEnterCritical>
    2114:	000109b7          	lui	s3,0x10
    2118:	8101a903          	lw	s2,-2032(gp) # 2c18 <TOHOST_PORT>
    211c:	0140006f          	j	2130 <vSendString+0x40>
    2120:	0007c783          	lbu	a5,0(a5)
    2124:	00140413          	addi	s0,s0,1
    2128:	0137e7b3          	or	a5,a5,s3
    212c:	00f92023          	sw	a5,0(s2)
    2130:	00048513          	mv	a0,s1
    2134:	0c5000ef          	jal	ra,29f8 <strlen>
    2138:	008487b3          	add	a5,s1,s0
    213c:	fea462e3          	bltu	s0,a0,2120 <vSendString+0x30>
    2140:	01812403          	lw	s0,24(sp)
    2144:	01c12083          	lw	ra,28(sp)
    2148:	01412483          	lw	s1,20(sp)
    214c:	01012903          	lw	s2,16(sp)
    2150:	00c12983          	lw	s3,12(sp)
    2154:	02010113          	addi	sp,sp,32
    2158:	b74ff06f          	j	14cc <vTaskExitCritical>

0000215c <simrv_exit>:
    215c:	8101a783          	lw	a5,-2032(gp) # 2c18 <TOHOST_PORT>
    2160:	00020737          	lui	a4,0x20
    2164:	00e7a023          	sw	a4,0(a5)
    2168:	0000006f          	j	2168 <simrv_exit+0xc>

0000216c <set_PWM>:
    216c:	ff010113          	addi	sp,sp,-16
    2170:	00812423          	sw	s0,8(sp)
    2174:	00050413          	mv	s0,a0
    2178:	00912223          	sw	s1,4(sp)
    217c:	00112623          	sw	ra,12(sp)
    2180:	00058493          	mv	s1,a1
    2184:	00841413          	slli	s0,s0,0x8
    2188:	b14ff0ef          	jal	ra,149c <vTaskEnterCritical>
    218c:	009465b3          	or	a1,s0,s1
    2190:	00812403          	lw	s0,8(sp)
    2194:	00c12083          	lw	ra,12(sp)
    2198:	00412483          	lw	s1,4(sp)
    219c:	80c1a783          	lw	a5,-2036(gp) # 2c14 <PWM_PORT>
    21a0:	00b7a023          	sw	a1,0(a5)
    21a4:	01010113          	addi	sp,sp,16
    21a8:	b24ff06f          	j	14cc <vTaskExitCritical>

000021ac <init_EXINT>:
    21ac:	fe010113          	addi	sp,sp,-32
    21b0:	00912a23          	sw	s1,20(sp)
    21b4:	01212823          	sw	s2,16(sp)
    21b8:	01312623          	sw	s3,12(sp)
    21bc:	00112e23          	sw	ra,28(sp)
    21c0:	00812c23          	sw	s0,24(sp)
    21c4:	00050493          	mv	s1,a0
    21c8:	00058993          	mv	s3,a1
    21cc:	00060913          	mv	s2,a2
    21d0:	f14027f3          	csrr	a5,mhartid
    21d4:	02050663          	beqz	a0,2200 <init_EXINT+0x54>
    21d8:	00500737          	lui	a4,0x500
    21dc:	02070713          	addi	a4,a4,32 # 500020 <_stack_top+0x4eada0>
    21e0:	00e787b3          	add	a5,a5,a4
    21e4:	00879793          	slli	a5,a5,0x8
    21e8:	0007a703          	lw	a4,0(a5)
    21ec:	fff50613          	addi	a2,a0,-1
    21f0:	00100693          	li	a3,1
    21f4:	00c696b3          	sll	a3,a3,a2
    21f8:	00d76733          	or	a4,a4,a3
    21fc:	00e7a023          	sw	a4,0(a5)
    2200:	01000513          	li	a0,16
    2204:	f3dfd0ef          	jal	ra,140 <pvPortMalloc>
    2208:	00050413          	mv	s0,a0
    220c:	00000613          	li	a2,0
    2210:	00098513          	mv	a0,s3
    2214:	00400593          	li	a1,4
    2218:	bc8fe0ef          	jal	ra,5e0 <xQueueGenericCreate>
    221c:	00249713          	slli	a4,s1,0x2
    2220:	00013797          	auipc	a5,0x13
    2224:	bd878793          	addi	a5,a5,-1064 # 14df8 <exints>
    2228:	00a42223          	sw	a0,4(s0)
    222c:	00942023          	sw	s1,0(s0)
    2230:	01242623          	sw	s2,12(s0)
    2234:	00e787b3          	add	a5,a5,a4
    2238:	01c12083          	lw	ra,28(sp)
    223c:	0087a023          	sw	s0,0(a5)
    2240:	00040513          	mv	a0,s0
    2244:	01812403          	lw	s0,24(sp)
    2248:	01412483          	lw	s1,20(sp)
    224c:	01012903          	lw	s2,16(sp)
    2250:	00c12983          	lw	s3,12(sp)
    2254:	02010113          	addi	sp,sp,32
    2258:	00008067          	ret

0000225c <get_EXINT>:
    225c:	00052783          	lw	a5,0(a0)
    2260:	ff010113          	addi	sp,sp,-16
    2264:	40000737          	lui	a4,0x40000
    2268:	00279793          	slli	a5,a5,0x2
    226c:	00112623          	sw	ra,12(sp)
    2270:	00f707b3          	add	a5,a4,a5
    2274:	00d7a023          	sw	a3,0(a5)
    2278:	00052783          	lw	a5,0(a0)
    227c:	00452503          	lw	a0,4(a0)
    2280:	00279793          	slli	a5,a5,0x2
    2284:	00f70733          	add	a4,a4,a5
    2288:	00072023          	sw	zero,0(a4) # 40000000 <_stack_top+0x3ffead80>
    228c:	e6cfe0ef          	jal	ra,8f8 <xQueueReceive>
    2290:	00c12083          	lw	ra,12(sp)
    2294:	00100513          	li	a0,1
    2298:	01010113          	addi	sp,sp,16
    229c:	00008067          	ret

000022a0 <handle_trap>:
    22a0:	502007b7          	lui	a5,0x50200
    22a4:	f1402773          	csrr	a4,mhartid
    22a8:	00d71713          	slli	a4,a4,0xd
    22ac:	00e787b3          	add	a5,a5,a4
    22b0:	fe010113          	addi	sp,sp,-32
    22b4:	00812c23          	sw	s0,24(sp)
    22b8:	0047a403          	lw	s0,4(a5) # 50200004 <_stack_top+0x501ead84>
    22bc:	00013797          	auipc	a5,0x13
    22c0:	b3c78793          	addi	a5,a5,-1220 # 14df8 <exints>
    22c4:	00112e23          	sw	ra,28(sp)
    22c8:	00241713          	slli	a4,s0,0x2
    22cc:	00e787b3          	add	a5,a5,a4
    22d0:	0007a783          	lw	a5,0(a5)
    22d4:	02078463          	beqz	a5,22fc <handle_trap+0x5c>
    22d8:	400006b7          	lui	a3,0x40000
    22dc:	00e68733          	add	a4,a3,a4
    22e0:	00072703          	lw	a4,0(a4)
    22e4:	0047a503          	lw	a0,4(a5)
    22e8:	00000693          	li	a3,0
    22ec:	00000613          	li	a2,0
    22f0:	00c10593          	addi	a1,sp,12
    22f4:	00e12623          	sw	a4,12(sp)
    22f8:	d3cfe0ef          	jal	ra,834 <xQueueGenericSendFromISR>
    22fc:	502007b7          	lui	a5,0x50200
    2300:	f1402773          	csrr	a4,mhartid
    2304:	00d71713          	slli	a4,a4,0xd
    2308:	00e787b3          	add	a5,a5,a4
    230c:	01c12083          	lw	ra,28(sp)
    2310:	0087a223          	sw	s0,4(a5) # 50200004 <_stack_top+0x501ead84>
    2314:	01812403          	lw	s0,24(sp)
    2318:	02010113          	addi	sp,sp,32
    231c:	00008067          	ret

00002320 <linetrace>:
    2320:	fe010113          	addi	sp,sp,-32
    2324:	00100613          	li	a2,1
    2328:	00400593          	li	a1,4
    232c:	00200513          	li	a0,2
    2330:	00812c23          	sw	s0,24(sp)
    2334:	00912a23          	sw	s1,20(sp)
    2338:	01212823          	sw	s2,16(sp)
    233c:	00112e23          	sw	ra,28(sp)
    2340:	e6dff0ef          	jal	ra,21ac <init_EXINT>
    2344:	00050413          	mv	s0,a0
    2348:	00100913          	li	s2,1
    234c:	00200493          	li	s1,2
    2350:	00b00693          	li	a3,11
    2354:	fff00613          	li	a2,-1
    2358:	00c10593          	addi	a1,sp,12
    235c:	00040513          	mv	a0,s0
    2360:	efdff0ef          	jal	ra,225c <get_EXINT>
    2364:	00c12783          	lw	a5,12(sp)
    2368:	03278a63          	beq	a5,s2,239c <linetrace+0x7c>
    236c:	04978063          	beq	a5,s1,23ac <linetrace+0x8c>
    2370:	fe0790e3          	bnez	a5,2350 <linetrace+0x30>
    2374:	0c000593          	li	a1,192
    2378:	0c000513          	li	a0,192
    237c:	df1ff0ef          	jal	ra,216c <set_PWM>
    2380:	00b00693          	li	a3,11
    2384:	fff00613          	li	a2,-1
    2388:	00c10593          	addi	a1,sp,12
    238c:	00040513          	mv	a0,s0
    2390:	ecdff0ef          	jal	ra,225c <get_EXINT>
    2394:	00c12783          	lw	a5,12(sp)
    2398:	fd279ae3          	bne	a5,s2,236c <linetrace+0x4c>
    239c:	00000593          	li	a1,0
    23a0:	0ff00513          	li	a0,255
    23a4:	dc9ff0ef          	jal	ra,216c <set_PWM>
    23a8:	fa9ff06f          	j	2350 <linetrace+0x30>
    23ac:	0ff00593          	li	a1,255
    23b0:	00000513          	li	a0,0
    23b4:	db9ff0ef          	jal	ra,216c <set_PWM>
    23b8:	f99ff06f          	j	2350 <linetrace+0x30>

000023bc <vApplicationMallocFailedHook>:
    23bc:	ff010113          	addi	sp,sp,-16
    23c0:	00112623          	sw	ra,12(sp)
    23c4:	30047073          	csrci	mstatus,8
    23c8:	00000517          	auipc	a0,0x0
    23cc:	71c50513          	addi	a0,a0,1820 # 2ae4 <_etext+0x60>
    23d0:	d21ff0ef          	jal	ra,20f0 <vSendString>
    23d4:	d89ff0ef          	jal	ra,215c <simrv_exit>
    23d8:	0000006f          	j	23d8 <vApplicationMallocFailedHook+0x1c>

000023dc <vApplicationStackOverflowHook>:
    23dc:	ff010113          	addi	sp,sp,-16
    23e0:	00112623          	sw	ra,12(sp)
    23e4:	30047073          	csrci	mstatus,8
    23e8:	00000517          	auipc	a0,0x0
    23ec:	70c50513          	addi	a0,a0,1804 # 2af4 <_etext+0x70>
    23f0:	d01ff0ef          	jal	ra,20f0 <vSendString>
    23f4:	d69ff0ef          	jal	ra,215c <simrv_exit>
    23f8:	0000006f          	j	23f8 <vApplicationStackOverflowHook+0x1c>

000023fc <vApplicationTickHook>:
    23fc:	00008067          	ret

00002400 <freertos_risc_v_trap_handler>:
    2400:	f8810113          	addi	sp,sp,-120
    2404:	00112223          	sw	ra,4(sp)
    2408:	00512423          	sw	t0,8(sp)
    240c:	00612623          	sw	t1,12(sp)
    2410:	00712823          	sw	t2,16(sp)
    2414:	00812a23          	sw	s0,20(sp)
    2418:	00912c23          	sw	s1,24(sp)
    241c:	00a12e23          	sw	a0,28(sp)
    2420:	02b12023          	sw	a1,32(sp)
    2424:	02c12223          	sw	a2,36(sp)
    2428:	02d12423          	sw	a3,40(sp)
    242c:	02e12623          	sw	a4,44(sp)
    2430:	02f12823          	sw	a5,48(sp)
    2434:	03012a23          	sw	a6,52(sp)
    2438:	03112c23          	sw	a7,56(sp)
    243c:	03212e23          	sw	s2,60(sp)
    2440:	05312023          	sw	s3,64(sp)
    2444:	05412223          	sw	s4,68(sp)
    2448:	05512423          	sw	s5,72(sp)
    244c:	05612623          	sw	s6,76(sp)
    2450:	05712823          	sw	s7,80(sp)
    2454:	05812a23          	sw	s8,84(sp)
    2458:	05912c23          	sw	s9,88(sp)
    245c:	05a12e23          	sw	s10,92(sp)
    2460:	07b12023          	sw	s11,96(sp)
    2464:	07c12223          	sw	t3,100(sp)
    2468:	07d12423          	sw	t4,104(sp)
    246c:	07e12623          	sw	t5,108(sp)
    2470:	07f12823          	sw	t6,112(sp)
    2474:	300022f3          	csrr	t0,mstatus
    2478:	06512a23          	sw	t0,116(sp)
    247c:	00000297          	auipc	t0,0x0
    2480:	7d42a283          	lw	t0,2004(t0) # 2c50 <pxCurrentTCB>
    2484:	0022a023          	sw	sp,0(t0)
    2488:	34202573          	csrr	a0,mcause
    248c:	341025f3          	csrr	a1,mepc

00002490 <test_if_asynchronous>:
    2490:	01f55613          	srli	a2,a0,0x1f
    2494:	08060063          	beqz	a2,2514 <handle_synchronous>
    2498:	00b12023          	sw	a1,0(sp)

0000249c <handle_asynchronous>:
    249c:	00100293          	li	t0,1
    24a0:	01f29293          	slli	t0,t0,0x1f
    24a4:	00728313          	addi	t1,t0,7
    24a8:	04651c63          	bne	a0,t1,2500 <test_if_external_interrupt>
    24ac:	00000297          	auipc	t0,0x0
    24b0:	7982a283          	lw	t0,1944(t0) # 2c44 <pullMachineTimerCompareRegister>
    24b4:	00000317          	auipc	t1,0x0
    24b8:	75832303          	lw	t1,1880(t1) # 2c0c <pullNextTime>
    24bc:	fff00e93          	li	t4,-1
    24c0:	00032383          	lw	t2,0(t1)
    24c4:	00432e03          	lw	t3,4(t1)
    24c8:	01d2a023          	sw	t4,0(t0)
    24cc:	01c2a223          	sw	t3,4(t0)
    24d0:	0072a023          	sw	t2,0(t0)
    24d4:	8181a283          	lw	t0,-2024(gp) # 2c20 <uxTimerIncrementsForOneTick>
    24d8:	00728eb3          	add	t4,t0,t2
    24dc:	007ebf33          	sltu	t5,t4,t2
    24e0:	01ee0fb3          	add	t6,t3,t5
    24e4:	01d32023          	sw	t4,0(t1)
    24e8:	01f32223          	sw	t6,4(t1)
    24ec:	81c1a103          	lw	sp,-2020(gp) # 2c24 <xISRStackTop>
    24f0:	9d9fe0ef          	jal	ra,ec8 <xTaskIncrementTick>
    24f4:	04050a63          	beqz	a0,2548 <processed_source>
    24f8:	c25fe0ef          	jal	ra,111c <vTaskSwitchContext>
    24fc:	04c0006f          	j	2548 <processed_source>

00002500 <test_if_external_interrupt>:
    2500:	00430313          	addi	t1,t1,4
    2504:	02651e63          	bne	a0,t1,2540 <as_yet_unhandled>
    2508:	81c1a103          	lw	sp,-2020(gp) # 2c24 <xISRStackTop>
    250c:	d95ff0ef          	jal	ra,22a0 <handle_trap>
    2510:	0380006f          	j	2548 <processed_source>

00002514 <handle_synchronous>:
    2514:	00458593          	addi	a1,a1,4
    2518:	00b12023          	sw	a1,0(sp)

0000251c <test_if_environment_call>:
    251c:	00b00293          	li	t0,11
    2520:	00551863          	bne	a0,t0,2530 <is_exception>
    2524:	81c1a103          	lw	sp,-2020(gp) # 2c24 <xISRStackTop>
    2528:	bf5fe0ef          	jal	ra,111c <vTaskSwitchContext>
    252c:	01c0006f          	j	2548 <processed_source>

00002530 <is_exception>:
    2530:	342022f3          	csrr	t0,mcause
    2534:	34102373          	csrr	t1,mepc
    2538:	300023f3          	csrr	t2,mstatus
    253c:	ff5ff06f          	j	2530 <is_exception>

00002540 <as_yet_unhandled>:
    2540:	342022f3          	csrr	t0,mcause
    2544:	ffdff06f          	j	2540 <as_yet_unhandled>

00002548 <processed_source>:
    2548:	00000317          	auipc	t1,0x0
    254c:	70832303          	lw	t1,1800(t1) # 2c50 <pxCurrentTCB>
    2550:	00032103          	lw	sp,0(t1)
    2554:	00012283          	lw	t0,0(sp)
    2558:	34129073          	csrw	mepc,t0
    255c:	07412283          	lw	t0,116(sp)
    2560:	30029073          	csrw	mstatus,t0
    2564:	00412083          	lw	ra,4(sp)
    2568:	00812283          	lw	t0,8(sp)
    256c:	00c12303          	lw	t1,12(sp)
    2570:	01012383          	lw	t2,16(sp)
    2574:	01412403          	lw	s0,20(sp)
    2578:	01812483          	lw	s1,24(sp)
    257c:	01c12503          	lw	a0,28(sp)
    2580:	02012583          	lw	a1,32(sp)
    2584:	02412603          	lw	a2,36(sp)
    2588:	02812683          	lw	a3,40(sp)
    258c:	02c12703          	lw	a4,44(sp)
    2590:	03012783          	lw	a5,48(sp)
    2594:	03412803          	lw	a6,52(sp)
    2598:	03812883          	lw	a7,56(sp)
    259c:	03c12903          	lw	s2,60(sp)
    25a0:	04012983          	lw	s3,64(sp)
    25a4:	04412a03          	lw	s4,68(sp)
    25a8:	04812a83          	lw	s5,72(sp)
    25ac:	04c12b03          	lw	s6,76(sp)
    25b0:	05012b83          	lw	s7,80(sp)
    25b4:	05412c03          	lw	s8,84(sp)
    25b8:	05812c83          	lw	s9,88(sp)
    25bc:	05c12d03          	lw	s10,92(sp)
    25c0:	06012d83          	lw	s11,96(sp)
    25c4:	06412e03          	lw	t3,100(sp)
    25c8:	06812e83          	lw	t4,104(sp)
    25cc:	06c12f03          	lw	t5,108(sp)
    25d0:	07012f83          	lw	t6,112(sp)
    25d4:	07810113          	addi	sp,sp,120
    25d8:	30200073          	mret
    25dc:	00000013          	nop
    25e0:	00000013          	nop
    25e4:	00000013          	nop
    25e8:	00000013          	nop
    25ec:	00000013          	nop
    25f0:	00000013          	nop
    25f4:	00000013          	nop
    25f8:	00000013          	nop
    25fc:	00000013          	nop

00002600 <xPortStartFirstTask>:
    2600:	00000297          	auipc	t0,0x0
    2604:	e0028293          	addi	t0,t0,-512 # 2400 <freertos_risc_v_trap_handler>
    2608:	30529073          	csrw	mtvec,t0
    260c:	00000117          	auipc	sp,0x0
    2610:	64412103          	lw	sp,1604(sp) # 2c50 <pxCurrentTCB>
    2614:	00012103          	lw	sp,0(sp)
    2618:	00012083          	lw	ra,0(sp)
    261c:	00c12303          	lw	t1,12(sp)
    2620:	01012383          	lw	t2,16(sp)
    2624:	01412403          	lw	s0,20(sp)
    2628:	01812483          	lw	s1,24(sp)
    262c:	01c12503          	lw	a0,28(sp)
    2630:	02012583          	lw	a1,32(sp)
    2634:	02412603          	lw	a2,36(sp)
    2638:	02812683          	lw	a3,40(sp)
    263c:	02c12703          	lw	a4,44(sp)
    2640:	03012783          	lw	a5,48(sp)
    2644:	03412803          	lw	a6,52(sp)
    2648:	03812883          	lw	a7,56(sp)
    264c:	03c12903          	lw	s2,60(sp)
    2650:	04012983          	lw	s3,64(sp)
    2654:	04412a03          	lw	s4,68(sp)
    2658:	04812a83          	lw	s5,72(sp)
    265c:	04c12b03          	lw	s6,76(sp)
    2660:	05012b83          	lw	s7,80(sp)
    2664:	05412c03          	lw	s8,84(sp)
    2668:	05812c83          	lw	s9,88(sp)
    266c:	05c12d03          	lw	s10,92(sp)
    2670:	06012d83          	lw	s11,96(sp)
    2674:	06412e03          	lw	t3,100(sp)
    2678:	06812e83          	lw	t4,104(sp)
    267c:	06c12f03          	lw	t5,108(sp)
    2680:	07012f83          	lw	t6,112(sp)
    2684:	07412283          	lw	t0,116(sp)
    2688:	00828293          	addi	t0,t0,8
    268c:	30029073          	csrw	mstatus,t0
    2690:	00812283          	lw	t0,8(sp)
    2694:	07810113          	addi	sp,sp,120
    2698:	00008067          	ret
    269c:	00000013          	nop
    26a0:	00000013          	nop
    26a4:	00000013          	nop
    26a8:	00000013          	nop
    26ac:	00000013          	nop
    26b0:	00000013          	nop
    26b4:	00000013          	nop
    26b8:	00000013          	nop
    26bc:	00000013          	nop
    26c0:	00000013          	nop
    26c4:	00000013          	nop
    26c8:	00000013          	nop
    26cc:	00000013          	nop
    26d0:	00000013          	nop
    26d4:	00000013          	nop
    26d8:	00000013          	nop
    26dc:	00000013          	nop
    26e0:	00000013          	nop
    26e4:	00000013          	nop
    26e8:	00000013          	nop
    26ec:	00000013          	nop
    26f0:	00000013          	nop
    26f4:	00000013          	nop
    26f8:	00000013          	nop
    26fc:	00000013          	nop

00002700 <pxPortInitialiseStack>:
    2700:	300022f3          	csrr	t0,mstatus
    2704:	ff72f293          	andi	t0,t0,-9
    2708:	18800313          	li	t1,392
    270c:	00431313          	slli	t1,t1,0x4
    2710:	0062e2b3          	or	t0,t0,t1
    2714:	ffc50513          	addi	a0,a0,-4
    2718:	00552023          	sw	t0,0(a0)
    271c:	fa850513          	addi	a0,a0,-88
    2720:	00c52023          	sw	a2,0(a0)
    2724:	fe850513          	addi	a0,a0,-24
    2728:	00052023          	sw	zero,0(a0)
    272c:	00000293          	li	t0,0

00002730 <chip_specific_stack_frame>:
    2730:	00028a63          	beqz	t0,2744 <chip_specific_stack_frame+0x14>
    2734:	ffc50513          	addi	a0,a0,-4
    2738:	00052023          	sw	zero,0(a0)
    273c:	fff28293          	addi	t0,t0,-1
    2740:	ff1ff06f          	j	2730 <chip_specific_stack_frame>
    2744:	ffc50513          	addi	a0,a0,-4
    2748:	00b52023          	sw	a1,0(a0)
    274c:	00008067          	ret
	...

00002784 <__clzsi2>:
int
__clzSI2 (UWtype x)
{
  Wtype ret;

  count_leading_zeros (ret, x);
    2784:	000107b7          	lui	a5,0x10
    2788:	02f57a63          	bgeu	a0,a5,27bc <__clzsi2+0x38>
    278c:	10053793          	sltiu	a5,a0,256
    2790:	0017c793          	xori	a5,a5,1
    2794:	00379793          	slli	a5,a5,0x3
    2798:	00003737          	lui	a4,0x3
    279c:	02000693          	li	a3,32
    27a0:	40f686b3          	sub	a3,a3,a5
    27a4:	00f55533          	srl	a0,a0,a5
    27a8:	b0870793          	addi	a5,a4,-1272 # 2b08 <__clz_tab>
    27ac:	00a787b3          	add	a5,a5,a0
    27b0:	0007c503          	lbu	a0,0(a5) # 10000 <__global_pointer$+0xcbf8>

  return ret;
}
    27b4:	40a68533          	sub	a0,a3,a0
    27b8:	00008067          	ret
  count_leading_zeros (ret, x);
    27bc:	01000737          	lui	a4,0x1000
    27c0:	01000793          	li	a5,16
    27c4:	fce56ae3          	bltu	a0,a4,2798 <__clzsi2+0x14>
    27c8:	01800793          	li	a5,24
    27cc:	fcdff06f          	j	2798 <__clzsi2+0x14>

000027d0 <__mulsi3>:
/* Our RV64 64-bit routine is equivalent to our RV32 32-bit routine.  */
# define __muldi3 __mulsi3
#endif

FUNC_BEGIN (__muldi3)
  mv     a2, a0
    27d0:	00050613          	mv	a2,a0
  li     a0, 0
    27d4:	00000513          	li	a0,0
.L1:
  andi   a3, a1, 1
    27d8:	0015f693          	andi	a3,a1,1
  beqz   a3, .L2
    27dc:	00068463          	beqz	a3,27e4 <__mulsi3+0x14>
  add    a0, a0, a2
    27e0:	00c50533          	add	a0,a0,a2
.L2:
  srli   a1, a1, 1
    27e4:	0015d593          	srli	a1,a1,0x1
  slli   a2, a2, 1
    27e8:	00161613          	slli	a2,a2,0x1
  bnez   a1, .L1
    27ec:	fe0596e3          	bnez	a1,27d8 <__mulsi3+0x8>
  ret
    27f0:	00008067          	ret

000027f4 <memcpy>:
    27f4:	00b547b3          	xor	a5,a0,a1
    27f8:	0037f793          	andi	a5,a5,3
    27fc:	00c508b3          	add	a7,a0,a2
    2800:	06079663          	bnez	a5,286c <memcpy+0x78>
    2804:	00300793          	li	a5,3
    2808:	06c7f263          	bgeu	a5,a2,286c <memcpy+0x78>
    280c:	00357793          	andi	a5,a0,3
    2810:	00050713          	mv	a4,a0
    2814:	0c079a63          	bnez	a5,28e8 <memcpy+0xf4>
    2818:	ffc8f613          	andi	a2,a7,-4
    281c:	40e606b3          	sub	a3,a2,a4
    2820:	02000793          	li	a5,32
    2824:	02000293          	li	t0,32
    2828:	06d7c263          	blt	a5,a3,288c <memcpy+0x98>
    282c:	00058693          	mv	a3,a1
    2830:	00070793          	mv	a5,a4
    2834:	02c77863          	bgeu	a4,a2,2864 <memcpy+0x70>
    2838:	0006a803          	lw	a6,0(a3) # 40000000 <_stack_top+0x3ffead80>
    283c:	00478793          	addi	a5,a5,4
    2840:	00468693          	addi	a3,a3,4
    2844:	ff07ae23          	sw	a6,-4(a5)
    2848:	fec7e8e3          	bltu	a5,a2,2838 <memcpy+0x44>
    284c:	fff60793          	addi	a5,a2,-1
    2850:	40e787b3          	sub	a5,a5,a4
    2854:	ffc7f793          	andi	a5,a5,-4
    2858:	00478793          	addi	a5,a5,4
    285c:	00f70733          	add	a4,a4,a5
    2860:	00f585b3          	add	a1,a1,a5
    2864:	01176863          	bltu	a4,a7,2874 <memcpy+0x80>
    2868:	00008067          	ret
    286c:	00050713          	mv	a4,a0
    2870:	ff157ce3          	bgeu	a0,a7,2868 <memcpy+0x74>
    2874:	0005c783          	lbu	a5,0(a1)
    2878:	00170713          	addi	a4,a4,1 # 1000001 <_stack_top+0xfead81>
    287c:	00158593          	addi	a1,a1,1
    2880:	fef70fa3          	sb	a5,-1(a4)
    2884:	ff1768e3          	bltu	a4,a7,2874 <memcpy+0x80>
    2888:	00008067          	ret
    288c:	0045a683          	lw	a3,4(a1)
    2890:	01c5a783          	lw	a5,28(a1)
    2894:	0005af83          	lw	t6,0(a1)
    2898:	0085af03          	lw	t5,8(a1)
    289c:	00c5ae83          	lw	t4,12(a1)
    28a0:	0105ae03          	lw	t3,16(a1)
    28a4:	0145a303          	lw	t1,20(a1)
    28a8:	0185a803          	lw	a6,24(a1)
    28ac:	00d72223          	sw	a3,4(a4)
    28b0:	0205a683          	lw	a3,32(a1)
    28b4:	01f72023          	sw	t6,0(a4)
    28b8:	01e72423          	sw	t5,8(a4)
    28bc:	01d72623          	sw	t4,12(a4)
    28c0:	01c72823          	sw	t3,16(a4)
    28c4:	00672a23          	sw	t1,20(a4)
    28c8:	01072c23          	sw	a6,24(a4)
    28cc:	00f72e23          	sw	a5,28(a4)
    28d0:	02470713          	addi	a4,a4,36
    28d4:	40e607b3          	sub	a5,a2,a4
    28d8:	fed72e23          	sw	a3,-4(a4)
    28dc:	02458593          	addi	a1,a1,36
    28e0:	faf2c6e3          	blt	t0,a5,288c <memcpy+0x98>
    28e4:	f49ff06f          	j	282c <memcpy+0x38>
    28e8:	0005c683          	lbu	a3,0(a1)
    28ec:	00170713          	addi	a4,a4,1
    28f0:	00377793          	andi	a5,a4,3
    28f4:	fed70fa3          	sb	a3,-1(a4)
    28f8:	00158593          	addi	a1,a1,1
    28fc:	f0078ee3          	beqz	a5,2818 <memcpy+0x24>
    2900:	0005c683          	lbu	a3,0(a1)
    2904:	00170713          	addi	a4,a4,1
    2908:	00377793          	andi	a5,a4,3
    290c:	fed70fa3          	sb	a3,-1(a4)
    2910:	00158593          	addi	a1,a1,1
    2914:	fc079ae3          	bnez	a5,28e8 <memcpy+0xf4>
    2918:	f01ff06f          	j	2818 <memcpy+0x24>

0000291c <memset>:
    291c:	00f00313          	li	t1,15
    2920:	00050713          	mv	a4,a0
    2924:	02c37e63          	bgeu	t1,a2,2960 <memset+0x44>
    2928:	00f77793          	andi	a5,a4,15
    292c:	0a079063          	bnez	a5,29cc <memset+0xb0>
    2930:	08059263          	bnez	a1,29b4 <memset+0x98>
    2934:	ff067693          	andi	a3,a2,-16
    2938:	00f67613          	andi	a2,a2,15
    293c:	00e686b3          	add	a3,a3,a4
    2940:	00b72023          	sw	a1,0(a4)
    2944:	00b72223          	sw	a1,4(a4)
    2948:	00b72423          	sw	a1,8(a4)
    294c:	00b72623          	sw	a1,12(a4)
    2950:	01070713          	addi	a4,a4,16
    2954:	fed766e3          	bltu	a4,a3,2940 <memset+0x24>
    2958:	00061463          	bnez	a2,2960 <memset+0x44>
    295c:	00008067          	ret
    2960:	40c306b3          	sub	a3,t1,a2
    2964:	00269693          	slli	a3,a3,0x2
    2968:	00000297          	auipc	t0,0x0
    296c:	005686b3          	add	a3,a3,t0
    2970:	00c68067          	jr	12(a3)
    2974:	00b70723          	sb	a1,14(a4)
    2978:	00b706a3          	sb	a1,13(a4)
    297c:	00b70623          	sb	a1,12(a4)
    2980:	00b705a3          	sb	a1,11(a4)
    2984:	00b70523          	sb	a1,10(a4)
    2988:	00b704a3          	sb	a1,9(a4)
    298c:	00b70423          	sb	a1,8(a4)
    2990:	00b703a3          	sb	a1,7(a4)
    2994:	00b70323          	sb	a1,6(a4)
    2998:	00b702a3          	sb	a1,5(a4)
    299c:	00b70223          	sb	a1,4(a4)
    29a0:	00b701a3          	sb	a1,3(a4)
    29a4:	00b70123          	sb	a1,2(a4)
    29a8:	00b700a3          	sb	a1,1(a4)
    29ac:	00b70023          	sb	a1,0(a4)
    29b0:	00008067          	ret
    29b4:	0ff5f593          	zext.b	a1,a1
    29b8:	00859693          	slli	a3,a1,0x8
    29bc:	00d5e5b3          	or	a1,a1,a3
    29c0:	01059693          	slli	a3,a1,0x10
    29c4:	00d5e5b3          	or	a1,a1,a3
    29c8:	f6dff06f          	j	2934 <memset+0x18>
    29cc:	00279693          	slli	a3,a5,0x2
    29d0:	00000297          	auipc	t0,0x0
    29d4:	005686b3          	add	a3,a3,t0
    29d8:	00008293          	mv	t0,ra
    29dc:	fa0680e7          	jalr	-96(a3)
    29e0:	00028093          	mv	ra,t0
    29e4:	ff078793          	addi	a5,a5,-16
    29e8:	40f70733          	sub	a4,a4,a5
    29ec:	00f60633          	add	a2,a2,a5
    29f0:	f6c378e3          	bgeu	t1,a2,2960 <memset+0x44>
    29f4:	f3dff06f          	j	2930 <memset+0x14>

000029f8 <strlen>:
    29f8:	00357793          	andi	a5,a0,3
    29fc:	00050713          	mv	a4,a0
    2a00:	04079c63          	bnez	a5,2a58 <strlen+0x60>
    2a04:	7f7f86b7          	lui	a3,0x7f7f8
    2a08:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_stack_top+0x7f7e2cff>
    2a0c:	fff00593          	li	a1,-1
    2a10:	00072603          	lw	a2,0(a4)
    2a14:	00470713          	addi	a4,a4,4
    2a18:	00d677b3          	and	a5,a2,a3
    2a1c:	00d787b3          	add	a5,a5,a3
    2a20:	00c7e7b3          	or	a5,a5,a2
    2a24:	00d7e7b3          	or	a5,a5,a3
    2a28:	feb784e3          	beq	a5,a1,2a10 <strlen+0x18>
    2a2c:	ffc74683          	lbu	a3,-4(a4)
    2a30:	40a707b3          	sub	a5,a4,a0
    2a34:	04068463          	beqz	a3,2a7c <strlen+0x84>
    2a38:	ffd74683          	lbu	a3,-3(a4)
    2a3c:	02068c63          	beqz	a3,2a74 <strlen+0x7c>
    2a40:	ffe74503          	lbu	a0,-2(a4)
    2a44:	00a03533          	snez	a0,a0
    2a48:	00f50533          	add	a0,a0,a5
    2a4c:	ffe50513          	addi	a0,a0,-2
    2a50:	00008067          	ret
    2a54:	fa0688e3          	beqz	a3,2a04 <strlen+0xc>
    2a58:	00074783          	lbu	a5,0(a4)
    2a5c:	00170713          	addi	a4,a4,1
    2a60:	00377693          	andi	a3,a4,3
    2a64:	fe0798e3          	bnez	a5,2a54 <strlen+0x5c>
    2a68:	40a70733          	sub	a4,a4,a0
    2a6c:	fff70513          	addi	a0,a4,-1
    2a70:	00008067          	ret
    2a74:	ffd78513          	addi	a0,a5,-3
    2a78:	00008067          	ret
    2a7c:	ffc78513          	addi	a0,a5,-4
    2a80:	00008067          	ret

Disassembly of section .rodata:

00002a84 <__clz_tab-0x84>:
    2a84:	4449                	li	s0,18
    2a86:	454c                	lw	a1,12(a0)
    2a88:	0000                	unimp
    2a8a:	0000                	unimp
    2a8c:	6d54                	flw	fa3,28(a0)
    2a8e:	5172                	lw	sp,60(sp)
    2a90:	0000                	unimp
    2a92:	0000                	unimp
    2a94:	6d54                	flw	fa3,28(a0)
    2a96:	2072                	fld	ft0,280(sp)
    2a98:	00637653          	fadd.s	fa2,ft6,ft6
    2a9c:	f478                	fsw	fa4,108(s0)
    2a9e:	ffff                	0xffff
    2aa0:	f478                	fsw	fa4,108(s0)
    2aa2:	ffff                	0xffff
    2aa4:	f478                	fsw	fa4,108(s0)
    2aa6:	ffff                	0xffff
    2aa8:	f518                	fsw	fa4,40(a0)
    2aaa:	ffff                	0xffff
    2aac:	f4e0                	fsw	fs0,108(s1)
    2aae:	ffff                	0xffff
    2ab0:	f528                	fsw	fa0,104(a0)
    2ab2:	ffff                	0xffff
    2ab4:	f478                	fsw	fa4,108(s0)
    2ab6:	ffff                	0xffff
    2ab8:	f478                	fsw	fa4,108(s0)
    2aba:	ffff                	0xffff
    2abc:	f518                	fsw	fa4,40(a0)
    2abe:	ffff                	0xffff
    2ac0:	f4e0                	fsw	fs0,108(s1)
    2ac2:	ffff                	0xffff
    2ac4:	6548                	flw	fa0,12(a0)
    2ac6:	6c6c                	flw	fa1,92(s0)
    2ac8:	7246206f          	j	651ec <_stack_top+0x4ff6c>
    2acc:	6565                	lui	a0,0x19
    2ace:	5452                	lw	s0,52(sp)
    2ad0:	2121534f          	fnmadd.s	ft6,ft2,fs2,ft4,unknown
    2ad4:	000a                	c.slli	zero,0x2
    2ad6:	0000                	unimp
    2ad8:	696c                	flw	fa1,84(a0)
    2ada:	656e                	flw	fa0,216(sp)
    2adc:	7274                	flw	fa3,100(a2)
    2ade:	6361                	lui	t1,0x18
    2ae0:	0065                	c.nop	25
    2ae2:	0000                	unimp
    2ae4:	614d                	addi	sp,sp,176
    2ae6:	6c6c                	flw	fa1,92(s0)
    2ae8:	4620636f          	jal	t1,8f4a <__global_pointer$+0x5b42>
    2aec:	6961                	lui	s2,0x18
    2aee:	656c                	flw	fa1,76(a0)
    2af0:	2164                	fld	fs1,192(a0)
    2af2:	0000                	unimp
    2af4:	63617453          	0x63617453
    2af8:	764f206b          	0x764f206b
    2afc:	7265                	lui	tp,0xffff9
    2afe:	6c66                	flw	fs8,88(sp)
    2b00:	2121776f          	jal	a4,19d12 <_stack_top+0x4a92>
    2b04:	0000                	unimp
	...

00002b08 <__clz_tab>:
const UQItype __clz_tab[256] =
    2b08:	0100                	addi	s0,sp,128
    2b0a:	0202                	c.slli64	tp
    2b0c:	03030303          	lb	t1,48(t1) # 18030 <_stack_top+0x2db0>
    2b10:	0404                	addi	s1,sp,512
    2b12:	0404                	addi	s1,sp,512
    2b14:	0404                	addi	s1,sp,512
    2b16:	0404                	addi	s1,sp,512
    2b18:	0505                	addi	a0,a0,1
    2b1a:	0505                	addi	a0,a0,1
    2b1c:	0505                	addi	a0,a0,1
    2b1e:	0505                	addi	a0,a0,1
    2b20:	0505                	addi	a0,a0,1
    2b22:	0505                	addi	a0,a0,1
    2b24:	0505                	addi	a0,a0,1
    2b26:	0505                	addi	a0,a0,1
    2b28:	0606                	slli	a2,a2,0x1
    2b2a:	0606                	slli	a2,a2,0x1
    2b2c:	0606                	slli	a2,a2,0x1
    2b2e:	0606                	slli	a2,a2,0x1
    2b30:	0606                	slli	a2,a2,0x1
    2b32:	0606                	slli	a2,a2,0x1
    2b34:	0606                	slli	a2,a2,0x1
    2b36:	0606                	slli	a2,a2,0x1
    2b38:	0606                	slli	a2,a2,0x1
    2b3a:	0606                	slli	a2,a2,0x1
    2b3c:	0606                	slli	a2,a2,0x1
    2b3e:	0606                	slli	a2,a2,0x1
    2b40:	0606                	slli	a2,a2,0x1
    2b42:	0606                	slli	a2,a2,0x1
    2b44:	0606                	slli	a2,a2,0x1
    2b46:	0606                	slli	a2,a2,0x1
    2b48:	07070707          	0x7070707
    2b4c:	07070707          	0x7070707
    2b50:	07070707          	0x7070707
    2b54:	07070707          	0x7070707
    2b58:	07070707          	0x7070707
    2b5c:	07070707          	0x7070707
    2b60:	07070707          	0x7070707
    2b64:	07070707          	0x7070707
    2b68:	07070707          	0x7070707
    2b6c:	07070707          	0x7070707
    2b70:	07070707          	0x7070707
    2b74:	07070707          	0x7070707
    2b78:	07070707          	0x7070707
    2b7c:	07070707          	0x7070707
    2b80:	07070707          	0x7070707
    2b84:	07070707          	0x7070707
    2b88:	0808                	addi	a0,sp,16
    2b8a:	0808                	addi	a0,sp,16
    2b8c:	0808                	addi	a0,sp,16
    2b8e:	0808                	addi	a0,sp,16
    2b90:	0808                	addi	a0,sp,16
    2b92:	0808                	addi	a0,sp,16
    2b94:	0808                	addi	a0,sp,16
    2b96:	0808                	addi	a0,sp,16
    2b98:	0808                	addi	a0,sp,16
    2b9a:	0808                	addi	a0,sp,16
    2b9c:	0808                	addi	a0,sp,16
    2b9e:	0808                	addi	a0,sp,16
    2ba0:	0808                	addi	a0,sp,16
    2ba2:	0808                	addi	a0,sp,16
    2ba4:	0808                	addi	a0,sp,16
    2ba6:	0808                	addi	a0,sp,16
    2ba8:	0808                	addi	a0,sp,16
    2baa:	0808                	addi	a0,sp,16
    2bac:	0808                	addi	a0,sp,16
    2bae:	0808                	addi	a0,sp,16
    2bb0:	0808                	addi	a0,sp,16
    2bb2:	0808                	addi	a0,sp,16
    2bb4:	0808                	addi	a0,sp,16
    2bb6:	0808                	addi	a0,sp,16
    2bb8:	0808                	addi	a0,sp,16
    2bba:	0808                	addi	a0,sp,16
    2bbc:	0808                	addi	a0,sp,16
    2bbe:	0808                	addi	a0,sp,16
    2bc0:	0808                	addi	a0,sp,16
    2bc2:	0808                	addi	a0,sp,16
    2bc4:	0808                	addi	a0,sp,16
    2bc6:	0808                	addi	a0,sp,16
    2bc8:	0808                	addi	a0,sp,16
    2bca:	0808                	addi	a0,sp,16
    2bcc:	0808                	addi	a0,sp,16
    2bce:	0808                	addi	a0,sp,16
    2bd0:	0808                	addi	a0,sp,16
    2bd2:	0808                	addi	a0,sp,16
    2bd4:	0808                	addi	a0,sp,16
    2bd6:	0808                	addi	a0,sp,16
    2bd8:	0808                	addi	a0,sp,16
    2bda:	0808                	addi	a0,sp,16
    2bdc:	0808                	addi	a0,sp,16
    2bde:	0808                	addi	a0,sp,16
    2be0:	0808                	addi	a0,sp,16
    2be2:	0808                	addi	a0,sp,16
    2be4:	0808                	addi	a0,sp,16
    2be6:	0808                	addi	a0,sp,16
    2be8:	0808                	addi	a0,sp,16
    2bea:	0808                	addi	a0,sp,16
    2bec:	0808                	addi	a0,sp,16
    2bee:	0808                	addi	a0,sp,16
    2bf0:	0808                	addi	a0,sp,16
    2bf2:	0808                	addi	a0,sp,16
    2bf4:	0808                	addi	a0,sp,16
    2bf6:	0808                	addi	a0,sp,16
    2bf8:	0808                	addi	a0,sp,16
    2bfa:	0808                	addi	a0,sp,16
    2bfc:	0808                	addi	a0,sp,16
    2bfe:	0808                	addi	a0,sp,16
    2c00:	0808                	addi	a0,sp,16
    2c02:	0808                	addi	a0,sp,16
    2c04:	0808                	addi	a0,sp,16
    2c06:	0808                	addi	a0,sp,16

Disassembly of section .data:

00002c08 <xFreeBytesRemaining>:
    2c08:	fff0                	fsw	fa2,124(a5)
	...

00002c0c <pullNextTime>:
    2c0c:	2c48                	fld	fa0,152(s0)
	...

00002c10 <uxTopUsedPriority>:
    2c10:	0006                	c.slli	zero,0x1
	...

00002c14 <PWM_PORT>:
    2c14:	2004                	fld	fs1,0(s0)
    2c16:	4000                	lw	s0,0(s0)

00002c18 <TOHOST_PORT>:
    2c18:	8000                	0x8000
    2c1a:	4000                	lw	s0,0(s0)
    2c1c:	0000                	unimp
	...

00002c20 <uxTimerIncrementsForOneTick>:
    2c20:	86a0                	0x86a0
    2c22:	0001                	nop

00002c24 <xISRStackTop>:
    2c24:	4ca0                	lw	s0,88(s1)
    2c26:	0001                	nop

Disassembly of section .bss:

00002c30 <xEnd>:
	...

00002c38 <xHeapHasBeenInitialised.0>:
    2c38:	0000                	unimp
	...

00002c3c <xStart>:
	...

00002c44 <pullMachineTimerCompareRegister>:
    2c44:	0000                	unimp
	...

00002c48 <ullNextTime>:
	...

00002c50 <pxCurrentTCB>:
    2c50:	0000                	unimp
	...

00002c54 <pxDelayedTaskList>:
    2c54:	0000                	unimp
	...

00002c58 <pxOverflowDelayedTaskList>:
    2c58:	0000                	unimp
	...

00002c5c <uxCurrentNumberOfTasks>:
    2c5c:	0000                	unimp
	...

00002c60 <uxDeletedTasksWaitingCleanUp>:
    2c60:	0000                	unimp
	...

00002c64 <uxSchedulerSuspended>:
    2c64:	0000                	unimp
	...

00002c68 <uxTaskNumber>:
    2c68:	0000                	unimp
	...

00002c6c <uxTopReadyPriority>:
    2c6c:	0000                	unimp
	...

00002c70 <xIdleTaskHandle>:
    2c70:	0000                	unimp
	...

00002c74 <xNextTaskUnblockTime>:
    2c74:	0000                	unimp
	...

00002c78 <xNumOfOverflows>:
    2c78:	0000                	unimp
	...

00002c7c <xPendedTicks>:
    2c7c:	0000                	unimp
	...

00002c80 <xSchedulerRunning>:
    2c80:	0000                	unimp
	...

00002c84 <xTickCount>:
    2c84:	0000                	unimp
	...

00002c88 <xYieldPending>:
    2c88:	0000                	unimp
	...

00002c8c <pxCurrentTimerList>:
    2c8c:	0000                	unimp
	...

00002c90 <pxOverflowTimerList>:
    2c90:	0000                	unimp
	...

00002c94 <xLastTime.0>:
    2c94:	0000                	unimp
	...

00002c98 <xTimerQueue>:
    2c98:	0000                	unimp
	...

00002c9c <xTimerTaskHandle>:
    2c9c:	0000                	unimp
	...

00002ca0 <ucHeap>:
	...

00012ca0 <xISRStack>:
	...

00014ca0 <xQueueRegistry>:
	...

00014ce0 <pxReadyTasksLists>:
	...

00014d6c <xDelayedTaskList1>:
	...

00014d80 <xDelayedTaskList2>:
	...

00014d94 <xPendingReadyList>:
	...

00014da8 <xSuspendedTaskList>:
	...

00014dbc <xTasksWaitingTermination>:
	...

00014dd0 <xActiveTimerList1>:
	...

00014de4 <xActiveTimerList2>:
	...

00014df8 <exints>:
	...

Disassembly of section .stack:

00014e78 <_stack_top-0x408>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e31                	jal	328 <vPortSetupTimerInterrupt+0x24>
   e:	2e31                	jal	32a <vPortSetupTimerInterrupt+0x26>
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
  1a:	2784                	fld	fs1,8(a5)
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
  ea:	ae01                	j	3fa <prvCopyDataToQueue+0x46>
  ec:	0102                	c.slli64	sp
  ee:	0026                	c.slli	zero,0x9
  f0:	0000                	unimp
  f2:	2784                	fld	fs1,8(a5)
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
 110:	b001                	j	fffff910 <_stack_top+0xfffea690>
 112:	0902                	c.slli64	s2
 114:	008a                	slli	ra,ra,0x2
 116:	0000                	unimp
 118:	0c0c                	addi	a1,sp,528
 11a:	0000                	unimp
 11c:	0d00                	addi	s0,sp,656
 11e:	0026                	c.slli	zero,0x9
 120:	0000                	unimp
 122:	b201                	j	fffffa22 <_stack_top+0xfffea7a2>
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
 14e:	cb01                	beqz	a4,15e <pvPortMalloc+0x1e>
 150:	0000                	unimp
 152:	d000                	sw	s0,32(s0)
 154:	24000027          	0x24000027
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
 22e:	bb09                	j	ffffff40 <_stack_top+0xfffeacc0>
 230:	0000                	unimp
 232:	0200                	addi	s0,sp,256
 234:	029e                	slli	t0,t0,0x7
 236:	0803050f          	0x803050f
 23a:	0000002b          	0x2b

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	2401                	jal	200 <pvPortMalloc+0xc0>
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
  24:	2501                	jal	624 <xQueueGenericCreate+0x44>
  26:	130e                	slli	t1,t1,0x23
  28:	1b1f030b          	0x1b1f030b
  2c:	111f 1201 1006      	0x10061201111f
  32:	05000017          	auipc	zero,0x5000
  36:	0024                	addi	s1,sp,8
  38:	0b3e0b0b          	0xb3e0b0b
  3c:	00000803          	lb	a6,0(zero) # 0 <_start>
  40:	0106                	slli	sp,sp,0x1
  42:	4901                	li	s2,0
  44:	00130113          	addi	sp,t1,1 # ffffa001 <_stack_top+0xfffe4d81>
  48:	0700                	addi	s0,sp,896
  4a:	0021                	c.nop	8
  4c:	1349                	addi	t1,t1,-14
  4e:	00000b2f          	0xb2f
  52:	3408                	fld	fa0,40(s0)
  54:	0300                	addi	s0,sp,384
  56:	3a0e                	fld	fs4,224(sp)
  58:	39053b0b          	0x39053b0b
  5c:	3f13490b          	0x3f13490b
  60:	3c19                	jal	fffffa76 <_stack_top+0xfffea7f6>
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
  de:	2401                	jal	2de <vPortFree+0x42>
  e0:	0b00                	addi	s0,sp,400
  e2:	030b3e0b          	0x30b3e0b
  e6:	000e                	c.slli	zero,0x3
  e8:	0200                	addi	s0,sp,256
  ea:	0026                	c.slli	zero,0x9
  ec:	1349                	addi	t1,t1,-14
  ee:	0000                	unimp
  f0:	25011103          	lh	sp,592(sp) # 1201131e <_stack_top+0x11ffc09e>
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
 146:	3905                	jal	fffffd76 <_stack_top+0xfffeaaf6>
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
   c:	00278407          	0x278407
  10:	a800                	fsd	fs0,16(s0)
  12:	01000027          	0x1000027
  16:	075a                	slli	a4,a4,0x16
  18:	27a8                	fld	fa0,72(a5)
  1a:	0000                	unimp
  1c:	27bc                	fld	fa5,72(a5)
  1e:	0000                	unimp
  20:	a304                	fsd	fs1,0(a4)
  22:	5a01                	li	s4,-32
  24:	079f 27bc 0000      	0x27bc079f
  2a:	27d0                	fld	fa2,136(a5)
  2c:	0000                	unimp
  2e:	5a01                	li	s4,-32
  30:	0700                	addi	s0,sp,896
  32:	2784                	fld	fs1,8(a5)
  34:	0000                	unimp
  36:	27a8                	fld	fa0,72(a5)
  38:	0000                	unimp
  3a:	5a01                	li	s4,-32
  3c:	0027a807          	flw	fa6,2(a5)
  40:	bc00                	fsd	fs0,56(s0)
  42:	04000027          	0x4000027
  46:	9f5a01a3          	sb	s5,-1565(s4)
  4a:	0027bc07          	fld	fs8,2(a5)
  4e:	d000                	sw	s0,32(s0)
  50:	01000027          	0x1000027
  54:	005a                	c.slli	zero,0x16
  56:	00279807          	0x279807
  5a:	ac00                	fsd	fs0,24(s0)
  5c:	01000027          	0x1000027
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
  10:	2784                	fld	fs1,8(a5)
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
  30:	27d0                	fld	fa2,136(a5)
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
   e:	98000027          	0x98000027
  12:	06000027          	0x6000027
  16:	2798                	fld	fa4,8(a5)
  18:	0000                	unimp
  1a:	27b4                	fld	fa3,72(a5)
  1c:	0000                	unimp
  1e:	bc06                	fsd	ft1,56(sp)
  20:	d0000027          	0xd0000027
  24:	00000027          	0x27

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000c7          	fmsub.s	ft1,ft0,ft0,ft0,rne
   4:	0005                	c.nop	1
   6:	0004                	0x4
   8:	00000033          	add	zero,zero,zero
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffff1e <_stack_top+0xfffeac9e>
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
  44:	2784                	fld	fs1,8(a5)
  46:	0000                	unimp
  48:	0105ae03          	lw	t3,16(a1)
  4c:	0305                	addi	t1,t1,1
  4e:	00090103          	lb	sp,0(s2) # 1000 <xTaskIncrementTick+0x138>
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
  b4:	04020003          	lb	zero,64(tp) # fffe1040 <_stack_top+0xfffcbdc0>
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
 108:	27d0                	fld	fa2,136(a5)
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
 144:	3b01                	jal	fffffe54 <_stack_top+0xfffeabd4>
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
   6:	20676e6f          	jal	t3,7620c <_stack_top+0x60f8c>
   a:	6e69                	lui	t3,0x1a
   c:	0074                	addi	a3,sp,12
   e:	5f5f 6c63 737a      	0x737a6c635f5f
  14:	3269                	jal	fffff99e <_stack_top+0xfffea71e>
  16:	6300                	flw	fs0,0(a4)
  18:	6c706d6f          	jal	s10,6ede <__global_pointer$+0x3ad6>
  1c:	7865                	lui	a6,0xffff9
  1e:	6420                	flw	fs0,72(s0)
  20:	6c62756f          	jal	a0,276e6 <_stack_top+0x12466>
  24:	0065                	c.nop	25
  26:	5f5f 7278 6c00      	0x6c0072785f5f
  2c:	20676e6f          	jal	t3,76232 <_stack_top+0x60fb2>
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
  5a:	706d6f63          	bltu	s10,t1,778 <xQueueGenericSend+0xdc>
  5e:	656c                	flw	fa1,76(a0)
  60:	2078                	fld	fa4,192(s0)
  62:	6f6c                	flw	fa1,92(a4)
  64:	676e                	flw	fa4,216(sp)
  66:	6420                	flw	fs0,72(s0)
  68:	6c62756f          	jal	a0,2772e <_stack_top+0x124ae>
  6c:	0065                	c.nop	25
  6e:	726f6873          	csrrsi	a6,0x726,30
  72:	2074                	fld	fa3,192(s0)
  74:	6e75                	lui	t3,0x1d
  76:	6e676973          	csrrsi	s2,0x6e6,14
  7a:	6465                	lui	s0,0x19
  7c:	6920                	flw	fs0,80(a0)
  7e:	746e                	flw	fs0,248(sp)
  80:	6300                	flw	fs0,0(a4)
  82:	6c706d6f          	jal	s10,6f48 <__global_pointer$+0x3b40>
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
  ae:	3731                	jal	ffffffba <_stack_top+0xfffead3a>
  b0:	3120                	fld	fs0,96(a0)
  b2:	2e31                	jal	3ce <prvCopyDataToQueue+0x1a>
  b4:	2e31                	jal	3d0 <prvCopyDataToQueue+0x1c>
  b6:	2030                	fld	fa2,64(s0)
  b8:	6d2d                	lui	s10,0xb
  ba:	646f6d63          	bltu	t5,t1,714 <xQueueGenericSend+0x78>
  be:	6c65                	lui	s8,0x19
  c0:	6d3d                	lui	s10,0xf
  c2:	6465                	lui	s0,0x19
  c4:	6f6c                	flw	fa1,92(a4)
  c6:	6d2d2077          	0x6d2d2077
  ca:	646f6d63          	bltu	t5,t1,724 <xQueueGenericSend+0x88>
  ce:	6c65                	lui	s8,0x19
  d0:	6d3d                	lui	s10,0xf
  d2:	6465                	lui	s0,0x19
  d4:	6f6c                	flw	fa1,92(a4)
  d6:	6d2d2077          	0x6d2d2077
  da:	7574                	flw	fa3,108(a0)
  dc:	656e                	flw	fa0,216(sp)
  de:	723d                	lui	tp,0xfffef
  e0:	656b636f          	jal	t1,b6736 <_stack_top+0xa14b6>
  e4:	2074                	fld	fa3,192(s0)
  e6:	6d2d                	lui	s10,0xb
  e8:	7261                	lui	tp,0xffff8
  ea:	723d6863          	bltu	s10,gp,81a <xQueueGenericSend+0x17e>
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
 12a:	2d206363          	bltu	zero,s2,3f0 <prvCopyDataToQueue+0x3c>
 12e:	6e66                	flw	ft8,88(sp)
 130:	74732d6f          	jal	s10,33076 <_stack_top+0x1ddf6>
 134:	6361                	lui	t1,0x18
 136:	72702d6b          	0x72702d6b
 13a:	6365746f          	jal	s0,57770 <_stack_top+0x424f0>
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
 15a:	3369                	jal	fffffee4 <_stack_top+0xfffeac64>
 15c:	532e                	lw	t1,232(sp)
 15e:	2f00                	fld	fs0,24(a4)
 160:	6f68                	flw	fa0,92(a4)
 162:	656d                	lui	a0,0x1b
 164:	6e616b2f          	0x6e616b2f
 168:	6d61                	lui	s10,0x18
 16a:	2f69726f          	jal	tp,97460 <_stack_top+0x821e0>
 16e:	6972                	flw	fs2,28(sp)
 170:	2d766373          	csrrsi	t1,0x2d7,12
 174:	2d756e67          	0x2d756e67
 178:	6f74                	flw	fa3,92(a4)
 17a:	68636c6f          	jal	s8,36800 <_stack_top+0x21580>
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
 1b2:	47006363          	bltu	zero,a6,618 <xQueueGenericCreate+0x38>
 1b6:	554e                	lw	a0,240(sp)
 1b8:	4120                	lw	s0,64(a0)
 1ba:	2e322053          	0x2e322053
 1be:	312e3633          	0x312e3633
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6d6f682f          	0x6d6f682f
   4:	2f65                	jal	7bc <xQueueGenericSend+0x120>
   6:	616e616b          	0x616e616b
   a:	6f6d                	lui	t5,0x1b
   c:	6972                	flw	fs2,28(sp)
   e:	7369722f          	0x7369722f
  12:	672d7663          	bgeu	s10,s2,67e <xQueueGenericCreate+0x9e>
  16:	756e                	flw	fa0,248(sp)
  18:	742d                	lui	s0,0xfffeb
  1a:	636c6f6f          	jal	t5,c6650 <_stack_top+0xb13d0>
  1e:	6168                	flw	fa0,68(a0)
  20:	6e69                	lui	t3,0x1a
  22:	6975622f          	0x6975622f
  26:	646c                	flw	fa1,76(s0)
  28:	672d                	lui	a4,0xb
  2a:	6e2d6363          	bltu	s10,sp,710 <xQueueGenericSend+0x74>
  2e:	7765                	lui	a4,0xffff9
  30:	696c                	flw	fa1,84(a0)
  32:	2d62                	fld	fs10,24(sp)
  34:	67617473          	csrrci	s0,0x676,2
  38:	3265                	jal	fffff9e0 <_stack_top+0xfffea760>
  3a:	7369722f          	0x7369722f
  3e:	32337663          	bgeu	t1,gp,36a <vPortSetupTimerInterrupt+0x66>
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
  64:	672d7663          	bgeu	s10,s2,6d0 <xQueueGenericSend+0x34>
  68:	6c2f6363          	bltu	t5,sp,72e <xQueueGenericSend+0x92>
  6c:	6269                	lui	tp,0x1a
  6e:	2f636367          	0x2f636367
  72:	696c                	flw	fa1,84(a0)
  74:	6762                	flw	fa4,24(sp)
  76:	2e326363          	bltu	tp,gp,35c <vPortSetupTimerInterrupt+0x58>
  7a:	2e2e0063          	beq	t3,sp,35a <vPortSetupTimerInterrupt+0x56>
  7e:	2f2e2e2f          	0x2f2e2e2f
  82:	2e2e                	fld	ft8,200(sp)
  84:	722f2e2f          	0x722f2e2f
  88:	7369                	lui	t1,0xffffa
  8a:	672d7663          	bgeu	s10,s2,6f6 <xQueueGenericSend+0x5a>
  8e:	6c2f6363          	bltu	t5,sp,754 <xQueueGenericSend+0xb8>
  92:	6269                	lui	tp,0x1a
  94:	00636367          	0x636367
  98:	696c                	flw	fa1,84(a0)
  9a:	6762                	flw	fa4,24(sp)
  9c:	2e326363          	bltu	tp,gp,382 <vPortSetupTimerInterrupt+0x7e>
  a0:	0068                	addi	a0,sp,12
  a2:	2e2e                	fld	ft8,200(sp)
  a4:	2f2e2e2f          	0x2f2e2e2f
  a8:	2e2e                	fld	ft8,200(sp)
  aa:	722f2e2f          	0x722f2e2f
  ae:	7369                	lui	t1,0xffffa
  b0:	672d7663          	bgeu	s10,s2,71c <xQueueGenericSend+0x80>
  b4:	6c2f6363          	bltu	t5,sp,77a <xQueueGenericSend+0xde>
  b8:	6269                	lui	tp,0x1a
  ba:	2f636367          	0x2f636367
  be:	666e6f63          	bltu	t3,t1,73c <xQueueGenericSend+0xa0>
  c2:	6769                	lui	a4,0x1a
  c4:	7369722f          	0x7369722f
  c8:	6d007663          	bgeu	zero,a6,794 <xQueueGenericSend+0xf8>
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
  18:	2784                	fld	fs1,8(a5)
  1a:	0000                	unimp
  1c:	004c                	addi	a1,sp,4
	...
