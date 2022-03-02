
build/linetrace.axf:     file format elf32-littleriscv
build/linetrace.axf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x00002d40 memsz 0x000153a0 flags rwx

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         000000d8  00000000  00000000  00001000  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00002a84  00000100  00000100  00001100  2**8
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata.align 00000000  00002b84  00002d40  00003d40  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  3 .rodata       00000198  00002b84  00002b84  00003b84  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .data.align   00000000  00002d1c  00002d40  00003d40  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000024  00002d1c  00002d1c  00003d1c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .bss.align    00000000  00002d40  00002d40  00000000  2**0
                  ALLOC
  7 .bss          00012258  00002d40  00002d40  00003d40  2**4
                  ALLOC
  8 .stack        00000408  00014f98  00014f98  00003d40  2**0
                  ALLOC
  9 .comment      00000012  00000000  00000000  00003d40  2**0
                  CONTENTS, READONLY
 10 .riscv.attributes 00000020  00000000  00000000  00003d52  2**0
                  CONTENTS, READONLY
 11 .debug_info   0000023e  00000000  00000000  00003d72  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_abbrev 0000014e  00000000  00000000  00003fb0  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_loclists 00000062  00000000  00000000  000040fe  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_aranges 00000058  00000000  00000000  00004160  2**3
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_rnglists 00000028  00000000  00000000  000041b8  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_line   00000184  00000000  00000000  000041e0  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_str    000001c3  00000000  00000000  00004364  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 18 .debug_line_str 000000d4  00000000  00000000  00004527  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_frame  00000020  00000000  00000000  000045fc  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
00000000 l    d  .init	00000000 .init
00000100 l    d  .text	00000000 .text
00002b84 l    d  .rodata.align	00000000 .rodata.align
00002b84 l    d  .rodata	00000000 .rodata
00002d1c l    d  .data.align	00000000 .data.align
00002d1c l    d  .data	00000000 .data
00002d40 l    d  .bss.align	00000000 .bss.align
00002d40 l    d  .bss	00000000 .bss
00014f98 l    d  .stack	00000000 .stack
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
00002db0 l     O .bss	00000004 cnt.0
00000000 l    df *ABS*	00000000 heap_2.c
00002db4 l     O .bss	00010000 ucHeap
00002d40 l     O .bss	00000008 xEnd
00002d48 l     O .bss	00000004 xHeapHasBeenInitialised.0
00002d4c l     O .bss	00000008 xStart
00002d20 l     O .data	00000004 xFreeBytesRemaining
00000000 l    df *ABS*	00000000 port.c
00012dc0 l     O .bss	00002000 xISRStack
00000000 l    df *ABS*	00000000 queue.c
000003d8 l     F .text	00000130 prvCopyDataToQueue
00000508 l     F .text	000000fc prvUnlockQueue
00000000 l    df *ABS*	00000000 list.c
00000000 l    df *ABS*	00000000 tasks.c
00000cb8 l     F .text	00000128 prvAddCurrentTaskToDelayedList
00000de0 l     F .text	000000e8 prvIdleTask
00014e00 l     O .bss	0000008c pxReadyTasksLists
00014e8c l     O .bss	00000014 xDelayedTaskList1
00014ea0 l     O .bss	00000014 xDelayedTaskList2
00014eb4 l     O .bss	00000014 xPendingReadyList
00014ec8 l     O .bss	00000014 xSuspendedTaskList
00014edc l     O .bss	00000014 xTasksWaitingTermination
00002d64 l     O .bss	00000004 pxDelayedTaskList
00002d68 l     O .bss	00000004 pxOverflowDelayedTaskList
00002d6c l     O .bss	00000004 uxCurrentNumberOfTasks
00002d70 l     O .bss	00000004 uxDeletedTasksWaitingCleanUp
00002d74 l     O .bss	00000004 uxSchedulerSuspended
00002d78 l     O .bss	00000004 uxTaskNumber
00002d7c l     O .bss	00000004 uxTopReadyPriority
00002d80 l     O .bss	00000004 xIdleTaskHandle
00002d84 l     O .bss	00000004 xNextTaskUnblockTime
00002d88 l     O .bss	00000004 xNumOfOverflows
00002d8c l     O .bss	00000004 xPendedTicks
00002d90 l     O .bss	00000004 xSchedulerRunning
00002d94 l     O .bss	00000004 xTickCount
00002d98 l     O .bss	00000004 xYieldPending
00000000 l    df *ABS*	00000000 timers.c
00001be0 l     F .text	00000098 prvCheckForValidListAndQueue
00001e74 l     F .text	000002e8 prvTimerTask
00001da4 l     F .text	000000d0 prvSwitchTimerLists
00014ef0 l     O .bss	00000014 xActiveTimerList1
00014f04 l     O .bss	00000014 xActiveTimerList2
00002d9c l     O .bss	00000004 pxCurrentTimerList
00002da0 l     O .bss	00000004 pxOverflowTimerList
00002da4 l     O .bss	00000004 xLastTime.0
00002da8 l     O .bss	00000004 xTimerQueue
00002dac l     O .bss	00000004 xTimerTaskHandle
00000000 l    df *ABS*	00000000 riscv-virt.c
00000000 l    df *ABS*	00000000 interrupt.c
00000000 l    df *ABS*	00000000 portASM.o
00002590 l       .text	00000000 test_if_asynchronous
00002614 l       .text	00000000 handle_synchronous
0000259c l       .text	00000000 handle_asynchronous
0000259c l       .text	00000000 test_if_mtimer
00002600 l       .text	00000000 test_if_external_interrupt
00002648 l       .text	00000000 processed_source
00002640 l       .text	00000000 as_yet_unhandled
0000261c l       .text	00000000 test_if_environment_call
00002630 l       .text	00000000 is_exception
00002830 l       .text	00000000 chip_specific_stack_frame
00000000 l    df *ABS*	00000000 libgcc2.c
00000000 l    df *ABS*	00000000 memcpy.c
00000000 l    df *ABS*	00000000 strlen.c
00000000 l    df *ABS*	00000000 libgcc2.c
00002d2c g     O .data	00000004 PWM_PORT
00002d34 g     O .data	00000004 TOHOST_PORT
000023ec g     F .text	0000009c TaskLineTrace
00003520 g       .data	00000000 __global_pointer$
00000b18 g     F .text	000000a8 vQueueWaitForMessageRestricted
00002244 g     F .text	000000b0 init_EXINT
00002d24 g     O .data	00000004 pullNextTime
000014c0 g     F .text	00000030 vTaskEnterCritical
00000858 g     F .text	000000c4 xQueueGenericSendFromISR
00002d60 g     O .bss	00000004 pxCurrentTCB
00002b84 g       .text	00000000 _etext
00000400 g       *ABS*	00000000 __stack_size
00001388 g     F .text	0000001c vTaskInternalSetTimeOutState
000003ac g     F .text	0000002c xPortStartScheduler
000028f4 g     F .text	00000128 memcpy
00001238 g     F .text	00000038 vTaskPlaceOnEventList
00000328  w    F .text	00000084 vPortSetupTimerInterrupt
00002204 g     F .text	00000040 set_PWM
000002c0 g     F .text	00000068 vPortFree
00002338 g     F .text	00000080 handle_trap
00000be8 g     F .text	00000030 vListInsertEnd
00000be0 g     F .text	00000008 vListInitialiseItem
0000091c g     F .text	000001bc xQueueReceive
00014dc0 g     O .bss	00000040 xQueueRegistry
00002d30 g     O .data	00000004 SEG_PORT
00014f18 g     O .bss	00000080 exints
000023b8 g     F .text	00000034 TaskHeartBeat
00000164 g     F .text	0000015c pvPortMalloc
000022f4 g     F .text	00000044 get_EXINT
00000bc0 g     F .text	00000020 vListInitialise
00000ee0 g     F .text	0000000c xTaskGetTickCount
000006c0 g     F .text	00000198 xQueueGenericSend
00014f98 g       .bss	00000000 _ebss
000013d8 g     F .text	000000e8 xTaskPriorityDisinherit
000153a0 g       .stack	00000000 _stack_top
00002500 g       .text	00000000 freertos_risc_v_trap_handler
000021d8 g     F .text	0000002c set_SEG
00002b84 g       .rodata.align	00000000 _rodata
000012bc g     F .text	000000cc xTaskRemoveFromEventList
00002488 g     F .text	00000020 vApplicationMallocFailedHook
000024c8 g     F .text	00000004 vApplicationTickHook
00002d3c g     O .data	00000004 xISRStackTop
00002884 g     F .text	0000004c .hidden __clzsi2
00001adc g     F .text	00000104 xTaskCheckForTimeOut
00002d40 g       .bss.align	00000000 _bss
00000000 g     F .init	00000000 _start
00000ec8 g     F .text	00000018 vTaskSuspendAll
00000c68 g     F .text	00000050 uxListRemove
000028d0 g     F .text	00000024 .hidden __mulsi3
00001140 g     F .text	000000f8 vTaskSwitchContext
00002d40 g       *ABS*	00000000 _bss_lma
00001270 g     F .text	0000004c vTaskPlaceOnEventListRestricted
00001cd0 g     F .text	000000d4 xTimerGenericCommand
000024a8 g     F .text	00000020 vApplicationStackOverflowHook
00000000 g       .init	00000000 _text
00002a1c g     F .text	000000dc memset
00000100 g     F .text	00000064 main
000021c8 g     F .text	00000010 simrv_exit
00000c18 g     F .text	00000050 vListInsert
00001c78 g     F .text	00000058 xTimerCreateTimerTask
00002b84 g       *ABS*	00000000 _rodata_lma
00000604 g     F .text	000000bc xQueueGenericCreate
000018c8 g     F .text	000001cc xTaskResumeAll
00002d28 g     O .data	00000004 uxTopUsedPriority
00002c1c g     O .rodata	00000100 .hidden __clz_tab
00001834 g     F .text	00000094 vTaskStartScheduler
0000215c g     F .text	0000006c vSendString
00002700 g       .text	00000000 xPortStartFirstTask
00002d1c g       .data.align	00000000 _data
000013a4 g     F .text	00000010 vTaskMissedYield
00000ad8 g     F .text	00000040 vQueueAddToRegistry
00000eec g     F .text	00000254 xTaskIncrementTick
00002d54 g     O .bss	00000004 pullMachineTimerCompareRegister
00002d40 g       .data	00000000 _edata
00014f98 g       .bss	00000000 _end
00001534 g     F .text	00000300 xTaskCreate
00002d1c g       *ABS*	00000000 _data_lma
00002d38 g     O .data	00000004 uxTimerIncrementsForOneTick
00001a94 g     F .text	00000048 vTaskDelay
000013b4 g     F .text	00000024 xTaskGetSchedulerState
000014f0 g     F .text	00000044 vTaskExitCritical
00002af8 g     F .text	0000008c strlen
00002800 g       .text	00000000 pxPortInitialiseStack
00002d58 g     O .bss	00000008 ullNextTime
00002d1c g       .rodata	00000000 _erodata



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
  80:	4a418193          	addi	gp,gp,1188 # 3520 <__global_pointer$>
  84:	f1402573          	csrr	a0,mhartid
  88:	00000593          	li	a1,0
  8c:	04b51263          	bne	a0,a1,d0 <secondary>
  90:	00015117          	auipc	sp,0x15
  94:	31010113          	addi	sp,sp,784 # 153a0 <_stack_top>
  98:	00003517          	auipc	a0,0x3
  9c:	ca850513          	addi	a0,a0,-856 # 2d40 <xEnd>
  a0:	00015597          	auipc	a1,0x15
  a4:	ef858593          	addi	a1,a1,-264 # 14f98 <_ebss>
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
     108:	ac050513          	addi	a0,a0,-1344 # 2bc4 <_etext+0x40>
     10c:	00112623          	sw	ra,12(sp)
     110:	04c020ef          	jal	ra,215c <vSendString>
     114:	00000793          	li	a5,0
     118:	00300713          	li	a4,3
     11c:	00000693          	li	a3,0
     120:	40000613          	li	a2,1024
     124:	00003597          	auipc	a1,0x3
     128:	ab458593          	addi	a1,a1,-1356 # 2bd8 <_etext+0x54>
     12c:	00002517          	auipc	a0,0x2
     130:	2c050513          	addi	a0,a0,704 # 23ec <TaskLineTrace>
     134:	400010ef          	jal	ra,1534 <xTaskCreate>
     138:	00000793          	li	a5,0
     13c:	00300713          	li	a4,3
     140:	00000693          	li	a3,0
     144:	40000613          	li	a2,1024
     148:	00003597          	auipc	a1,0x3
     14c:	aa058593          	addi	a1,a1,-1376 # 2be8 <_etext+0x64>
     150:	00002517          	auipc	a0,0x2
     154:	26850513          	addi	a0,a0,616 # 23b8 <TaskHeartBeat>
     158:	3dc010ef          	jal	ra,1534 <xTaskCreate>
     15c:	6d8010ef          	jal	ra,1834 <vTaskStartScheduler>
     160:	0000006f          	j	160 <main+0x60>

00000164 <pvPortMalloc>:
     164:	ff010113          	addi	sp,sp,-16
     168:	00812423          	sw	s0,8(sp)
     16c:	00112623          	sw	ra,12(sp)
     170:	00050413          	mv	s0,a0
     174:	555000ef          	jal	ra,ec8 <vTaskSuspendAll>
     178:	00003717          	auipc	a4,0x3
     17c:	bd070713          	addi	a4,a4,-1072 # 2d48 <xHeapHasBeenInitialised.0>
     180:	00072783          	lw	a5,0(a4)
     184:	04079663          	bnez	a5,1d0 <pvPortMalloc+0x6c>
     188:	00003797          	auipc	a5,0x3
     18c:	c3c78793          	addi	a5,a5,-964 # 2dc4 <ucHeap+0x10>
     190:	000106b7          	lui	a3,0x10
     194:	ff07f793          	andi	a5,a5,-16
     198:	00003617          	auipc	a2,0x3
     19c:	ba860613          	addi	a2,a2,-1112 # 2d40 <xEnd>
     1a0:	ff068693          	addi	a3,a3,-16 # fff0 <__global_pointer$+0xcad0>
     1a4:	00003597          	auipc	a1,0x3
     1a8:	baf5a423          	sw	a5,-1112(a1) # 2d4c <xStart>
     1ac:	00d7a223          	sw	a3,4(a5)
     1b0:	00c7a023          	sw	a2,0(a5)
     1b4:	00100793          	li	a5,1
     1b8:	00003597          	auipc	a1,0x3
     1bc:	b805ac23          	sw	zero,-1128(a1) # 2d50 <xStart+0x4>
     1c0:	00d62223          	sw	a3,4(a2)
     1c4:	00003597          	auipc	a1,0x3
     1c8:	b605ae23          	sw	zero,-1156(a1) # 2d40 <xEnd>
     1cc:	00f72023          	sw	a5,0(a4)
     1d0:	fff40793          	addi	a5,s0,-1
     1d4:	fee00713          	li	a4,-18
     1d8:	0cf76463          	bltu	a4,a5,2a0 <pvPortMalloc+0x13c>
     1dc:	01040413          	addi	s0,s0,16
     1e0:	ff047613          	andi	a2,s0,-16
     1e4:	01060613          	addi	a2,a2,16
     1e8:	0ac47c63          	bgeu	s0,a2,2a0 <pvPortMalloc+0x13c>
     1ec:	00003817          	auipc	a6,0x3
     1f0:	b3480813          	addi	a6,a6,-1228 # 2d20 <xFreeBytesRemaining>
     1f4:	00082503          	lw	a0,0(a6)
     1f8:	0ac56463          	bltu	a0,a2,2a0 <pvPortMalloc+0x13c>
     1fc:	00003597          	auipc	a1,0x3
     200:	b5058593          	addi	a1,a1,-1200 # 2d4c <xStart>
     204:	0005a783          	lw	a5,0(a1)
     208:	0140006f          	j	21c <pvPortMalloc+0xb8>
     20c:	0007a703          	lw	a4,0(a5)
     210:	00070a63          	beqz	a4,224 <pvPortMalloc+0xc0>
     214:	00078593          	mv	a1,a5
     218:	00070793          	mv	a5,a4
     21c:	0047a683          	lw	a3,4(a5)
     220:	fec6e6e3          	bltu	a3,a2,20c <pvPortMalloc+0xa8>
     224:	00003717          	auipc	a4,0x3
     228:	b1c70713          	addi	a4,a4,-1252 # 2d40 <xEnd>
     22c:	06e78a63          	beq	a5,a4,2a0 <pvPortMalloc+0x13c>
     230:	0007a883          	lw	a7,0(a5)
     234:	0005a403          	lw	s0,0(a1)
     238:	40c68733          	sub	a4,a3,a2
     23c:	0115a023          	sw	a7,0(a1)
     240:	02000593          	li	a1,32
     244:	01040413          	addi	s0,s0,16
     248:	02e5fc63          	bgeu	a1,a4,280 <pvPortMalloc+0x11c>
     24c:	00c788b3          	add	a7,a5,a2
     250:	00e8a223          	sw	a4,4(a7)
     254:	00c7a223          	sw	a2,4(a5)
     258:	0048a583          	lw	a1,4(a7)
     25c:	00003797          	auipc	a5,0x3
     260:	af078793          	addi	a5,a5,-1296 # 2d4c <xStart>
     264:	00078693          	mv	a3,a5
     268:	0007a783          	lw	a5,0(a5)
     26c:	0047a703          	lw	a4,4(a5)
     270:	feb76ae3          	bltu	a4,a1,264 <pvPortMalloc+0x100>
     274:	00f8a023          	sw	a5,0(a7)
     278:	0116a023          	sw	a7,0(a3)
     27c:	00060693          	mv	a3,a2
     280:	40d50533          	sub	a0,a0,a3
     284:	00a82023          	sw	a0,0(a6)
     288:	640010ef          	jal	ra,18c8 <xTaskResumeAll>
     28c:	00c12083          	lw	ra,12(sp)
     290:	00040513          	mv	a0,s0
     294:	00812403          	lw	s0,8(sp)
     298:	01010113          	addi	sp,sp,16
     29c:	00008067          	ret
     2a0:	628010ef          	jal	ra,18c8 <xTaskResumeAll>
     2a4:	1e4020ef          	jal	ra,2488 <vApplicationMallocFailedHook>
     2a8:	00000413          	li	s0,0
     2ac:	00c12083          	lw	ra,12(sp)
     2b0:	00040513          	mv	a0,s0
     2b4:	00812403          	lw	s0,8(sp)
     2b8:	01010113          	addi	sp,sp,16
     2bc:	00008067          	ret

000002c0 <vPortFree>:
     2c0:	06050263          	beqz	a0,324 <vPortFree+0x64>
     2c4:	ff010113          	addi	sp,sp,-16
     2c8:	00812423          	sw	s0,8(sp)
     2cc:	00112623          	sw	ra,12(sp)
     2d0:	00050413          	mv	s0,a0
     2d4:	3f5000ef          	jal	ra,ec8 <vTaskSuspendAll>
     2d8:	ff442683          	lw	a3,-12(s0)
     2dc:	ff040513          	addi	a0,s0,-16
     2e0:	00003797          	auipc	a5,0x3
     2e4:	a6c78793          	addi	a5,a5,-1428 # 2d4c <xStart>
     2e8:	00078613          	mv	a2,a5
     2ec:	0007a783          	lw	a5,0(a5)
     2f0:	0047a703          	lw	a4,4(a5)
     2f4:	fed76ae3          	bltu	a4,a3,2e8 <vPortFree+0x28>
     2f8:	00003597          	auipc	a1,0x3
     2fc:	a2858593          	addi	a1,a1,-1496 # 2d20 <xFreeBytesRemaining>
     300:	0005a703          	lw	a4,0(a1)
     304:	fef42823          	sw	a5,-16(s0)
     308:	00812403          	lw	s0,8(sp)
     30c:	00c12083          	lw	ra,12(sp)
     310:	00d707b3          	add	a5,a4,a3
     314:	00a62023          	sw	a0,0(a2)
     318:	00f5a023          	sw	a5,0(a1)
     31c:	01010113          	addi	sp,sp,16
     320:	5a80106f          	j	18c8 <xTaskResumeAll>
     324:	00008067          	ret

00000328 <vPortSetupTimerInterrupt>:
     328:	ff010113          	addi	sp,sp,-16
     32c:	f14027f3          	csrr	a5,mhartid
     330:	00f12623          	sw	a5,12(sp)
     334:	00c12583          	lw	a1,12(sp)
     338:	0c0017b7          	lui	a5,0xc001
     33c:	80078793          	addi	a5,a5,-2048 # c000800 <_stack_top+0xbfeb460>
     340:	00f585b3          	add	a1,a1,a5
     344:	00359593          	slli	a1,a1,0x3
     348:	00003797          	auipc	a5,0x3
     34c:	a0b7a623          	sw	a1,-1524(a5) # 2d54 <pullMachineTimerCompareRegister>
     350:	6000c7b7          	lui	a5,0x6000c
     354:	ffc7a683          	lw	a3,-4(a5) # 6000bffc <_stack_top+0x5fff6c5c>
     358:	ff87a603          	lw	a2,-8(a5)
     35c:	ffc7a703          	lw	a4,-4(a5)
     360:	fed71ae3          	bne	a4,a3,354 <vPortSetupTimerInterrupt+0x2c>
     364:	000186b7          	lui	a3,0x18
     368:	6a068693          	addi	a3,a3,1696 # 186a0 <_stack_top+0x3300>
     36c:	000317b7          	lui	a5,0x31
     370:	00d606b3          	add	a3,a2,a3
     374:	d4078793          	addi	a5,a5,-704 # 30d40 <_stack_top+0x1b9a0>
     378:	00c6b533          	sltu	a0,a3,a2
     37c:	00f607b3          	add	a5,a2,a5
     380:	00d5a023          	sw	a3,0(a1)
     384:	00e508b3          	add	a7,a0,a4
     388:	00c7b633          	sltu	a2,a5,a2
     38c:	0115a223          	sw	a7,4(a1)
     390:	00003697          	auipc	a3,0x3
     394:	9c868693          	addi	a3,a3,-1592 # 2d58 <ullNextTime>
     398:	00e60633          	add	a2,a2,a4
     39c:	00f6a023          	sw	a5,0(a3)
     3a0:	00c6a223          	sw	a2,4(a3)
     3a4:	01010113          	addi	sp,sp,16
     3a8:	00008067          	ret

000003ac <xPortStartScheduler>:
     3ac:	ff010113          	addi	sp,sp,-16
     3b0:	00112623          	sw	ra,12(sp)
     3b4:	f75ff0ef          	jal	ra,328 <vPortSetupTimerInterrupt>
     3b8:	000017b7          	lui	a5,0x1
     3bc:	88078793          	addi	a5,a5,-1920 # 880 <xQueueGenericSendFromISR+0x28>
     3c0:	3047a073          	csrs	mie,a5
     3c4:	33c020ef          	jal	ra,2700 <xPortStartFirstTask>
     3c8:	00c12083          	lw	ra,12(sp)
     3cc:	00000513          	li	a0,0
     3d0:	01010113          	addi	sp,sp,16
     3d4:	00008067          	ret

000003d8 <prvCopyDataToQueue>:
     3d8:	ff010113          	addi	sp,sp,-16
     3dc:	04052783          	lw	a5,64(a0)
     3e0:	00912223          	sw	s1,4(sp)
     3e4:	03852483          	lw	s1,56(a0)
     3e8:	00812423          	sw	s0,8(sp)
     3ec:	00112623          	sw	ra,12(sp)
     3f0:	01212023          	sw	s2,0(sp)
     3f4:	00050413          	mv	s0,a0
     3f8:	02079863          	bnez	a5,428 <__stack_size+0x28>
     3fc:	00052783          	lw	a5,0(a0)
     400:	00148493          	addi	s1,s1,1
     404:	00000513          	li	a0,0
     408:	0c078c63          	beqz	a5,4e0 <__stack_size+0xe0>
     40c:	02942c23          	sw	s1,56(s0)
     410:	00c12083          	lw	ra,12(sp)
     414:	00812403          	lw	s0,8(sp)
     418:	00412483          	lw	s1,4(sp)
     41c:	00012903          	lw	s2,0(sp)
     420:	01010113          	addi	sp,sp,16
     424:	00008067          	ret
     428:	00060913          	mv	s2,a2
     42c:	04061a63          	bnez	a2,480 <__stack_size+0x80>
     430:	00452503          	lw	a0,4(a0)
     434:	00078613          	mv	a2,a5
     438:	00148493          	addi	s1,s1,1
     43c:	4b8020ef          	jal	ra,28f4 <memcpy>
     440:	00442783          	lw	a5,4(s0)
     444:	04042683          	lw	a3,64(s0)
     448:	00842703          	lw	a4,8(s0)
     44c:	00000513          	li	a0,0
     450:	00d787b3          	add	a5,a5,a3
     454:	00f42223          	sw	a5,4(s0)
     458:	fae7eae3          	bltu	a5,a4,40c <__stack_size+0xc>
     45c:	00042783          	lw	a5,0(s0)
     460:	02942c23          	sw	s1,56(s0)
     464:	00c12083          	lw	ra,12(sp)
     468:	00f42223          	sw	a5,4(s0)
     46c:	00812403          	lw	s0,8(sp)
     470:	00412483          	lw	s1,4(sp)
     474:	00012903          	lw	s2,0(sp)
     478:	01010113          	addi	sp,sp,16
     47c:	00008067          	ret
     480:	00c52503          	lw	a0,12(a0)
     484:	00078613          	mv	a2,a5
     488:	46c020ef          	jal	ra,28f4 <memcpy>
     48c:	04042703          	lw	a4,64(s0)
     490:	00c42783          	lw	a5,12(s0)
     494:	00042683          	lw	a3,0(s0)
     498:	40e00633          	neg	a2,a4
     49c:	40e787b3          	sub	a5,a5,a4
     4a0:	00f42623          	sw	a5,12(s0)
     4a4:	00d7f863          	bgeu	a5,a3,4b4 <__stack_size+0xb4>
     4a8:	00842783          	lw	a5,8(s0)
     4ac:	00c787b3          	add	a5,a5,a2
     4b0:	00f42623          	sw	a5,12(s0)
     4b4:	00200793          	li	a5,2
     4b8:	02f90c63          	beq	s2,a5,4f0 <__stack_size+0xf0>
     4bc:	00148493          	addi	s1,s1,1
     4c0:	02942c23          	sw	s1,56(s0)
     4c4:	00c12083          	lw	ra,12(sp)
     4c8:	00812403          	lw	s0,8(sp)
     4cc:	00412483          	lw	s1,4(sp)
     4d0:	00012903          	lw	s2,0(sp)
     4d4:	00000513          	li	a0,0
     4d8:	01010113          	addi	sp,sp,16
     4dc:	00008067          	ret
     4e0:	00842503          	lw	a0,8(s0)
     4e4:	6f5000ef          	jal	ra,13d8 <xTaskPriorityDisinherit>
     4e8:	00042423          	sw	zero,8(s0)
     4ec:	f21ff06f          	j	40c <__stack_size+0xc>
     4f0:	00048663          	beqz	s1,4fc <__stack_size+0xfc>
     4f4:	00000513          	li	a0,0
     4f8:	f15ff06f          	j	40c <__stack_size+0xc>
     4fc:	00100493          	li	s1,1
     500:	00000513          	li	a0,0
     504:	f09ff06f          	j	40c <__stack_size+0xc>

00000508 <prvUnlockQueue>:
     508:	ff010113          	addi	sp,sp,-16
     50c:	00812423          	sw	s0,8(sp)
     510:	00912223          	sw	s1,4(sp)
     514:	00112623          	sw	ra,12(sp)
     518:	00050493          	mv	s1,a0
     51c:	01212023          	sw	s2,0(sp)
     520:	7a1000ef          	jal	ra,14c0 <vTaskEnterCritical>
     524:	0454c783          	lbu	a5,69(s1)
     528:	01879413          	slli	s0,a5,0x18
     52c:	41845413          	srai	s0,s0,0x18
     530:	04805663          	blez	s0,57c <prvUnlockQueue+0x74>
     534:	02448913          	addi	s2,s1,36
     538:	0180006f          	j	550 <prvUnlockQueue+0x48>
     53c:	fff40793          	addi	a5,s0,-1
     540:	01879413          	slli	s0,a5,0x18
     544:	0ff7f713          	zext.b	a4,a5
     548:	41845413          	srai	s0,s0,0x18
     54c:	02070863          	beqz	a4,57c <prvUnlockQueue+0x74>
     550:	0244a783          	lw	a5,36(s1)
     554:	00090513          	mv	a0,s2
     558:	02078263          	beqz	a5,57c <prvUnlockQueue+0x74>
     55c:	561000ef          	jal	ra,12bc <xTaskRemoveFromEventList>
     560:	fc050ee3          	beqz	a0,53c <prvUnlockQueue+0x34>
     564:	641000ef          	jal	ra,13a4 <vTaskMissedYield>
     568:	fff40793          	addi	a5,s0,-1
     56c:	01879413          	slli	s0,a5,0x18
     570:	0ff7f713          	zext.b	a4,a5
     574:	41845413          	srai	s0,s0,0x18
     578:	fc071ce3          	bnez	a4,550 <prvUnlockQueue+0x48>
     57c:	fff00793          	li	a5,-1
     580:	04f482a3          	sb	a5,69(s1)
     584:	76d000ef          	jal	ra,14f0 <vTaskExitCritical>
     588:	739000ef          	jal	ra,14c0 <vTaskEnterCritical>
     58c:	0444c783          	lbu	a5,68(s1)
     590:	01879413          	slli	s0,a5,0x18
     594:	41845413          	srai	s0,s0,0x18
     598:	04805663          	blez	s0,5e4 <prvUnlockQueue+0xdc>
     59c:	01048913          	addi	s2,s1,16
     5a0:	0180006f          	j	5b8 <prvUnlockQueue+0xb0>
     5a4:	fff40793          	addi	a5,s0,-1
     5a8:	01879413          	slli	s0,a5,0x18
     5ac:	0ff7f713          	zext.b	a4,a5
     5b0:	41845413          	srai	s0,s0,0x18
     5b4:	02070863          	beqz	a4,5e4 <prvUnlockQueue+0xdc>
     5b8:	0104a783          	lw	a5,16(s1)
     5bc:	00090513          	mv	a0,s2
     5c0:	02078263          	beqz	a5,5e4 <prvUnlockQueue+0xdc>
     5c4:	4f9000ef          	jal	ra,12bc <xTaskRemoveFromEventList>
     5c8:	fc050ee3          	beqz	a0,5a4 <prvUnlockQueue+0x9c>
     5cc:	5d9000ef          	jal	ra,13a4 <vTaskMissedYield>
     5d0:	fff40793          	addi	a5,s0,-1
     5d4:	01879413          	slli	s0,a5,0x18
     5d8:	0ff7f713          	zext.b	a4,a5
     5dc:	41845413          	srai	s0,s0,0x18
     5e0:	fc071ce3          	bnez	a4,5b8 <prvUnlockQueue+0xb0>
     5e4:	fff00793          	li	a5,-1
     5e8:	04f48223          	sb	a5,68(s1)
     5ec:	00812403          	lw	s0,8(sp)
     5f0:	00c12083          	lw	ra,12(sp)
     5f4:	00412483          	lw	s1,4(sp)
     5f8:	00012903          	lw	s2,0(sp)
     5fc:	01010113          	addi	sp,sp,16
     600:	6f10006f          	j	14f0 <vTaskExitCritical>

00000604 <xQueueGenericCreate>:
     604:	ff010113          	addi	sp,sp,-16
     608:	00112623          	sw	ra,12(sp)
     60c:	00812423          	sw	s0,8(sp)
     610:	00912223          	sw	s1,4(sp)
     614:	01212023          	sw	s2,0(sp)
     618:	00058493          	mv	s1,a1
     61c:	00050913          	mv	s2,a0
     620:	2b0020ef          	jal	ra,28d0 <__mulsi3>
     624:	04850513          	addi	a0,a0,72
     628:	b3dff0ef          	jal	ra,164 <pvPortMalloc>
     62c:	00050413          	mv	s0,a0
     630:	06050663          	beqz	a0,69c <xQueueGenericCreate+0x98>
     634:	00050793          	mv	a5,a0
     638:	08049063          	bnez	s1,6b8 <xQueueGenericCreate+0xb4>
     63c:	00f42023          	sw	a5,0(s0)
     640:	03242e23          	sw	s2,60(s0)
     644:	04942023          	sw	s1,64(s0)
     648:	679000ef          	jal	ra,14c0 <vTaskEnterCritical>
     64c:	04042483          	lw	s1,64(s0)
     650:	03c42583          	lw	a1,60(s0)
     654:	00042903          	lw	s2,0(s0)
     658:	00048513          	mv	a0,s1
     65c:	274020ef          	jal	ra,28d0 <__mulsi3>
     660:	fff00713          	li	a4,-1
     664:	02042c23          	sw	zero,56(s0)
     668:	409504b3          	sub	s1,a0,s1
     66c:	00a907b3          	add	a5,s2,a0
     670:	04e40223          	sb	a4,68(s0)
     674:	009904b3          	add	s1,s2,s1
     678:	01040513          	addi	a0,s0,16
     67c:	00f42423          	sw	a5,8(s0)
     680:	04e402a3          	sb	a4,69(s0)
     684:	01242223          	sw	s2,4(s0)
     688:	00942623          	sw	s1,12(s0)
     68c:	534000ef          	jal	ra,bc0 <vListInitialise>
     690:	02440513          	addi	a0,s0,36
     694:	52c000ef          	jal	ra,bc0 <vListInitialise>
     698:	659000ef          	jal	ra,14f0 <vTaskExitCritical>
     69c:	00c12083          	lw	ra,12(sp)
     6a0:	00040513          	mv	a0,s0
     6a4:	00812403          	lw	s0,8(sp)
     6a8:	00412483          	lw	s1,4(sp)
     6ac:	00012903          	lw	s2,0(sp)
     6b0:	01010113          	addi	sp,sp,16
     6b4:	00008067          	ret
     6b8:	04850793          	addi	a5,a0,72
     6bc:	f81ff06f          	j	63c <xQueueGenericCreate+0x38>

000006c0 <xQueueGenericSend>:
     6c0:	fc010113          	addi	sp,sp,-64
     6c4:	02812c23          	sw	s0,56(sp)
     6c8:	02912a23          	sw	s1,52(sp)
     6cc:	00050413          	mv	s0,a0
     6d0:	03212823          	sw	s2,48(sp)
     6d4:	03312623          	sw	s3,44(sp)
     6d8:	03412423          	sw	s4,40(sp)
     6dc:	03512223          	sw	s5,36(sp)
     6e0:	03612023          	sw	s6,32(sp)
     6e4:	02112e23          	sw	ra,60(sp)
     6e8:	00058a93          	mv	s5,a1
     6ec:	00c12623          	sw	a2,12(sp)
     6f0:	00068913          	mv	s2,a3
     6f4:	01050a13          	addi	s4,a0,16
     6f8:	5c9000ef          	jal	ra,14c0 <vTaskEnterCritical>
     6fc:	03842703          	lw	a4,56(s0)
     700:	03c42783          	lw	a5,60(s0)
     704:	00000b13          	li	s6,0
     708:	00200993          	li	s3,2
     70c:	fff00493          	li	s1,-1
     710:	08f76863          	bltu	a4,a5,7a0 <xQueueGenericSend+0xe0>
     714:	09390663          	beq	s2,s3,7a0 <xQueueGenericSend+0xe0>
     718:	00c12783          	lw	a5,12(sp)
     71c:	10078e63          	beqz	a5,838 <xQueueGenericSend+0x178>
     720:	0e0b0c63          	beqz	s6,818 <xQueueGenericSend+0x158>
     724:	5cd000ef          	jal	ra,14f0 <vTaskExitCritical>
     728:	7a0000ef          	jal	ra,ec8 <vTaskSuspendAll>
     72c:	595000ef          	jal	ra,14c0 <vTaskEnterCritical>
     730:	04444783          	lbu	a5,68(s0)
     734:	01879793          	slli	a5,a5,0x18
     738:	4187d793          	srai	a5,a5,0x18
     73c:	00979463          	bne	a5,s1,744 <xQueueGenericSend+0x84>
     740:	04040223          	sb	zero,68(s0)
     744:	04544783          	lbu	a5,69(s0)
     748:	01879793          	slli	a5,a5,0x18
     74c:	4187d793          	srai	a5,a5,0x18
     750:	00979463          	bne	a5,s1,758 <xQueueGenericSend+0x98>
     754:	040402a3          	sb	zero,69(s0)
     758:	599000ef          	jal	ra,14f0 <vTaskExitCritical>
     75c:	00c10593          	addi	a1,sp,12
     760:	01810513          	addi	a0,sp,24
     764:	378010ef          	jal	ra,1adc <xTaskCheckForTimeOut>
     768:	0c051e63          	bnez	a0,844 <xQueueGenericSend+0x184>
     76c:	555000ef          	jal	ra,14c0 <vTaskEnterCritical>
     770:	03842703          	lw	a4,56(s0)
     774:	03c42783          	lw	a5,60(s0)
     778:	06f70a63          	beq	a4,a5,7ec <xQueueGenericSend+0x12c>
     77c:	575000ef          	jal	ra,14f0 <vTaskExitCritical>
     780:	00040513          	mv	a0,s0
     784:	d85ff0ef          	jal	ra,508 <prvUnlockQueue>
     788:	140010ef          	jal	ra,18c8 <xTaskResumeAll>
     78c:	00100b13          	li	s6,1
     790:	531000ef          	jal	ra,14c0 <vTaskEnterCritical>
     794:	03842703          	lw	a4,56(s0)
     798:	03c42783          	lw	a5,60(s0)
     79c:	f6f77ce3          	bgeu	a4,a5,714 <xQueueGenericSend+0x54>
     7a0:	00090613          	mv	a2,s2
     7a4:	000a8593          	mv	a1,s5
     7a8:	00040513          	mv	a0,s0
     7ac:	c2dff0ef          	jal	ra,3d8 <prvCopyDataToQueue>
     7b0:	02442783          	lw	a5,36(s0)
     7b4:	06079863          	bnez	a5,824 <xQueueGenericSend+0x164>
     7b8:	06051c63          	bnez	a0,830 <xQueueGenericSend+0x170>
     7bc:	535000ef          	jal	ra,14f0 <vTaskExitCritical>
     7c0:	00100513          	li	a0,1
     7c4:	03c12083          	lw	ra,60(sp)
     7c8:	03812403          	lw	s0,56(sp)
     7cc:	03412483          	lw	s1,52(sp)
     7d0:	03012903          	lw	s2,48(sp)
     7d4:	02c12983          	lw	s3,44(sp)
     7d8:	02812a03          	lw	s4,40(sp)
     7dc:	02412a83          	lw	s5,36(sp)
     7e0:	02012b03          	lw	s6,32(sp)
     7e4:	04010113          	addi	sp,sp,64
     7e8:	00008067          	ret
     7ec:	505000ef          	jal	ra,14f0 <vTaskExitCritical>
     7f0:	00c12583          	lw	a1,12(sp)
     7f4:	000a0513          	mv	a0,s4
     7f8:	241000ef          	jal	ra,1238 <vTaskPlaceOnEventList>
     7fc:	00040513          	mv	a0,s0
     800:	d09ff0ef          	jal	ra,508 <prvUnlockQueue>
     804:	0c4010ef          	jal	ra,18c8 <xTaskResumeAll>
     808:	f80512e3          	bnez	a0,78c <xQueueGenericSend+0xcc>
     80c:	00000073          	ecall
     810:	00100b13          	li	s6,1
     814:	f7dff06f          	j	790 <xQueueGenericSend+0xd0>
     818:	01810513          	addi	a0,sp,24
     81c:	36d000ef          	jal	ra,1388 <vTaskInternalSetTimeOutState>
     820:	f05ff06f          	j	724 <xQueueGenericSend+0x64>
     824:	02440513          	addi	a0,s0,36
     828:	295000ef          	jal	ra,12bc <xTaskRemoveFromEventList>
     82c:	f80508e3          	beqz	a0,7bc <xQueueGenericSend+0xfc>
     830:	00000073          	ecall
     834:	f89ff06f          	j	7bc <xQueueGenericSend+0xfc>
     838:	4b9000ef          	jal	ra,14f0 <vTaskExitCritical>
     83c:	00000513          	li	a0,0
     840:	f85ff06f          	j	7c4 <xQueueGenericSend+0x104>
     844:	00040513          	mv	a0,s0
     848:	cc1ff0ef          	jal	ra,508 <prvUnlockQueue>
     84c:	07c010ef          	jal	ra,18c8 <xTaskResumeAll>
     850:	00000513          	li	a0,0
     854:	f71ff06f          	j	7c4 <xQueueGenericSend+0x104>

00000858 <xQueueGenericSendFromISR>:
     858:	03852703          	lw	a4,56(a0)
     85c:	03c52783          	lw	a5,60(a0)
     860:	ff010113          	addi	sp,sp,-16
     864:	00812423          	sw	s0,8(sp)
     868:	01212023          	sw	s2,0(sp)
     86c:	00112623          	sw	ra,12(sp)
     870:	00912223          	sw	s1,4(sp)
     874:	00060913          	mv	s2,a2
     878:	00050413          	mv	s0,a0
     87c:	00068613          	mv	a2,a3
     880:	02f76463          	bltu	a4,a5,8a8 <xQueueGenericSendFromISR+0x50>
     884:	00200793          	li	a5,2
     888:	00000513          	li	a0,0
     88c:	00f68e63          	beq	a3,a5,8a8 <xQueueGenericSendFromISR+0x50>
     890:	00c12083          	lw	ra,12(sp)
     894:	00812403          	lw	s0,8(sp)
     898:	00412483          	lw	s1,4(sp)
     89c:	00012903          	lw	s2,0(sp)
     8a0:	01010113          	addi	sp,sp,16
     8a4:	00008067          	ret
     8a8:	04544483          	lbu	s1,69(s0)
     8ac:	03842783          	lw	a5,56(s0)
     8b0:	00040513          	mv	a0,s0
     8b4:	01849493          	slli	s1,s1,0x18
     8b8:	b21ff0ef          	jal	ra,3d8 <prvCopyDataToQueue>
     8bc:	4184d493          	srai	s1,s1,0x18
     8c0:	fff00793          	li	a5,-1
     8c4:	02f48863          	beq	s1,a5,8f4 <xQueueGenericSendFromISR+0x9c>
     8c8:	00148493          	addi	s1,s1,1
     8cc:	01849493          	slli	s1,s1,0x18
     8d0:	4184d493          	srai	s1,s1,0x18
     8d4:	049402a3          	sb	s1,69(s0)
     8d8:	00c12083          	lw	ra,12(sp)
     8dc:	00812403          	lw	s0,8(sp)
     8e0:	00412483          	lw	s1,4(sp)
     8e4:	00012903          	lw	s2,0(sp)
     8e8:	00100513          	li	a0,1
     8ec:	01010113          	addi	sp,sp,16
     8f0:	00008067          	ret
     8f4:	02442783          	lw	a5,36(s0)
     8f8:	fe0780e3          	beqz	a5,8d8 <xQueueGenericSendFromISR+0x80>
     8fc:	02440513          	addi	a0,s0,36
     900:	1bd000ef          	jal	ra,12bc <xTaskRemoveFromEventList>
     904:	fc050ae3          	beqz	a0,8d8 <xQueueGenericSendFromISR+0x80>
     908:	fc0908e3          	beqz	s2,8d8 <xQueueGenericSendFromISR+0x80>
     90c:	00100793          	li	a5,1
     910:	00f92023          	sw	a5,0(s2)
     914:	00100513          	li	a0,1
     918:	f79ff06f          	j	890 <xQueueGenericSendFromISR+0x38>

0000091c <xQueueReceive>:
     91c:	fc010113          	addi	sp,sp,-64
     920:	02812c23          	sw	s0,56(sp)
     924:	00050413          	mv	s0,a0
     928:	03212823          	sw	s2,48(sp)
     92c:	03312623          	sw	s3,44(sp)
     930:	02112e23          	sw	ra,60(sp)
     934:	02912a23          	sw	s1,52(sp)
     938:	03412423          	sw	s4,40(sp)
     93c:	00058993          	mv	s3,a1
     940:	00c12623          	sw	a2,12(sp)
     944:	37d000ef          	jal	ra,14c0 <vTaskEnterCritical>
     948:	03842903          	lw	s2,56(s0)
     94c:	10091463          	bnez	s2,a54 <xQueueReceive+0x138>
     950:	00c12783          	lw	a5,12(sp)
     954:	08078e63          	beqz	a5,9f0 <xQueueReceive+0xd4>
     958:	01810513          	addi	a0,sp,24
     95c:	22d000ef          	jal	ra,1388 <vTaskInternalSetTimeOutState>
     960:	fff00493          	li	s1,-1
     964:	02440a13          	addi	s4,s0,36
     968:	389000ef          	jal	ra,14f0 <vTaskExitCritical>
     96c:	55c000ef          	jal	ra,ec8 <vTaskSuspendAll>
     970:	351000ef          	jal	ra,14c0 <vTaskEnterCritical>
     974:	04444783          	lbu	a5,68(s0)
     978:	01879793          	slli	a5,a5,0x18
     97c:	4187d793          	srai	a5,a5,0x18
     980:	00979463          	bne	a5,s1,988 <xQueueReceive+0x6c>
     984:	04040223          	sb	zero,68(s0)
     988:	04544783          	lbu	a5,69(s0)
     98c:	01879793          	slli	a5,a5,0x18
     990:	4187d793          	srai	a5,a5,0x18
     994:	00979463          	bne	a5,s1,99c <xQueueReceive+0x80>
     998:	040402a3          	sb	zero,69(s0)
     99c:	355000ef          	jal	ra,14f0 <vTaskExitCritical>
     9a0:	00c10593          	addi	a1,sp,12
     9a4:	01810513          	addi	a0,sp,24
     9a8:	134010ef          	jal	ra,1adc <xTaskCheckForTimeOut>
     9ac:	06051663          	bnez	a0,a18 <xQueueReceive+0xfc>
     9b0:	311000ef          	jal	ra,14c0 <vTaskEnterCritical>
     9b4:	03842783          	lw	a5,56(s0)
     9b8:	08079063          	bnez	a5,a38 <xQueueReceive+0x11c>
     9bc:	335000ef          	jal	ra,14f0 <vTaskExitCritical>
     9c0:	00c12583          	lw	a1,12(sp)
     9c4:	000a0513          	mv	a0,s4
     9c8:	071000ef          	jal	ra,1238 <vTaskPlaceOnEventList>
     9cc:	00040513          	mv	a0,s0
     9d0:	b39ff0ef          	jal	ra,508 <prvUnlockQueue>
     9d4:	6f5000ef          	jal	ra,18c8 <xTaskResumeAll>
     9d8:	0c050c63          	beqz	a0,ab0 <xQueueReceive+0x194>
     9dc:	2e5000ef          	jal	ra,14c0 <vTaskEnterCritical>
     9e0:	03842903          	lw	s2,56(s0)
     9e4:	06091863          	bnez	s2,a54 <xQueueReceive+0x138>
     9e8:	00c12783          	lw	a5,12(sp)
     9ec:	f6079ee3          	bnez	a5,968 <xQueueReceive+0x4c>
     9f0:	301000ef          	jal	ra,14f0 <vTaskExitCritical>
     9f4:	03c12083          	lw	ra,60(sp)
     9f8:	03812403          	lw	s0,56(sp)
     9fc:	03412483          	lw	s1,52(sp)
     a00:	03012903          	lw	s2,48(sp)
     a04:	02c12983          	lw	s3,44(sp)
     a08:	02812a03          	lw	s4,40(sp)
     a0c:	00000513          	li	a0,0
     a10:	04010113          	addi	sp,sp,64
     a14:	00008067          	ret
     a18:	00040513          	mv	a0,s0
     a1c:	aedff0ef          	jal	ra,508 <prvUnlockQueue>
     a20:	6a9000ef          	jal	ra,18c8 <xTaskResumeAll>
     a24:	29d000ef          	jal	ra,14c0 <vTaskEnterCritical>
     a28:	03842783          	lw	a5,56(s0)
     a2c:	fc0782e3          	beqz	a5,9f0 <xQueueReceive+0xd4>
     a30:	2c1000ef          	jal	ra,14f0 <vTaskExitCritical>
     a34:	fa9ff06f          	j	9dc <xQueueReceive+0xc0>
     a38:	2b9000ef          	jal	ra,14f0 <vTaskExitCritical>
     a3c:	00040513          	mv	a0,s0
     a40:	ac9ff0ef          	jal	ra,508 <prvUnlockQueue>
     a44:	685000ef          	jal	ra,18c8 <xTaskResumeAll>
     a48:	279000ef          	jal	ra,14c0 <vTaskEnterCritical>
     a4c:	03842903          	lw	s2,56(s0)
     a50:	f8090ce3          	beqz	s2,9e8 <xQueueReceive+0xcc>
     a54:	04042603          	lw	a2,64(s0)
     a58:	02060063          	beqz	a2,a78 <xQueueReceive+0x15c>
     a5c:	00c42583          	lw	a1,12(s0)
     a60:	00842783          	lw	a5,8(s0)
     a64:	00c585b3          	add	a1,a1,a2
     a68:	00b42623          	sw	a1,12(s0)
     a6c:	04f5f663          	bgeu	a1,a5,ab8 <xQueueReceive+0x19c>
     a70:	00098513          	mv	a0,s3
     a74:	681010ef          	jal	ra,28f4 <memcpy>
     a78:	fff90913          	addi	s2,s2,-1
     a7c:	03242c23          	sw	s2,56(s0)
     a80:	01042783          	lw	a5,16(s0)
     a84:	04079063          	bnez	a5,ac4 <xQueueReceive+0x1a8>
     a88:	269000ef          	jal	ra,14f0 <vTaskExitCritical>
     a8c:	03c12083          	lw	ra,60(sp)
     a90:	03812403          	lw	s0,56(sp)
     a94:	03412483          	lw	s1,52(sp)
     a98:	03012903          	lw	s2,48(sp)
     a9c:	02c12983          	lw	s3,44(sp)
     aa0:	02812a03          	lw	s4,40(sp)
     aa4:	00100513          	li	a0,1
     aa8:	04010113          	addi	sp,sp,64
     aac:	00008067          	ret
     ab0:	00000073          	ecall
     ab4:	f29ff06f          	j	9dc <xQueueReceive+0xc0>
     ab8:	00042583          	lw	a1,0(s0)
     abc:	00b42623          	sw	a1,12(s0)
     ac0:	fb1ff06f          	j	a70 <xQueueReceive+0x154>
     ac4:	01040513          	addi	a0,s0,16
     ac8:	7f4000ef          	jal	ra,12bc <xTaskRemoveFromEventList>
     acc:	fa050ee3          	beqz	a0,a88 <xQueueReceive+0x16c>
     ad0:	00000073          	ecall
     ad4:	fb5ff06f          	j	a88 <xQueueReceive+0x16c>

00000ad8 <vQueueAddToRegistry>:
     ad8:	00014817          	auipc	a6,0x14
     adc:	2e880813          	addi	a6,a6,744 # 14dc0 <xQueueRegistry>
     ae0:	00080713          	mv	a4,a6
     ae4:	00000793          	li	a5,0
     ae8:	00800613          	li	a2,8
     aec:	00072683          	lw	a3,0(a4)
     af0:	00870713          	addi	a4,a4,8
     af4:	00068863          	beqz	a3,b04 <vQueueAddToRegistry+0x2c>
     af8:	00178793          	addi	a5,a5,1
     afc:	fec798e3          	bne	a5,a2,aec <vQueueAddToRegistry+0x14>
     b00:	00008067          	ret
     b04:	00379793          	slli	a5,a5,0x3
     b08:	00f80833          	add	a6,a6,a5
     b0c:	00b82023          	sw	a1,0(a6)
     b10:	00a82223          	sw	a0,4(a6)
     b14:	00008067          	ret

00000b18 <vQueueWaitForMessageRestricted>:
     b18:	ff010113          	addi	sp,sp,-16
     b1c:	00812423          	sw	s0,8(sp)
     b20:	00912223          	sw	s1,4(sp)
     b24:	01212023          	sw	s2,0(sp)
     b28:	00050413          	mv	s0,a0
     b2c:	00112623          	sw	ra,12(sp)
     b30:	00058493          	mv	s1,a1
     b34:	00060913          	mv	s2,a2
     b38:	189000ef          	jal	ra,14c0 <vTaskEnterCritical>
     b3c:	04444783          	lbu	a5,68(s0)
     b40:	fff00713          	li	a4,-1
     b44:	01879793          	slli	a5,a5,0x18
     b48:	4187d793          	srai	a5,a5,0x18
     b4c:	00e79463          	bne	a5,a4,b54 <vQueueWaitForMessageRestricted+0x3c>
     b50:	04040223          	sb	zero,68(s0)
     b54:	04544783          	lbu	a5,69(s0)
     b58:	fff00713          	li	a4,-1
     b5c:	01879793          	slli	a5,a5,0x18
     b60:	4187d793          	srai	a5,a5,0x18
     b64:	00e79463          	bne	a5,a4,b6c <vQueueWaitForMessageRestricted+0x54>
     b68:	040402a3          	sb	zero,69(s0)
     b6c:	185000ef          	jal	ra,14f0 <vTaskExitCritical>
     b70:	03842783          	lw	a5,56(s0)
     b74:	02078063          	beqz	a5,b94 <vQueueWaitForMessageRestricted+0x7c>
     b78:	00040513          	mv	a0,s0
     b7c:	00812403          	lw	s0,8(sp)
     b80:	00c12083          	lw	ra,12(sp)
     b84:	00412483          	lw	s1,4(sp)
     b88:	00012903          	lw	s2,0(sp)
     b8c:	01010113          	addi	sp,sp,16
     b90:	979ff06f          	j	508 <prvUnlockQueue>
     b94:	02440513          	addi	a0,s0,36
     b98:	00090613          	mv	a2,s2
     b9c:	00048593          	mv	a1,s1
     ba0:	6d0000ef          	jal	ra,1270 <vTaskPlaceOnEventListRestricted>
     ba4:	00040513          	mv	a0,s0
     ba8:	00812403          	lw	s0,8(sp)
     bac:	00c12083          	lw	ra,12(sp)
     bb0:	00412483          	lw	s1,4(sp)
     bb4:	00012903          	lw	s2,0(sp)
     bb8:	01010113          	addi	sp,sp,16
     bbc:	94dff06f          	j	508 <prvUnlockQueue>

00000bc0 <vListInitialise>:
     bc0:	00850793          	addi	a5,a0,8
     bc4:	fff00713          	li	a4,-1
     bc8:	00f52223          	sw	a5,4(a0)
     bcc:	00e52423          	sw	a4,8(a0)
     bd0:	00f52623          	sw	a5,12(a0)
     bd4:	00f52823          	sw	a5,16(a0)
     bd8:	00052023          	sw	zero,0(a0)
     bdc:	00008067          	ret

00000be0 <vListInitialiseItem>:
     be0:	00052823          	sw	zero,16(a0)
     be4:	00008067          	ret

00000be8 <vListInsertEnd>:
     be8:	00452783          	lw	a5,4(a0)
     bec:	00052703          	lw	a4,0(a0)
     bf0:	0087a683          	lw	a3,8(a5)
     bf4:	00f5a223          	sw	a5,4(a1)
     bf8:	00170713          	addi	a4,a4,1
     bfc:	00d5a423          	sw	a3,8(a1)
     c00:	0087a683          	lw	a3,8(a5)
     c04:	00b6a223          	sw	a1,4(a3)
     c08:	00b7a423          	sw	a1,8(a5)
     c0c:	00a5a823          	sw	a0,16(a1)
     c10:	00e52023          	sw	a4,0(a0)
     c14:	00008067          	ret

00000c18 <vListInsert>:
     c18:	0005a603          	lw	a2,0(a1)
     c1c:	fff00713          	li	a4,-1
     c20:	00850793          	addi	a5,a0,8
     c24:	02e60c63          	beq	a2,a4,c5c <vListInsert+0x44>
     c28:	00078693          	mv	a3,a5
     c2c:	0047a783          	lw	a5,4(a5)
     c30:	0007a703          	lw	a4,0(a5)
     c34:	fee67ae3          	bgeu	a2,a4,c28 <vListInsert+0x10>
     c38:	00f5a223          	sw	a5,4(a1)
     c3c:	00b7a423          	sw	a1,8(a5)
     c40:	00052783          	lw	a5,0(a0)
     c44:	00d5a423          	sw	a3,8(a1)
     c48:	00b6a223          	sw	a1,4(a3)
     c4c:	00a5a823          	sw	a0,16(a1)
     c50:	00178793          	addi	a5,a5,1
     c54:	00f52023          	sw	a5,0(a0)
     c58:	00008067          	ret
     c5c:	01052683          	lw	a3,16(a0)
     c60:	0046a783          	lw	a5,4(a3)
     c64:	fd5ff06f          	j	c38 <vListInsert+0x20>

00000c68 <uxListRemove>:
     c68:	01052783          	lw	a5,16(a0)
     c6c:	00452683          	lw	a3,4(a0)
     c70:	00852703          	lw	a4,8(a0)
     c74:	0047a603          	lw	a2,4(a5)
     c78:	00e6a423          	sw	a4,8(a3)
     c7c:	00d72223          	sw	a3,4(a4)
     c80:	00a60e63          	beq	a2,a0,c9c <uxListRemove+0x34>
     c84:	0007a703          	lw	a4,0(a5)
     c88:	00052823          	sw	zero,16(a0)
     c8c:	fff70713          	addi	a4,a4,-1
     c90:	00e7a023          	sw	a4,0(a5)
     c94:	0007a503          	lw	a0,0(a5)
     c98:	00008067          	ret
     c9c:	00e7a223          	sw	a4,4(a5)
     ca0:	0007a703          	lw	a4,0(a5)
     ca4:	00052823          	sw	zero,16(a0)
     ca8:	fff70713          	addi	a4,a4,-1
     cac:	00e7a023          	sw	a4,0(a5)
     cb0:	0007a503          	lw	a0,0(a5)
     cb4:	00008067          	ret

00000cb8 <prvAddCurrentTaskToDelayedList>:
     cb8:	fe010113          	addi	sp,sp,-32
     cbc:	00912a23          	sw	s1,20(sp)
     cc0:	00002497          	auipc	s1,0x2
     cc4:	0a048493          	addi	s1,s1,160 # 2d60 <pxCurrentTCB>
     cc8:	01212823          	sw	s2,16(sp)
     ccc:	00002917          	auipc	s2,0x2
     cd0:	0c892903          	lw	s2,200(s2) # 2d94 <xTickCount>
     cd4:	0004a703          	lw	a4,0(s1)
     cd8:	0004a783          	lw	a5,0(s1)
     cdc:	00812c23          	sw	s0,24(sp)
     ce0:	01312623          	sw	s3,12(sp)
     ce4:	00112e23          	sw	ra,28(sp)
     ce8:	00050413          	mv	s0,a0
     cec:	04070aa3          	sb	zero,85(a4)
     cf0:	00478513          	addi	a0,a5,4
     cf4:	00058993          	mv	s3,a1
     cf8:	f71ff0ef          	jal	ra,c68 <uxListRemove>
     cfc:	02051663          	bnez	a0,d28 <prvAddCurrentTaskToDelayedList+0x70>
     d00:	0004a783          	lw	a5,0(s1)
     d04:	00002717          	auipc	a4,0x2
     d08:	07870713          	addi	a4,a4,120 # 2d7c <uxTopReadyPriority>
     d0c:	00072683          	lw	a3,0(a4)
     d10:	02c7a603          	lw	a2,44(a5)
     d14:	00100793          	li	a5,1
     d18:	00c797b3          	sll	a5,a5,a2
     d1c:	fff7c793          	not	a5,a5
     d20:	00d7f7b3          	and	a5,a5,a3
     d24:	00f72023          	sw	a5,0(a4)
     d28:	fff00793          	li	a5,-1
     d2c:	08f40263          	beq	s0,a5,db0 <prvAddCurrentTaskToDelayedList+0xf8>
     d30:	0004a783          	lw	a5,0(s1)
     d34:	00890433          	add	s0,s2,s0
     d38:	0087a223          	sw	s0,4(a5)
     d3c:	05246463          	bltu	s0,s2,d84 <prvAddCurrentTaskToDelayedList+0xcc>
     d40:	00002517          	auipc	a0,0x2
     d44:	02452503          	lw	a0,36(a0) # 2d64 <pxDelayedTaskList>
     d48:	0004a583          	lw	a1,0(s1)
     d4c:	00458593          	addi	a1,a1,4
     d50:	ec9ff0ef          	jal	ra,c18 <vListInsert>
     d54:	00002797          	auipc	a5,0x2
     d58:	03078793          	addi	a5,a5,48 # 2d84 <xNextTaskUnblockTime>
     d5c:	0007a703          	lw	a4,0(a5)
     d60:	00e47463          	bgeu	s0,a4,d68 <prvAddCurrentTaskToDelayedList+0xb0>
     d64:	0087a023          	sw	s0,0(a5)
     d68:	01c12083          	lw	ra,28(sp)
     d6c:	01812403          	lw	s0,24(sp)
     d70:	01412483          	lw	s1,20(sp)
     d74:	01012903          	lw	s2,16(sp)
     d78:	00c12983          	lw	s3,12(sp)
     d7c:	02010113          	addi	sp,sp,32
     d80:	00008067          	ret
     d84:	01812403          	lw	s0,24(sp)
     d88:	00002517          	auipc	a0,0x2
     d8c:	fe052503          	lw	a0,-32(a0) # 2d68 <pxOverflowDelayedTaskList>
     d90:	0004a583          	lw	a1,0(s1)
     d94:	01c12083          	lw	ra,28(sp)
     d98:	01412483          	lw	s1,20(sp)
     d9c:	01012903          	lw	s2,16(sp)
     da0:	00c12983          	lw	s3,12(sp)
     da4:	00458593          	addi	a1,a1,4
     da8:	02010113          	addi	sp,sp,32
     dac:	e6dff06f          	j	c18 <vListInsert>
     db0:	f80980e3          	beqz	s3,d30 <prvAddCurrentTaskToDelayedList+0x78>
     db4:	0004a583          	lw	a1,0(s1)
     db8:	01812403          	lw	s0,24(sp)
     dbc:	01c12083          	lw	ra,28(sp)
     dc0:	01412483          	lw	s1,20(sp)
     dc4:	01012903          	lw	s2,16(sp)
     dc8:	00c12983          	lw	s3,12(sp)
     dcc:	00014517          	auipc	a0,0x14
     dd0:	0fc50513          	addi	a0,a0,252 # 14ec8 <xSuspendedTaskList>
     dd4:	00458593          	addi	a1,a1,4
     dd8:	02010113          	addi	sp,sp,32
     ddc:	e0dff06f          	j	be8 <vListInsertEnd>

00000de0 <prvIdleTask>:
     de0:	fe010113          	addi	sp,sp,-32
     de4:	00912a23          	sw	s1,20(sp)
     de8:	01212823          	sw	s2,16(sp)
     dec:	01312623          	sw	s3,12(sp)
     df0:	01412423          	sw	s4,8(sp)
     df4:	01512223          	sw	s5,4(sp)
     df8:	00112e23          	sw	ra,28(sp)
     dfc:	00812c23          	sw	s0,24(sp)
     e00:	00002497          	auipc	s1,0x2
     e04:	f7048493          	addi	s1,s1,-144 # 2d70 <uxDeletedTasksWaitingCleanUp>
     e08:	00002997          	auipc	s3,0x2
     e0c:	f8898993          	addi	s3,s3,-120 # 2d90 <xSchedulerRunning>
     e10:	00002a17          	auipc	s4,0x2
     e14:	f50a0a13          	addi	s4,s4,-176 # 2d60 <pxCurrentTCB>
     e18:	00014a97          	auipc	s5,0x14
     e1c:	0c4a8a93          	addi	s5,s5,196 # 14edc <xTasksWaitingTermination>
     e20:	00002917          	auipc	s2,0x2
     e24:	f4c90913          	addi	s2,s2,-180 # 2d6c <uxCurrentNumberOfTasks>
     e28:	0004a783          	lw	a5,0(s1)
     e2c:	fe078ee3          	beqz	a5,e28 <prvIdleTask+0x48>
     e30:	30047073          	csrci	mstatus,8
     e34:	0009a783          	lw	a5,0(s3)
     e38:	00078c63          	beqz	a5,e50 <prvIdleTask+0x70>
     e3c:	000a2703          	lw	a4,0(s4)
     e40:	000a2783          	lw	a5,0(s4)
     e44:	04472783          	lw	a5,68(a4)
     e48:	00178793          	addi	a5,a5,1
     e4c:	04f72223          	sw	a5,68(a4)
     e50:	00caa783          	lw	a5,12(s5)
     e54:	00c7a403          	lw	s0,12(a5)
     e58:	00440513          	addi	a0,s0,4
     e5c:	e0dff0ef          	jal	ra,c68 <uxListRemove>
     e60:	00092783          	lw	a5,0(s2)
     e64:	fff78793          	addi	a5,a5,-1
     e68:	00f92023          	sw	a5,0(s2)
     e6c:	0004a783          	lw	a5,0(s1)
     e70:	fff78793          	addi	a5,a5,-1
     e74:	00f4a023          	sw	a5,0(s1)
     e78:	0009a783          	lw	a5,0(s3)
     e7c:	02078863          	beqz	a5,eac <prvIdleTask+0xcc>
     e80:	000a2783          	lw	a5,0(s4)
     e84:	0447a783          	lw	a5,68(a5)
     e88:	02078263          	beqz	a5,eac <prvIdleTask+0xcc>
     e8c:	000a2703          	lw	a4,0(s4)
     e90:	000a2683          	lw	a3,0(s4)
     e94:	04472783          	lw	a5,68(a4)
     e98:	fff78793          	addi	a5,a5,-1
     e9c:	04f72223          	sw	a5,68(a4)
     ea0:	0446a783          	lw	a5,68(a3)
     ea4:	00079463          	bnez	a5,eac <prvIdleTask+0xcc>
     ea8:	30046073          	csrsi	mstatus,8
     eac:	03042503          	lw	a0,48(s0)
     eb0:	c10ff0ef          	jal	ra,2c0 <vPortFree>
     eb4:	00040513          	mv	a0,s0
     eb8:	c08ff0ef          	jal	ra,2c0 <vPortFree>
     ebc:	0004a783          	lw	a5,0(s1)
     ec0:	f60798e3          	bnez	a5,e30 <prvIdleTask+0x50>
     ec4:	f65ff06f          	j	e28 <prvIdleTask+0x48>

00000ec8 <vTaskSuspendAll>:
     ec8:	00002717          	auipc	a4,0x2
     ecc:	eac70713          	addi	a4,a4,-340 # 2d74 <uxSchedulerSuspended>
     ed0:	00072783          	lw	a5,0(a4)
     ed4:	00178793          	addi	a5,a5,1
     ed8:	00f72023          	sw	a5,0(a4)
     edc:	00008067          	ret

00000ee0 <xTaskGetTickCount>:
     ee0:	00002517          	auipc	a0,0x2
     ee4:	eb452503          	lw	a0,-332(a0) # 2d94 <xTickCount>
     ee8:	00008067          	ret

00000eec <xTaskIncrementTick>:
     eec:	fd010113          	addi	sp,sp,-48
     ef0:	02112623          	sw	ra,44(sp)
     ef4:	02812423          	sw	s0,40(sp)
     ef8:	02912223          	sw	s1,36(sp)
     efc:	03212023          	sw	s2,32(sp)
     f00:	01312e23          	sw	s3,28(sp)
     f04:	01412c23          	sw	s4,24(sp)
     f08:	01512a23          	sw	s5,20(sp)
     f0c:	01612823          	sw	s6,16(sp)
     f10:	01712623          	sw	s7,12(sp)
     f14:	01812423          	sw	s8,8(sp)
     f18:	01912223          	sw	s9,4(sp)
     f1c:	00002797          	auipc	a5,0x2
     f20:	e587a783          	lw	a5,-424(a5) # 2d74 <uxSchedulerSuspended>
     f24:	1c079663          	bnez	a5,10f0 <xTaskIncrementTick+0x204>
     f28:	00002797          	auipc	a5,0x2
     f2c:	e6c78793          	addi	a5,a5,-404 # 2d94 <xTickCount>
     f30:	0007a483          	lw	s1,0(a5)
     f34:	00002c17          	auipc	s8,0x2
     f38:	e50c0c13          	addi	s8,s8,-432 # 2d84 <xNextTaskUnblockTime>
     f3c:	00148493          	addi	s1,s1,1
     f40:	0097a023          	sw	s1,0(a5)
     f44:	14048c63          	beqz	s1,109c <xTaskIncrementTick+0x1b0>
     f48:	000c2783          	lw	a5,0(s8)
     f4c:	0cf4e063          	bltu	s1,a5,100c <xTaskIncrementTick+0x120>
     f50:	00002917          	auipc	s2,0x2
     f54:	e1490913          	addi	s2,s2,-492 # 2d64 <pxDelayedTaskList>
     f58:	00092783          	lw	a5,0(s2)
     f5c:	00000b13          	li	s6,0
     f60:	00014a17          	auipc	s4,0x14
     f64:	ea0a0a13          	addi	s4,s4,-352 # 14e00 <pxReadyTasksLists>
     f68:	0007a783          	lw	a5,0(a5)
     f6c:	00002a97          	auipc	s5,0x2
     f70:	df4a8a93          	addi	s5,s5,-524 # 2d60 <pxCurrentTCB>
     f74:	1c078063          	beqz	a5,1134 <xTaskIncrementTick+0x248>
     f78:	00002997          	auipc	s3,0x2
     f7c:	e0498993          	addi	s3,s3,-508 # 2d7c <uxTopReadyPriority>
     f80:	00100b93          	li	s7,1
     f84:	0640006f          	j	fe8 <xTaskIncrementTick+0xfc>
     f88:	ce1ff0ef          	jal	ra,c68 <uxListRemove>
     f8c:	02842783          	lw	a5,40(s0)
     f90:	01840513          	addi	a0,s0,24
     f94:	00078463          	beqz	a5,f9c <xTaskIncrementTick+0xb0>
     f98:	cd1ff0ef          	jal	ra,c68 <uxListRemove>
     f9c:	02c42783          	lw	a5,44(s0)
     fa0:	0009a703          	lw	a4,0(s3)
     fa4:	000c8593          	mv	a1,s9
     fa8:	00279513          	slli	a0,a5,0x2
     fac:	00f50533          	add	a0,a0,a5
     fb0:	00251513          	slli	a0,a0,0x2
     fb4:	00fb97b3          	sll	a5,s7,a5
     fb8:	00e7e7b3          	or	a5,a5,a4
     fbc:	00aa0533          	add	a0,s4,a0
     fc0:	00f9a023          	sw	a5,0(s3)
     fc4:	c25ff0ef          	jal	ra,be8 <vListInsertEnd>
     fc8:	000aa783          	lw	a5,0(s5)
     fcc:	02c42703          	lw	a4,44(s0)
     fd0:	02c7a783          	lw	a5,44(a5)
     fd4:	00f76463          	bltu	a4,a5,fdc <xTaskIncrementTick+0xf0>
     fd8:	00100b13          	li	s6,1
     fdc:	00092783          	lw	a5,0(s2)
     fe0:	0007a783          	lw	a5,0(a5)
     fe4:	14078863          	beqz	a5,1134 <xTaskIncrementTick+0x248>
     fe8:	00092783          	lw	a5,0(s2)
     fec:	00c7a783          	lw	a5,12(a5)
     ff0:	00c7a403          	lw	s0,12(a5)
     ff4:	00442783          	lw	a5,4(s0)
     ff8:	00440c93          	addi	s9,s0,4
     ffc:	000c8513          	mv	a0,s9
    1000:	f8f4f4e3          	bgeu	s1,a5,f88 <xTaskIncrementTick+0x9c>
    1004:	00fc2023          	sw	a5,0(s8)
    1008:	0180006f          	j	1020 <xTaskIncrementTick+0x134>
    100c:	00000b13          	li	s6,0
    1010:	00014a17          	auipc	s4,0x14
    1014:	df0a0a13          	addi	s4,s4,-528 # 14e00 <pxReadyTasksLists>
    1018:	00002a97          	auipc	s5,0x2
    101c:	d48a8a93          	addi	s5,s5,-696 # 2d60 <pxCurrentTCB>
    1020:	000aa783          	lw	a5,0(s5)
    1024:	00100693          	li	a3,1
    1028:	02c7a703          	lw	a4,44(a5)
    102c:	00271793          	slli	a5,a4,0x2
    1030:	00e787b3          	add	a5,a5,a4
    1034:	00279793          	slli	a5,a5,0x2
    1038:	00fa0a33          	add	s4,s4,a5
    103c:	000a2783          	lw	a5,0(s4)
    1040:	00f6f463          	bgeu	a3,a5,1048 <xTaskIncrementTick+0x15c>
    1044:	00100b13          	li	s6,1
    1048:	00002797          	auipc	a5,0x2
    104c:	d447a783          	lw	a5,-700(a5) # 2d8c <xPendedTicks>
    1050:	0c078063          	beqz	a5,1110 <xTaskIncrementTick+0x224>
    1054:	00002797          	auipc	a5,0x2
    1058:	d447a783          	lw	a5,-700(a5) # 2d98 <xYieldPending>
    105c:	00078463          	beqz	a5,1064 <xTaskIncrementTick+0x178>
    1060:	00100b13          	li	s6,1
    1064:	02c12083          	lw	ra,44(sp)
    1068:	02812403          	lw	s0,40(sp)
    106c:	02412483          	lw	s1,36(sp)
    1070:	02012903          	lw	s2,32(sp)
    1074:	01c12983          	lw	s3,28(sp)
    1078:	01812a03          	lw	s4,24(sp)
    107c:	01412a83          	lw	s5,20(sp)
    1080:	00c12b83          	lw	s7,12(sp)
    1084:	00812c03          	lw	s8,8(sp)
    1088:	00412c83          	lw	s9,4(sp)
    108c:	000b0513          	mv	a0,s6
    1090:	01012b03          	lw	s6,16(sp)
    1094:	03010113          	addi	sp,sp,48
    1098:	00008067          	ret
    109c:	00002797          	auipc	a5,0x2
    10a0:	cc878793          	addi	a5,a5,-824 # 2d64 <pxDelayedTaskList>
    10a4:	00002717          	auipc	a4,0x2
    10a8:	cc470713          	addi	a4,a4,-828 # 2d68 <pxOverflowDelayedTaskList>
    10ac:	0007a603          	lw	a2,0(a5)
    10b0:	00072583          	lw	a1,0(a4)
    10b4:	00002697          	auipc	a3,0x2
    10b8:	cd468693          	addi	a3,a3,-812 # 2d88 <xNumOfOverflows>
    10bc:	00b7a023          	sw	a1,0(a5)
    10c0:	00c72023          	sw	a2,0(a4)
    10c4:	0006a703          	lw	a4,0(a3)
    10c8:	00170713          	addi	a4,a4,1
    10cc:	00e6a023          	sw	a4,0(a3)
    10d0:	0007a703          	lw	a4,0(a5)
    10d4:	00072703          	lw	a4,0(a4)
    10d8:	04071063          	bnez	a4,1118 <xTaskIncrementTick+0x22c>
    10dc:	fff00793          	li	a5,-1
    10e0:	00fc2023          	sw	a5,0(s8)
    10e4:	000c2783          	lw	a5,0(s8)
    10e8:	f2f4e2e3          	bltu	s1,a5,100c <xTaskIncrementTick+0x120>
    10ec:	e65ff06f          	j	f50 <xTaskIncrementTick+0x64>
    10f0:	00002717          	auipc	a4,0x2
    10f4:	c9c70713          	addi	a4,a4,-868 # 2d8c <xPendedTicks>
    10f8:	00072783          	lw	a5,0(a4)
    10fc:	00000b13          	li	s6,0
    1100:	00178793          	addi	a5,a5,1
    1104:	00f72023          	sw	a5,0(a4)
    1108:	3c0010ef          	jal	ra,24c8 <vApplicationTickHook>
    110c:	f59ff06f          	j	1064 <xTaskIncrementTick+0x178>
    1110:	3b8010ef          	jal	ra,24c8 <vApplicationTickHook>
    1114:	f41ff06f          	j	1054 <xTaskIncrementTick+0x168>
    1118:	0007a783          	lw	a5,0(a5)
    111c:	00c7a783          	lw	a5,12(a5)
    1120:	0007a783          	lw	a5,0(a5)
    1124:	00fc2023          	sw	a5,0(s8)
    1128:	000c2783          	lw	a5,0(s8)
    112c:	eef4e0e3          	bltu	s1,a5,100c <xTaskIncrementTick+0x120>
    1130:	e21ff06f          	j	f50 <xTaskIncrementTick+0x64>
    1134:	fff00793          	li	a5,-1
    1138:	00fc2023          	sw	a5,0(s8)
    113c:	ee5ff06f          	j	1020 <xTaskIncrementTick+0x134>

00001140 <vTaskSwitchContext>:
    1140:	00002797          	auipc	a5,0x2
    1144:	c347a783          	lw	a5,-972(a5) # 2d74 <uxSchedulerSuspended>
    1148:	00078a63          	beqz	a5,115c <vTaskSwitchContext+0x1c>
    114c:	00100793          	li	a5,1
    1150:	00002717          	auipc	a4,0x2
    1154:	c4f72423          	sw	a5,-952(a4) # 2d98 <xYieldPending>
    1158:	00008067          	ret
    115c:	ff010113          	addi	sp,sp,-16
    1160:	00002797          	auipc	a5,0x2
    1164:	c207ac23          	sw	zero,-968(a5) # 2d98 <xYieldPending>
    1168:	00812423          	sw	s0,8(sp)
    116c:	00002417          	auipc	s0,0x2
    1170:	bf440413          	addi	s0,s0,-1036 # 2d60 <pxCurrentTCB>
    1174:	00042703          	lw	a4,0(s0)
    1178:	a5a5a7b7          	lui	a5,0xa5a5a
    117c:	00112623          	sw	ra,12(sp)
    1180:	03072703          	lw	a4,48(a4)
    1184:	5a578793          	addi	a5,a5,1445 # a5a5a5a5 <_stack_top+0xa5a45205>
    1188:	00072683          	lw	a3,0(a4)
    118c:	00f69663          	bne	a3,a5,1198 <vTaskSwitchContext+0x58>
    1190:	00472783          	lw	a5,4(a4)
    1194:	06d78863          	beq	a5,a3,1204 <vTaskSwitchContext+0xc4>
    1198:	00042503          	lw	a0,0(s0)
    119c:	00042583          	lw	a1,0(s0)
    11a0:	03458593          	addi	a1,a1,52
    11a4:	304010ef          	jal	ra,24a8 <vApplicationStackOverflowHook>
    11a8:	00002517          	auipc	a0,0x2
    11ac:	bd452503          	lw	a0,-1068(a0) # 2d7c <uxTopReadyPriority>
    11b0:	6d4010ef          	jal	ra,2884 <__clzsi2>
    11b4:	01f00793          	li	a5,31
    11b8:	40a787b3          	sub	a5,a5,a0
    11bc:	00279513          	slli	a0,a5,0x2
    11c0:	00f50533          	add	a0,a0,a5
    11c4:	00251513          	slli	a0,a0,0x2
    11c8:	00014797          	auipc	a5,0x14
    11cc:	c3878793          	addi	a5,a5,-968 # 14e00 <pxReadyTasksLists>
    11d0:	00a786b3          	add	a3,a5,a0
    11d4:	0046a703          	lw	a4,4(a3)
    11d8:	00850513          	addi	a0,a0,8
    11dc:	00a787b3          	add	a5,a5,a0
    11e0:	00472703          	lw	a4,4(a4)
    11e4:	00e6a223          	sw	a4,4(a3)
    11e8:	02f70863          	beq	a4,a5,1218 <vTaskSwitchContext+0xd8>
    11ec:	00c72783          	lw	a5,12(a4)
    11f0:	00c12083          	lw	ra,12(sp)
    11f4:	00f42023          	sw	a5,0(s0)
    11f8:	00812403          	lw	s0,8(sp)
    11fc:	01010113          	addi	sp,sp,16
    1200:	00008067          	ret
    1204:	00872683          	lw	a3,8(a4)
    1208:	f8f698e3          	bne	a3,a5,1198 <vTaskSwitchContext+0x58>
    120c:	00c72783          	lw	a5,12(a4)
    1210:	f8d794e3          	bne	a5,a3,1198 <vTaskSwitchContext+0x58>
    1214:	f95ff06f          	j	11a8 <vTaskSwitchContext+0x68>
    1218:	00472703          	lw	a4,4(a4)
    121c:	00c12083          	lw	ra,12(sp)
    1220:	00c72783          	lw	a5,12(a4)
    1224:	00e6a223          	sw	a4,4(a3)
    1228:	00f42023          	sw	a5,0(s0)
    122c:	00812403          	lw	s0,8(sp)
    1230:	01010113          	addi	sp,sp,16
    1234:	00008067          	ret

00001238 <vTaskPlaceOnEventList>:
    1238:	ff010113          	addi	sp,sp,-16
    123c:	00002797          	auipc	a5,0x2
    1240:	b247a783          	lw	a5,-1244(a5) # 2d60 <pxCurrentTCB>
    1244:	00812423          	sw	s0,8(sp)
    1248:	00058413          	mv	s0,a1
    124c:	01878593          	addi	a1,a5,24
    1250:	00112623          	sw	ra,12(sp)
    1254:	9c5ff0ef          	jal	ra,c18 <vListInsert>
    1258:	00040513          	mv	a0,s0
    125c:	00812403          	lw	s0,8(sp)
    1260:	00c12083          	lw	ra,12(sp)
    1264:	00100593          	li	a1,1
    1268:	01010113          	addi	sp,sp,16
    126c:	a4dff06f          	j	cb8 <prvAddCurrentTaskToDelayedList>

00001270 <vTaskPlaceOnEventListRestricted>:
    1270:	ff010113          	addi	sp,sp,-16
    1274:	00002797          	auipc	a5,0x2
    1278:	aec7a783          	lw	a5,-1300(a5) # 2d60 <pxCurrentTCB>
    127c:	00812423          	sw	s0,8(sp)
    1280:	00912223          	sw	s1,4(sp)
    1284:	00060413          	mv	s0,a2
    1288:	00058493          	mv	s1,a1
    128c:	01878593          	addi	a1,a5,24
    1290:	00112623          	sw	ra,12(sp)
    1294:	955ff0ef          	jal	ra,be8 <vListInsertEnd>
    1298:	00040463          	beqz	s0,12a0 <vTaskPlaceOnEventListRestricted+0x30>
    129c:	fff00493          	li	s1,-1
    12a0:	00040593          	mv	a1,s0
    12a4:	00812403          	lw	s0,8(sp)
    12a8:	00c12083          	lw	ra,12(sp)
    12ac:	00048513          	mv	a0,s1
    12b0:	00412483          	lw	s1,4(sp)
    12b4:	01010113          	addi	sp,sp,16
    12b8:	a01ff06f          	j	cb8 <prvAddCurrentTaskToDelayedList>

000012bc <xTaskRemoveFromEventList>:
    12bc:	00c52783          	lw	a5,12(a0)
    12c0:	ff010113          	addi	sp,sp,-16
    12c4:	00812423          	sw	s0,8(sp)
    12c8:	00c7a403          	lw	s0,12(a5)
    12cc:	00912223          	sw	s1,4(sp)
    12d0:	00112623          	sw	ra,12(sp)
    12d4:	01840493          	addi	s1,s0,24
    12d8:	00048513          	mv	a0,s1
    12dc:	98dff0ef          	jal	ra,c68 <uxListRemove>
    12e0:	00002797          	auipc	a5,0x2
    12e4:	a947a783          	lw	a5,-1388(a5) # 2d74 <uxSchedulerSuspended>
    12e8:	08079663          	bnez	a5,1374 <xTaskRemoveFromEventList+0xb8>
    12ec:	00440493          	addi	s1,s0,4
    12f0:	00048513          	mv	a0,s1
    12f4:	975ff0ef          	jal	ra,c68 <uxListRemove>
    12f8:	02c42683          	lw	a3,44(s0)
    12fc:	00002617          	auipc	a2,0x2
    1300:	a8060613          	addi	a2,a2,-1408 # 2d7c <uxTopReadyPriority>
    1304:	00062583          	lw	a1,0(a2)
    1308:	00269713          	slli	a4,a3,0x2
    130c:	00d70733          	add	a4,a4,a3
    1310:	00100793          	li	a5,1
    1314:	00d797b3          	sll	a5,a5,a3
    1318:	00271713          	slli	a4,a4,0x2
    131c:	00014517          	auipc	a0,0x14
    1320:	ae450513          	addi	a0,a0,-1308 # 14e00 <pxReadyTasksLists>
    1324:	00b7e7b3          	or	a5,a5,a1
    1328:	00e50533          	add	a0,a0,a4
    132c:	00048593          	mv	a1,s1
    1330:	00f62023          	sw	a5,0(a2)
    1334:	8b5ff0ef          	jal	ra,be8 <vListInsertEnd>
    1338:	00002797          	auipc	a5,0x2
    133c:	a287a783          	lw	a5,-1496(a5) # 2d60 <pxCurrentTCB>
    1340:	02c42703          	lw	a4,44(s0)
    1344:	02c7a783          	lw	a5,44(a5)
    1348:	00000513          	li	a0,0
    134c:	00e7fa63          	bgeu	a5,a4,1360 <xTaskRemoveFromEventList+0xa4>
    1350:	00100793          	li	a5,1
    1354:	00002717          	auipc	a4,0x2
    1358:	a4f72223          	sw	a5,-1468(a4) # 2d98 <xYieldPending>
    135c:	00100513          	li	a0,1
    1360:	00c12083          	lw	ra,12(sp)
    1364:	00812403          	lw	s0,8(sp)
    1368:	00412483          	lw	s1,4(sp)
    136c:	01010113          	addi	sp,sp,16
    1370:	00008067          	ret
    1374:	00048593          	mv	a1,s1
    1378:	00014517          	auipc	a0,0x14
    137c:	b3c50513          	addi	a0,a0,-1220 # 14eb4 <xPendingReadyList>
    1380:	869ff0ef          	jal	ra,be8 <vListInsertEnd>
    1384:	fb5ff06f          	j	1338 <xTaskRemoveFromEventList+0x7c>

00001388 <vTaskInternalSetTimeOutState>:
    1388:	00002717          	auipc	a4,0x2
    138c:	a0072703          	lw	a4,-1536(a4) # 2d88 <xNumOfOverflows>
    1390:	00002797          	auipc	a5,0x2
    1394:	a047a783          	lw	a5,-1532(a5) # 2d94 <xTickCount>
    1398:	00e52023          	sw	a4,0(a0)
    139c:	00f52223          	sw	a5,4(a0)
    13a0:	00008067          	ret

000013a4 <vTaskMissedYield>:
    13a4:	00100793          	li	a5,1
    13a8:	00002717          	auipc	a4,0x2
    13ac:	9ef72823          	sw	a5,-1552(a4) # 2d98 <xYieldPending>
    13b0:	00008067          	ret

000013b4 <xTaskGetSchedulerState>:
    13b4:	00002797          	auipc	a5,0x2
    13b8:	9dc7a783          	lw	a5,-1572(a5) # 2d90 <xSchedulerRunning>
    13bc:	00100513          	li	a0,1
    13c0:	00078a63          	beqz	a5,13d4 <xTaskGetSchedulerState+0x20>
    13c4:	00002517          	auipc	a0,0x2
    13c8:	9b052503          	lw	a0,-1616(a0) # 2d74 <uxSchedulerSuspended>
    13cc:	00153513          	seqz	a0,a0
    13d0:	00151513          	slli	a0,a0,0x1
    13d4:	00008067          	ret

000013d8 <xTaskPriorityDisinherit>:
    13d8:	04050663          	beqz	a0,1424 <xTaskPriorityDisinherit+0x4c>
    13dc:	04c52783          	lw	a5,76(a0)
    13e0:	ff010113          	addi	sp,sp,-16
    13e4:	02c52683          	lw	a3,44(a0)
    13e8:	04852703          	lw	a4,72(a0)
    13ec:	00812423          	sw	s0,8(sp)
    13f0:	00112623          	sw	ra,12(sp)
    13f4:	00912223          	sw	s1,4(sp)
    13f8:	fff78793          	addi	a5,a5,-1
    13fc:	04f52623          	sw	a5,76(a0)
    1400:	00050413          	mv	s0,a0
    1404:	00e68463          	beq	a3,a4,140c <xTaskPriorityDisinherit+0x34>
    1408:	02078263          	beqz	a5,142c <xTaskPriorityDisinherit+0x54>
    140c:	00c12083          	lw	ra,12(sp)
    1410:	00812403          	lw	s0,8(sp)
    1414:	00412483          	lw	s1,4(sp)
    1418:	00000513          	li	a0,0
    141c:	01010113          	addi	sp,sp,16
    1420:	00008067          	ret
    1424:	00000513          	li	a0,0
    1428:	00008067          	ret
    142c:	00450493          	addi	s1,a0,4
    1430:	00048513          	mv	a0,s1
    1434:	835ff0ef          	jal	ra,c68 <uxListRemove>
    1438:	00002617          	auipc	a2,0x2
    143c:	94460613          	addi	a2,a2,-1724 # 2d7c <uxTopReadyPriority>
    1440:	02051063          	bnez	a0,1460 <xTaskPriorityDisinherit+0x88>
    1444:	02c42683          	lw	a3,44(s0)
    1448:	00062703          	lw	a4,0(a2)
    144c:	00100793          	li	a5,1
    1450:	00d797b3          	sll	a5,a5,a3
    1454:	fff7c793          	not	a5,a5
    1458:	00e7f7b3          	and	a5,a5,a4
    145c:	00f62023          	sw	a5,0(a2)
    1460:	04842683          	lw	a3,72(s0)
    1464:	00062583          	lw	a1,0(a2)
    1468:	00700513          	li	a0,7
    146c:	00269713          	slli	a4,a3,0x2
    1470:	40d50533          	sub	a0,a0,a3
    1474:	00d70733          	add	a4,a4,a3
    1478:	00100793          	li	a5,1
    147c:	00a42c23          	sw	a0,24(s0)
    1480:	00d797b3          	sll	a5,a5,a3
    1484:	00271713          	slli	a4,a4,0x2
    1488:	00014517          	auipc	a0,0x14
    148c:	97850513          	addi	a0,a0,-1672 # 14e00 <pxReadyTasksLists>
    1490:	00b7e7b3          	or	a5,a5,a1
    1494:	02d42623          	sw	a3,44(s0)
    1498:	00048593          	mv	a1,s1
    149c:	00e50533          	add	a0,a0,a4
    14a0:	00f62023          	sw	a5,0(a2)
    14a4:	f44ff0ef          	jal	ra,be8 <vListInsertEnd>
    14a8:	00c12083          	lw	ra,12(sp)
    14ac:	00812403          	lw	s0,8(sp)
    14b0:	00412483          	lw	s1,4(sp)
    14b4:	00100513          	li	a0,1
    14b8:	01010113          	addi	sp,sp,16
    14bc:	00008067          	ret

000014c0 <vTaskEnterCritical>:
    14c0:	30047073          	csrci	mstatus,8
    14c4:	00002797          	auipc	a5,0x2
    14c8:	8cc7a783          	lw	a5,-1844(a5) # 2d90 <xSchedulerRunning>
    14cc:	02078063          	beqz	a5,14ec <vTaskEnterCritical+0x2c>
    14d0:	00002797          	auipc	a5,0x2
    14d4:	89078793          	addi	a5,a5,-1904 # 2d60 <pxCurrentTCB>
    14d8:	0007a703          	lw	a4,0(a5)
    14dc:	0007a783          	lw	a5,0(a5)
    14e0:	04472783          	lw	a5,68(a4)
    14e4:	00178793          	addi	a5,a5,1
    14e8:	04f72223          	sw	a5,68(a4)
    14ec:	00008067          	ret

000014f0 <vTaskExitCritical>:
    14f0:	00002797          	auipc	a5,0x2
    14f4:	8a07a783          	lw	a5,-1888(a5) # 2d90 <xSchedulerRunning>
    14f8:	02078c63          	beqz	a5,1530 <vTaskExitCritical+0x40>
    14fc:	00002797          	auipc	a5,0x2
    1500:	86478793          	addi	a5,a5,-1948 # 2d60 <pxCurrentTCB>
    1504:	0007a703          	lw	a4,0(a5)
    1508:	04472703          	lw	a4,68(a4)
    150c:	02070263          	beqz	a4,1530 <vTaskExitCritical+0x40>
    1510:	0007a703          	lw	a4,0(a5)
    1514:	0007a683          	lw	a3,0(a5)
    1518:	04472783          	lw	a5,68(a4)
    151c:	fff78793          	addi	a5,a5,-1
    1520:	04f72223          	sw	a5,68(a4)
    1524:	0446a783          	lw	a5,68(a3)
    1528:	00079463          	bnez	a5,1530 <vTaskExitCritical+0x40>
    152c:	30046073          	csrsi	mstatus,8
    1530:	00008067          	ret

00001534 <xTaskCreate>:
    1534:	fd010113          	addi	sp,sp,-48
    1538:	02912223          	sw	s1,36(sp)
    153c:	00261493          	slli	s1,a2,0x2
    1540:	01312e23          	sw	s3,28(sp)
    1544:	00050993          	mv	s3,a0
    1548:	00048513          	mv	a0,s1
    154c:	01412c23          	sw	s4,24(sp)
    1550:	01512a23          	sw	s5,20(sp)
    1554:	01612823          	sw	s6,16(sp)
    1558:	01712623          	sw	s7,12(sp)
    155c:	02112623          	sw	ra,44(sp)
    1560:	02812423          	sw	s0,40(sp)
    1564:	03212023          	sw	s2,32(sp)
    1568:	01812423          	sw	s8,8(sp)
    156c:	00058b93          	mv	s7,a1
    1570:	00068a13          	mv	s4,a3
    1574:	00070b13          	mv	s6,a4
    1578:	00078a93          	mv	s5,a5
    157c:	be9fe0ef          	jal	ra,164 <pvPortMalloc>
    1580:	1c050a63          	beqz	a0,1754 <xTaskCreate+0x220>
    1584:	00050913          	mv	s2,a0
    1588:	05800513          	li	a0,88
    158c:	bd9fe0ef          	jal	ra,164 <pvPortMalloc>
    1590:	00050413          	mv	s0,a0
    1594:	1e050463          	beqz	a0,177c <xTaskCreate+0x248>
    1598:	03252823          	sw	s2,48(a0)
    159c:	00048613          	mv	a2,s1
    15a0:	0a500593          	li	a1,165
    15a4:	00090513          	mv	a0,s2
    15a8:	474010ef          	jal	ra,2a1c <memset>
    15ac:	03042c03          	lw	s8,48(s0)
    15b0:	1e0b8e63          	beqz	s7,17ac <xTaskCreate+0x278>
    15b4:	000b8593          	mv	a1,s7
    15b8:	03440813          	addi	a6,s0,52
    15bc:	010b8793          	addi	a5,s7,16
    15c0:	0005c883          	lbu	a7,0(a1)
    15c4:	00180813          	addi	a6,a6,1
    15c8:	00158593          	addi	a1,a1,1
    15cc:	ff180fa3          	sb	a7,-1(a6)
    15d0:	00088463          	beqz	a7,15d8 <xTaskCreate+0xa4>
    15d4:	fef596e3          	bne	a1,a5,15c0 <xTaskCreate+0x8c>
    15d8:	040401a3          	sb	zero,67(s0)
    15dc:	00600793          	li	a5,6
    15e0:	000b0913          	mv	s2,s6
    15e4:	1967e863          	bltu	a5,s6,1774 <xTaskCreate+0x240>
    15e8:	00440b13          	addi	s6,s0,4
    15ec:	000b0513          	mv	a0,s6
    15f0:	03242623          	sw	s2,44(s0)
    15f4:	05242423          	sw	s2,72(s0)
    15f8:	04042623          	sw	zero,76(s0)
    15fc:	de4ff0ef          	jal	ra,be0 <vListInitialiseItem>
    1600:	01840513          	addi	a0,s0,24
    1604:	ddcff0ef          	jal	ra,be0 <vListInitialiseItem>
    1608:	00700793          	li	a5,7
    160c:	ffc48493          	addi	s1,s1,-4
    1610:	412787b3          	sub	a5,a5,s2
    1614:	009c0533          	add	a0,s8,s1
    1618:	00842823          	sw	s0,16(s0)
    161c:	00f42c23          	sw	a5,24(s0)
    1620:	02842223          	sw	s0,36(s0)
    1624:	04042223          	sw	zero,68(s0)
    1628:	04040823          	sb	zero,80(s0)
    162c:	040408a3          	sb	zero,81(s0)
    1630:	04040923          	sb	zero,82(s0)
    1634:	040409a3          	sb	zero,83(s0)
    1638:	04040a23          	sb	zero,84(s0)
    163c:	04040aa3          	sb	zero,85(s0)
    1640:	000a0613          	mv	a2,s4
    1644:	00098593          	mv	a1,s3
    1648:	ff057513          	andi	a0,a0,-16
    164c:	1b4010ef          	jal	ra,2800 <pxPortInitialiseStack>
    1650:	00a42023          	sw	a0,0(s0)
    1654:	000a8463          	beqz	s5,165c <xTaskCreate+0x128>
    1658:	008aa023          	sw	s0,0(s5)
    165c:	30047073          	csrci	mstatus,8
    1660:	00001917          	auipc	s2,0x1
    1664:	73090913          	addi	s2,s2,1840 # 2d90 <xSchedulerRunning>
    1668:	00092783          	lw	a5,0(s2)
    166c:	00001497          	auipc	s1,0x1
    1670:	6f448493          	addi	s1,s1,1780 # 2d60 <pxCurrentTCB>
    1674:	0e079463          	bnez	a5,175c <xTaskCreate+0x228>
    1678:	00001717          	auipc	a4,0x1
    167c:	6f470713          	addi	a4,a4,1780 # 2d6c <uxCurrentNumberOfTasks>
    1680:	00072783          	lw	a5,0(a4)
    1684:	00178793          	addi	a5,a5,1
    1688:	00f72023          	sw	a5,0(a4)
    168c:	0004a783          	lw	a5,0(s1)
    1690:	0e078e63          	beqz	a5,178c <xTaskCreate+0x258>
    1694:	00092783          	lw	a5,0(s2)
    1698:	02c42703          	lw	a4,44(s0)
    169c:	00013997          	auipc	s3,0x13
    16a0:	76498993          	addi	s3,s3,1892 # 14e00 <pxReadyTasksLists>
    16a4:	00079a63          	bnez	a5,16b8 <xTaskCreate+0x184>
    16a8:	0004a783          	lw	a5,0(s1)
    16ac:	02c7a783          	lw	a5,44(a5)
    16b0:	00f76463          	bltu	a4,a5,16b8 <xTaskCreate+0x184>
    16b4:	0084a023          	sw	s0,0(s1)
    16b8:	00001817          	auipc	a6,0x1
    16bc:	6c080813          	addi	a6,a6,1728 # 2d78 <uxTaskNumber>
    16c0:	00001617          	auipc	a2,0x1
    16c4:	6bc60613          	addi	a2,a2,1724 # 2d7c <uxTopReadyPriority>
    16c8:	00062583          	lw	a1,0(a2)
    16cc:	00082683          	lw	a3,0(a6)
    16d0:	00271513          	slli	a0,a4,0x2
    16d4:	00e50533          	add	a0,a0,a4
    16d8:	00100793          	li	a5,1
    16dc:	00e797b3          	sll	a5,a5,a4
    16e0:	00251513          	slli	a0,a0,0x2
    16e4:	00b7e7b3          	or	a5,a5,a1
    16e8:	00168713          	addi	a4,a3,1
    16ec:	00a98533          	add	a0,s3,a0
    16f0:	000b0593          	mv	a1,s6
    16f4:	00f62023          	sw	a5,0(a2)
    16f8:	00e82023          	sw	a4,0(a6)
    16fc:	cecff0ef          	jal	ra,be8 <vListInsertEnd>
    1700:	df1ff0ef          	jal	ra,14f0 <vTaskExitCritical>
    1704:	00092783          	lw	a5,0(s2)
    1708:	00100513          	li	a0,1
    170c:	00078c63          	beqz	a5,1724 <xTaskCreate+0x1f0>
    1710:	0004a703          	lw	a4,0(s1)
    1714:	02c42783          	lw	a5,44(s0)
    1718:	02c72703          	lw	a4,44(a4)
    171c:	00f77463          	bgeu	a4,a5,1724 <xTaskCreate+0x1f0>
    1720:	00000073          	ecall
    1724:	02c12083          	lw	ra,44(sp)
    1728:	02812403          	lw	s0,40(sp)
    172c:	02412483          	lw	s1,36(sp)
    1730:	02012903          	lw	s2,32(sp)
    1734:	01c12983          	lw	s3,28(sp)
    1738:	01812a03          	lw	s4,24(sp)
    173c:	01412a83          	lw	s5,20(sp)
    1740:	01012b03          	lw	s6,16(sp)
    1744:	00c12b83          	lw	s7,12(sp)
    1748:	00812c03          	lw	s8,8(sp)
    174c:	03010113          	addi	sp,sp,48
    1750:	00008067          	ret
    1754:	fff00513          	li	a0,-1
    1758:	fcdff06f          	j	1724 <xTaskCreate+0x1f0>
    175c:	0004a703          	lw	a4,0(s1)
    1760:	0004a783          	lw	a5,0(s1)
    1764:	04472783          	lw	a5,68(a4)
    1768:	00178793          	addi	a5,a5,1
    176c:	04f72223          	sw	a5,68(a4)
    1770:	f09ff06f          	j	1678 <xTaskCreate+0x144>
    1774:	00600913          	li	s2,6
    1778:	e71ff06f          	j	15e8 <xTaskCreate+0xb4>
    177c:	00090513          	mv	a0,s2
    1780:	b41fe0ef          	jal	ra,2c0 <vPortFree>
    1784:	fff00513          	li	a0,-1
    1788:	f9dff06f          	j	1724 <xTaskCreate+0x1f0>
    178c:	0084a023          	sw	s0,0(s1)
    1790:	00072703          	lw	a4,0(a4)
    1794:	00100793          	li	a5,1
    1798:	00f70e63          	beq	a4,a5,17b4 <xTaskCreate+0x280>
    179c:	02c42703          	lw	a4,44(s0)
    17a0:	00013997          	auipc	s3,0x13
    17a4:	66098993          	addi	s3,s3,1632 # 14e00 <pxReadyTasksLists>
    17a8:	f11ff06f          	j	16b8 <xTaskCreate+0x184>
    17ac:	02040a23          	sb	zero,52(s0)
    17b0:	e2dff06f          	j	15dc <xTaskCreate+0xa8>
    17b4:	00013997          	auipc	s3,0x13
    17b8:	64c98993          	addi	s3,s3,1612 # 14e00 <pxReadyTasksLists>
    17bc:	00098a13          	mv	s4,s3
    17c0:	00013a97          	auipc	s5,0x13
    17c4:	6cca8a93          	addi	s5,s5,1740 # 14e8c <xDelayedTaskList1>
    17c8:	000a0513          	mv	a0,s4
    17cc:	014a0a13          	addi	s4,s4,20
    17d0:	bf0ff0ef          	jal	ra,bc0 <vListInitialise>
    17d4:	ff4a9ae3          	bne	s5,s4,17c8 <xTaskCreate+0x294>
    17d8:	00013a97          	auipc	s5,0x13
    17dc:	6b4a8a93          	addi	s5,s5,1716 # 14e8c <xDelayedTaskList1>
    17e0:	000a8513          	mv	a0,s5
    17e4:	bdcff0ef          	jal	ra,bc0 <vListInitialise>
    17e8:	00013a17          	auipc	s4,0x13
    17ec:	6b8a0a13          	addi	s4,s4,1720 # 14ea0 <xDelayedTaskList2>
    17f0:	000a0513          	mv	a0,s4
    17f4:	bccff0ef          	jal	ra,bc0 <vListInitialise>
    17f8:	00013517          	auipc	a0,0x13
    17fc:	6bc50513          	addi	a0,a0,1724 # 14eb4 <xPendingReadyList>
    1800:	bc0ff0ef          	jal	ra,bc0 <vListInitialise>
    1804:	00013517          	auipc	a0,0x13
    1808:	6d850513          	addi	a0,a0,1752 # 14edc <xTasksWaitingTermination>
    180c:	bb4ff0ef          	jal	ra,bc0 <vListInitialise>
    1810:	00013517          	auipc	a0,0x13
    1814:	6b850513          	addi	a0,a0,1720 # 14ec8 <xSuspendedTaskList>
    1818:	ba8ff0ef          	jal	ra,bc0 <vListInitialise>
    181c:	00001797          	auipc	a5,0x1
    1820:	5557a423          	sw	s5,1352(a5) # 2d64 <pxDelayedTaskList>
    1824:	02c42703          	lw	a4,44(s0)
    1828:	00001797          	auipc	a5,0x1
    182c:	5547a023          	sw	s4,1344(a5) # 2d68 <pxOverflowDelayedTaskList>
    1830:	e89ff06f          	j	16b8 <xTaskCreate+0x184>

00001834 <vTaskStartScheduler>:
    1834:	ff010113          	addi	sp,sp,-16
    1838:	00001797          	auipc	a5,0x1
    183c:	54878793          	addi	a5,a5,1352 # 2d80 <xIdleTaskHandle>
    1840:	00000713          	li	a4,0
    1844:	00000693          	li	a3,0
    1848:	20000613          	li	a2,512
    184c:	00001597          	auipc	a1,0x1
    1850:	33858593          	addi	a1,a1,824 # 2b84 <_etext>
    1854:	fffff517          	auipc	a0,0xfffff
    1858:	58c50513          	addi	a0,a0,1420 # de0 <prvIdleTask>
    185c:	00112623          	sw	ra,12(sp)
    1860:	00812423          	sw	s0,8(sp)
    1864:	cd1ff0ef          	jal	ra,1534 <xTaskCreate>
    1868:	00100793          	li	a5,1
    186c:	00f50c63          	beq	a0,a5,1884 <vTaskStartScheduler+0x50>
    1870:	00c12083          	lw	ra,12(sp)
    1874:	00812403          	lw	s0,8(sp)
    1878:	8081a783          	lw	a5,-2040(gp) # 2d28 <uxTopUsedPriority>
    187c:	01010113          	addi	sp,sp,16
    1880:	00008067          	ret
    1884:	00050413          	mv	s0,a0
    1888:	3f0000ef          	jal	ra,1c78 <xTimerCreateTimerTask>
    188c:	fe8512e3          	bne	a0,s0,1870 <vTaskStartScheduler+0x3c>
    1890:	30047073          	csrci	mstatus,8
    1894:	fff00793          	li	a5,-1
    1898:	00001717          	auipc	a4,0x1
    189c:	4ef72623          	sw	a5,1260(a4) # 2d84 <xNextTaskUnblockTime>
    18a0:	00001797          	auipc	a5,0x1
    18a4:	4ea7a823          	sw	a0,1264(a5) # 2d90 <xSchedulerRunning>
    18a8:	00001797          	auipc	a5,0x1
    18ac:	4e07a623          	sw	zero,1260(a5) # 2d94 <xTickCount>
    18b0:	afdfe0ef          	jal	ra,3ac <xPortStartScheduler>
    18b4:	00c12083          	lw	ra,12(sp)
    18b8:	00812403          	lw	s0,8(sp)
    18bc:	8081a783          	lw	a5,-2040(gp) # 2d28 <uxTopUsedPriority>
    18c0:	01010113          	addi	sp,sp,16
    18c4:	00008067          	ret

000018c8 <xTaskResumeAll>:
    18c8:	fd010113          	addi	sp,sp,-48
    18cc:	02112623          	sw	ra,44(sp)
    18d0:	02812423          	sw	s0,40(sp)
    18d4:	02912223          	sw	s1,36(sp)
    18d8:	03212023          	sw	s2,32(sp)
    18dc:	01312e23          	sw	s3,28(sp)
    18e0:	01412c23          	sw	s4,24(sp)
    18e4:	01512a23          	sw	s5,20(sp)
    18e8:	01612823          	sw	s6,16(sp)
    18ec:	01712623          	sw	s7,12(sp)
    18f0:	30047073          	csrci	mstatus,8
    18f4:	00001797          	auipc	a5,0x1
    18f8:	49c7a783          	lw	a5,1180(a5) # 2d90 <xSchedulerRunning>
    18fc:	02078063          	beqz	a5,191c <xTaskResumeAll+0x54>
    1900:	00001917          	auipc	s2,0x1
    1904:	46090913          	addi	s2,s2,1120 # 2d60 <pxCurrentTCB>
    1908:	00092703          	lw	a4,0(s2)
    190c:	00092783          	lw	a5,0(s2)
    1910:	04472783          	lw	a5,68(a4)
    1914:	00178793          	addi	a5,a5,1
    1918:	04f72223          	sw	a5,68(a4)
    191c:	00001797          	auipc	a5,0x1
    1920:	45878793          	addi	a5,a5,1112 # 2d74 <uxSchedulerSuspended>
    1924:	0007a703          	lw	a4,0(a5)
    1928:	fff70713          	addi	a4,a4,-1
    192c:	00e7a023          	sw	a4,0(a5)
    1930:	0007a783          	lw	a5,0(a5)
    1934:	10079263          	bnez	a5,1a38 <xTaskResumeAll+0x170>
    1938:	00001797          	auipc	a5,0x1
    193c:	4347a783          	lw	a5,1076(a5) # 2d6c <uxCurrentNumberOfTasks>
    1940:	0e078c63          	beqz	a5,1a38 <xTaskResumeAll+0x170>
    1944:	00013b97          	auipc	s7,0x13
    1948:	570b8b93          	addi	s7,s7,1392 # 14eb4 <xPendingReadyList>
    194c:	000ba783          	lw	a5,0(s7)
    1950:	00001a97          	auipc	s5,0x1
    1954:	448a8a93          	addi	s5,s5,1096 # 2d98 <xYieldPending>
    1958:	0a078663          	beqz	a5,1a04 <xTaskResumeAll+0x13c>
    195c:	00001917          	auipc	s2,0x1
    1960:	40490913          	addi	s2,s2,1028 # 2d60 <pxCurrentTCB>
    1964:	00001497          	auipc	s1,0x1
    1968:	41848493          	addi	s1,s1,1048 # 2d7c <uxTopReadyPriority>
    196c:	00013a17          	auipc	s4,0x13
    1970:	494a0a13          	addi	s4,s4,1172 # 14e00 <pxReadyTasksLists>
    1974:	00001a97          	auipc	s5,0x1
    1978:	424a8a93          	addi	s5,s5,1060 # 2d98 <xYieldPending>
    197c:	00100993          	li	s3,1
    1980:	00cba783          	lw	a5,12(s7)
    1984:	00c7a403          	lw	s0,12(a5)
    1988:	01840513          	addi	a0,s0,24
    198c:	adcff0ef          	jal	ra,c68 <uxListRemove>
    1990:	00440b13          	addi	s6,s0,4
    1994:	000b0513          	mv	a0,s6
    1998:	ad0ff0ef          	jal	ra,c68 <uxListRemove>
    199c:	02c42783          	lw	a5,44(s0)
    19a0:	0004a703          	lw	a4,0(s1)
    19a4:	000b0593          	mv	a1,s6
    19a8:	00279513          	slli	a0,a5,0x2
    19ac:	00f50533          	add	a0,a0,a5
    19b0:	00251513          	slli	a0,a0,0x2
    19b4:	00f997b3          	sll	a5,s3,a5
    19b8:	00e7e7b3          	or	a5,a5,a4
    19bc:	00aa0533          	add	a0,s4,a0
    19c0:	00f4a023          	sw	a5,0(s1)
    19c4:	a24ff0ef          	jal	ra,be8 <vListInsertEnd>
    19c8:	00092783          	lw	a5,0(s2)
    19cc:	02c42703          	lw	a4,44(s0)
    19d0:	02c7a783          	lw	a5,44(a5)
    19d4:	00f76463          	bltu	a4,a5,19dc <xTaskResumeAll+0x114>
    19d8:	013aa023          	sw	s3,0(s5)
    19dc:	000ba783          	lw	a5,0(s7)
    19e0:	fa0790e3          	bnez	a5,1980 <xTaskResumeAll+0xb8>
    19e4:	00001797          	auipc	a5,0x1
    19e8:	38078793          	addi	a5,a5,896 # 2d64 <pxDelayedTaskList>
    19ec:	0007a703          	lw	a4,0(a5)
    19f0:	00072703          	lw	a4,0(a4)
    19f4:	08071463          	bnez	a4,1a7c <xTaskResumeAll+0x1b4>
    19f8:	fff00793          	li	a5,-1
    19fc:	00001717          	auipc	a4,0x1
    1a00:	38f72423          	sw	a5,904(a4) # 2d84 <xNextTaskUnblockTime>
    1a04:	00001417          	auipc	s0,0x1
    1a08:	38842403          	lw	s0,904(s0) # 2d8c <xPendedTicks>
    1a0c:	02040263          	beqz	s0,1a30 <xTaskResumeAll+0x168>
    1a10:	00100493          	li	s1,1
    1a14:	cd8ff0ef          	jal	ra,eec <xTaskIncrementTick>
    1a18:	fff40413          	addi	s0,s0,-1
    1a1c:	00050463          	beqz	a0,1a24 <xTaskResumeAll+0x15c>
    1a20:	009aa023          	sw	s1,0(s5)
    1a24:	fe0418e3          	bnez	s0,1a14 <xTaskResumeAll+0x14c>
    1a28:	00001797          	auipc	a5,0x1
    1a2c:	3607a223          	sw	zero,868(a5) # 2d8c <xPendedTicks>
    1a30:	000aa783          	lw	a5,0(s5)
    1a34:	02079e63          	bnez	a5,1a70 <xTaskResumeAll+0x1a8>
    1a38:	00000413          	li	s0,0
    1a3c:	ab5ff0ef          	jal	ra,14f0 <vTaskExitCritical>
    1a40:	02c12083          	lw	ra,44(sp)
    1a44:	00040513          	mv	a0,s0
    1a48:	02812403          	lw	s0,40(sp)
    1a4c:	02412483          	lw	s1,36(sp)
    1a50:	02012903          	lw	s2,32(sp)
    1a54:	01c12983          	lw	s3,28(sp)
    1a58:	01812a03          	lw	s4,24(sp)
    1a5c:	01412a83          	lw	s5,20(sp)
    1a60:	01012b03          	lw	s6,16(sp)
    1a64:	00c12b83          	lw	s7,12(sp)
    1a68:	03010113          	addi	sp,sp,48
    1a6c:	00008067          	ret
    1a70:	00000073          	ecall
    1a74:	00100413          	li	s0,1
    1a78:	fc5ff06f          	j	1a3c <xTaskResumeAll+0x174>
    1a7c:	0007a783          	lw	a5,0(a5)
    1a80:	00c7a783          	lw	a5,12(a5)
    1a84:	0007a783          	lw	a5,0(a5)
    1a88:	00001717          	auipc	a4,0x1
    1a8c:	2ef72e23          	sw	a5,764(a4) # 2d84 <xNextTaskUnblockTime>
    1a90:	f75ff06f          	j	1a04 <xTaskResumeAll+0x13c>

00001a94 <vTaskDelay>:
    1a94:	00051663          	bnez	a0,1aa0 <vTaskDelay+0xc>
    1a98:	00000073          	ecall
    1a9c:	00008067          	ret
    1aa0:	00001717          	auipc	a4,0x1
    1aa4:	2d470713          	addi	a4,a4,724 # 2d74 <uxSchedulerSuspended>
    1aa8:	00072783          	lw	a5,0(a4)
    1aac:	ff010113          	addi	sp,sp,-16
    1ab0:	00112623          	sw	ra,12(sp)
    1ab4:	00178793          	addi	a5,a5,1
    1ab8:	00f72023          	sw	a5,0(a4)
    1abc:	00000593          	li	a1,0
    1ac0:	9f8ff0ef          	jal	ra,cb8 <prvAddCurrentTaskToDelayedList>
    1ac4:	e05ff0ef          	jal	ra,18c8 <xTaskResumeAll>
    1ac8:	00051463          	bnez	a0,1ad0 <vTaskDelay+0x3c>
    1acc:	00000073          	ecall
    1ad0:	00c12083          	lw	ra,12(sp)
    1ad4:	01010113          	addi	sp,sp,16
    1ad8:	00008067          	ret

00001adc <xTaskCheckForTimeOut>:
    1adc:	ff010113          	addi	sp,sp,-16
    1ae0:	00112623          	sw	ra,12(sp)
    1ae4:	00812423          	sw	s0,8(sp)
    1ae8:	00050793          	mv	a5,a0
    1aec:	30047073          	csrci	mstatus,8
    1af0:	00001697          	auipc	a3,0x1
    1af4:	2a06a683          	lw	a3,672(a3) # 2d90 <xSchedulerRunning>
    1af8:	00001717          	auipc	a4,0x1
    1afc:	26870713          	addi	a4,a4,616 # 2d60 <pxCurrentTCB>
    1b00:	00068c63          	beqz	a3,1b18 <xTaskCheckForTimeOut+0x3c>
    1b04:	00072603          	lw	a2,0(a4)
    1b08:	00072683          	lw	a3,0(a4)
    1b0c:	04462683          	lw	a3,68(a2)
    1b10:	00168693          	addi	a3,a3,1
    1b14:	04d62223          	sw	a3,68(a2)
    1b18:	00001697          	auipc	a3,0x1
    1b1c:	27c68693          	addi	a3,a3,636 # 2d94 <xTickCount>
    1b20:	0006a803          	lw	a6,0(a3)
    1b24:	00072603          	lw	a2,0(a4)
    1b28:	0047a503          	lw	a0,4(a5)
    1b2c:	05564603          	lbu	a2,85(a2)
    1b30:	02060463          	beqz	a2,1b58 <xTaskCheckForTimeOut+0x7c>
    1b34:	00072783          	lw	a5,0(a4)
    1b38:	00100413          	li	s0,1
    1b3c:	04078aa3          	sb	zero,85(a5)
    1b40:	9b1ff0ef          	jal	ra,14f0 <vTaskExitCritical>
    1b44:	00c12083          	lw	ra,12(sp)
    1b48:	00040513          	mv	a0,s0
    1b4c:	00812403          	lw	s0,8(sp)
    1b50:	01010113          	addi	sp,sp,16
    1b54:	00008067          	ret
    1b58:	0005a703          	lw	a4,0(a1)
    1b5c:	fff00613          	li	a2,-1
    1b60:	00000413          	li	s0,0
    1b64:	fcc70ee3          	beq	a4,a2,1b40 <xTaskCheckForTimeOut+0x64>
    1b68:	00001617          	auipc	a2,0x1
    1b6c:	22060613          	addi	a2,a2,544 # 2d88 <xNumOfOverflows>
    1b70:	00062883          	lw	a7,0(a2)
    1b74:	0007a303          	lw	t1,0(a5)
    1b78:	03130463          	beq	t1,a7,1ba0 <xTaskCheckForTimeOut+0xc4>
    1b7c:	02a86263          	bltu	a6,a0,1ba0 <xTaskCheckForTimeOut+0xc4>
    1b80:	0005a023          	sw	zero,0(a1)
    1b84:	96dff0ef          	jal	ra,14f0 <vTaskExitCritical>
    1b88:	00100413          	li	s0,1
    1b8c:	00c12083          	lw	ra,12(sp)
    1b90:	00040513          	mv	a0,s0
    1b94:	00812403          	lw	s0,8(sp)
    1b98:	01010113          	addi	sp,sp,16
    1b9c:	00008067          	ret
    1ba0:	40a808b3          	sub	a7,a6,a0
    1ba4:	fce8fee3          	bgeu	a7,a4,1b80 <xTaskCheckForTimeOut+0xa4>
    1ba8:	00062603          	lw	a2,0(a2)
    1bac:	41070733          	sub	a4,a4,a6
    1bb0:	0006a683          	lw	a3,0(a3)
    1bb4:	00a70733          	add	a4,a4,a0
    1bb8:	00e5a023          	sw	a4,0(a1)
    1bbc:	00c7a023          	sw	a2,0(a5)
    1bc0:	00d7a223          	sw	a3,4(a5)
    1bc4:	92dff0ef          	jal	ra,14f0 <vTaskExitCritical>
    1bc8:	00000413          	li	s0,0
    1bcc:	00c12083          	lw	ra,12(sp)
    1bd0:	00040513          	mv	a0,s0
    1bd4:	00812403          	lw	s0,8(sp)
    1bd8:	01010113          	addi	sp,sp,16
    1bdc:	00008067          	ret

00001be0 <prvCheckForValidListAndQueue>:
    1be0:	ff010113          	addi	sp,sp,-16
    1be4:	00812423          	sw	s0,8(sp)
    1be8:	00112623          	sw	ra,12(sp)
    1bec:	00912223          	sw	s1,4(sp)
    1bf0:	01212023          	sw	s2,0(sp)
    1bf4:	00001417          	auipc	s0,0x1
    1bf8:	1b440413          	addi	s0,s0,436 # 2da8 <xTimerQueue>
    1bfc:	8c5ff0ef          	jal	ra,14c0 <vTaskEnterCritical>
    1c00:	00042783          	lw	a5,0(s0)
    1c04:	00078e63          	beqz	a5,1c20 <prvCheckForValidListAndQueue+0x40>
    1c08:	00812403          	lw	s0,8(sp)
    1c0c:	00c12083          	lw	ra,12(sp)
    1c10:	00412483          	lw	s1,4(sp)
    1c14:	00012903          	lw	s2,0(sp)
    1c18:	01010113          	addi	sp,sp,16
    1c1c:	8d5ff06f          	j	14f0 <vTaskExitCritical>
    1c20:	00013917          	auipc	s2,0x13
    1c24:	2d090913          	addi	s2,s2,720 # 14ef0 <xActiveTimerList1>
    1c28:	00090513          	mv	a0,s2
    1c2c:	f95fe0ef          	jal	ra,bc0 <vListInitialise>
    1c30:	00013497          	auipc	s1,0x13
    1c34:	2d448493          	addi	s1,s1,724 # 14f04 <xActiveTimerList2>
    1c38:	00048513          	mv	a0,s1
    1c3c:	f85fe0ef          	jal	ra,bc0 <vListInitialise>
    1c40:	00000613          	li	a2,0
    1c44:	01000593          	li	a1,16
    1c48:	00600513          	li	a0,6
    1c4c:	00001797          	auipc	a5,0x1
    1c50:	1527a823          	sw	s2,336(a5) # 2d9c <pxCurrentTimerList>
    1c54:	00001797          	auipc	a5,0x1
    1c58:	1497a623          	sw	s1,332(a5) # 2da0 <pxOverflowTimerList>
    1c5c:	9a9fe0ef          	jal	ra,604 <xQueueGenericCreate>
    1c60:	00a42023          	sw	a0,0(s0)
    1c64:	fa0502e3          	beqz	a0,1c08 <prvCheckForValidListAndQueue+0x28>
    1c68:	00001597          	auipc	a1,0x1
    1c6c:	f2458593          	addi	a1,a1,-220 # 2b8c <_etext+0x8>
    1c70:	e69fe0ef          	jal	ra,ad8 <vQueueAddToRegistry>
    1c74:	f95ff06f          	j	1c08 <prvCheckForValidListAndQueue+0x28>

00001c78 <xTimerCreateTimerTask>:
    1c78:	ff010113          	addi	sp,sp,-16
    1c7c:	00112623          	sw	ra,12(sp)
    1c80:	f61ff0ef          	jal	ra,1be0 <prvCheckForValidListAndQueue>
    1c84:	00001797          	auipc	a5,0x1
    1c88:	1247a783          	lw	a5,292(a5) # 2da8 <xTimerQueue>
    1c8c:	02078a63          	beqz	a5,1cc0 <xTimerCreateTimerTask+0x48>
    1c90:	00c12083          	lw	ra,12(sp)
    1c94:	00001797          	auipc	a5,0x1
    1c98:	11878793          	addi	a5,a5,280 # 2dac <xTimerTaskHandle>
    1c9c:	00600713          	li	a4,6
    1ca0:	00000693          	li	a3,0
    1ca4:	06e00613          	li	a2,110
    1ca8:	00001597          	auipc	a1,0x1
    1cac:	eec58593          	addi	a1,a1,-276 # 2b94 <_etext+0x10>
    1cb0:	00000517          	auipc	a0,0x0
    1cb4:	1c450513          	addi	a0,a0,452 # 1e74 <prvTimerTask>
    1cb8:	01010113          	addi	sp,sp,16
    1cbc:	879ff06f          	j	1534 <xTaskCreate>
    1cc0:	00c12083          	lw	ra,12(sp)
    1cc4:	00000513          	li	a0,0
    1cc8:	01010113          	addi	sp,sp,16
    1ccc:	00008067          	ret

00001cd0 <xTimerGenericCommand>:
    1cd0:	fe010113          	addi	sp,sp,-32
    1cd4:	00912a23          	sw	s1,20(sp)
    1cd8:	00001497          	auipc	s1,0x1
    1cdc:	0d048493          	addi	s1,s1,208 # 2da8 <xTimerQueue>
    1ce0:	0004a803          	lw	a6,0(s1)
    1ce4:	00112e23          	sw	ra,28(sp)
    1ce8:	00812c23          	sw	s0,24(sp)
    1cec:	06080c63          	beqz	a6,1d64 <xTimerGenericCommand+0x94>
    1cf0:	00b12023          	sw	a1,0(sp)
    1cf4:	00c12223          	sw	a2,4(sp)
    1cf8:	00a12423          	sw	a0,8(sp)
    1cfc:	00500793          	li	a5,5
    1d00:	02b7ce63          	blt	a5,a1,1d3c <xTimerGenericCommand+0x6c>
    1d04:	00070413          	mv	s0,a4
    1d08:	eacff0ef          	jal	ra,13b4 <xTaskGetSchedulerState>
    1d0c:	00200793          	li	a5,2
    1d10:	06f50663          	beq	a0,a5,1d7c <xTimerGenericCommand+0xac>
    1d14:	0004a503          	lw	a0,0(s1)
    1d18:	00010593          	mv	a1,sp
    1d1c:	00000693          	li	a3,0
    1d20:	00000613          	li	a2,0
    1d24:	99dfe0ef          	jal	ra,6c0 <xQueueGenericSend>
    1d28:	01c12083          	lw	ra,28(sp)
    1d2c:	01812403          	lw	s0,24(sp)
    1d30:	01412483          	lw	s1,20(sp)
    1d34:	02010113          	addi	sp,sp,32
    1d38:	00008067          	ret
    1d3c:	00068613          	mv	a2,a3
    1d40:	00010593          	mv	a1,sp
    1d44:	00000693          	li	a3,0
    1d48:	00080513          	mv	a0,a6
    1d4c:	b0dfe0ef          	jal	ra,858 <xQueueGenericSendFromISR>
    1d50:	01c12083          	lw	ra,28(sp)
    1d54:	01812403          	lw	s0,24(sp)
    1d58:	01412483          	lw	s1,20(sp)
    1d5c:	02010113          	addi	sp,sp,32
    1d60:	00008067          	ret
    1d64:	01c12083          	lw	ra,28(sp)
    1d68:	01812403          	lw	s0,24(sp)
    1d6c:	01412483          	lw	s1,20(sp)
    1d70:	00000513          	li	a0,0
    1d74:	02010113          	addi	sp,sp,32
    1d78:	00008067          	ret
    1d7c:	0004a503          	lw	a0,0(s1)
    1d80:	00040613          	mv	a2,s0
    1d84:	00010593          	mv	a1,sp
    1d88:	00000693          	li	a3,0
    1d8c:	935fe0ef          	jal	ra,6c0 <xQueueGenericSend>
    1d90:	01c12083          	lw	ra,28(sp)
    1d94:	01812403          	lw	s0,24(sp)
    1d98:	01412483          	lw	s1,20(sp)
    1d9c:	02010113          	addi	sp,sp,32
    1da0:	00008067          	ret

00001da4 <prvSwitchTimerLists>:
    1da4:	fe010113          	addi	sp,sp,-32
    1da8:	01212823          	sw	s2,16(sp)
    1dac:	00112e23          	sw	ra,28(sp)
    1db0:	00812c23          	sw	s0,24(sp)
    1db4:	00912a23          	sw	s1,20(sp)
    1db8:	01312623          	sw	s3,12(sp)
    1dbc:	00001917          	auipc	s2,0x1
    1dc0:	fe090913          	addi	s2,s2,-32 # 2d9c <pxCurrentTimerList>
    1dc4:	0340006f          	j	1df8 <prvSwitchTimerLists+0x54>
    1dc8:	00c7a783          	lw	a5,12(a5)
    1dcc:	00c7a403          	lw	s0,12(a5)
    1dd0:	0007a983          	lw	s3,0(a5)
    1dd4:	00440493          	addi	s1,s0,4
    1dd8:	00048513          	mv	a0,s1
    1ddc:	e8dfe0ef          	jal	ra,c68 <uxListRemove>
    1de0:	02042783          	lw	a5,32(s0)
    1de4:	00040513          	mv	a0,s0
    1de8:	000780e7          	jalr	a5
    1dec:	02444783          	lbu	a5,36(s0)
    1df0:	0047f793          	andi	a5,a5,4
    1df4:	04079063          	bnez	a5,1e34 <prvSwitchTimerLists+0x90>
    1df8:	00092783          	lw	a5,0(s2)
    1dfc:	0007a703          	lw	a4,0(a5)
    1e00:	fc0714e3          	bnez	a4,1dc8 <prvSwitchTimerLists+0x24>
    1e04:	00001717          	auipc	a4,0x1
    1e08:	f9c70713          	addi	a4,a4,-100 # 2da0 <pxOverflowTimerList>
    1e0c:	00072683          	lw	a3,0(a4)
    1e10:	01c12083          	lw	ra,28(sp)
    1e14:	01812403          	lw	s0,24(sp)
    1e18:	00d92023          	sw	a3,0(s2)
    1e1c:	00f72023          	sw	a5,0(a4)
    1e20:	01412483          	lw	s1,20(sp)
    1e24:	01012903          	lw	s2,16(sp)
    1e28:	00c12983          	lw	s3,12(sp)
    1e2c:	02010113          	addi	sp,sp,32
    1e30:	00008067          	ret
    1e34:	01842783          	lw	a5,24(s0)
    1e38:	00048593          	mv	a1,s1
    1e3c:	00000713          	li	a4,0
    1e40:	00f987b3          	add	a5,s3,a5
    1e44:	00000693          	li	a3,0
    1e48:	00098613          	mv	a2,s3
    1e4c:	00040513          	mv	a0,s0
    1e50:	00f9fc63          	bgeu	s3,a5,1e68 <prvSwitchTimerLists+0xc4>
    1e54:	00092503          	lw	a0,0(s2)
    1e58:	00f42223          	sw	a5,4(s0)
    1e5c:	00842823          	sw	s0,16(s0)
    1e60:	db9fe0ef          	jal	ra,c18 <vListInsert>
    1e64:	f95ff06f          	j	1df8 <prvSwitchTimerLists+0x54>
    1e68:	00000593          	li	a1,0
    1e6c:	e65ff0ef          	jal	ra,1cd0 <xTimerGenericCommand>
    1e70:	f89ff06f          	j	1df8 <prvSwitchTimerLists+0x54>

00001e74 <prvTimerTask>:
    1e74:	fc010113          	addi	sp,sp,-64
    1e78:	02912a23          	sw	s1,52(sp)
    1e7c:	03212823          	sw	s2,48(sp)
    1e80:	03312623          	sw	s3,44(sp)
    1e84:	03412423          	sw	s4,40(sp)
    1e88:	03512223          	sw	s5,36(sp)
    1e8c:	03612023          	sw	s6,32(sp)
    1e90:	02112e23          	sw	ra,60(sp)
    1e94:	02812c23          	sw	s0,56(sp)
    1e98:	01712e23          	sw	s7,28(sp)
    1e9c:	01812c23          	sw	s8,24(sp)
    1ea0:	01912a23          	sw	s9,20(sp)
    1ea4:	00001a17          	auipc	s4,0x1
    1ea8:	ef8a0a13          	addi	s4,s4,-264 # 2d9c <pxCurrentTimerList>
    1eac:	00001917          	auipc	s2,0x1
    1eb0:	ef890913          	addi	s2,s2,-264 # 2da4 <xLastTime.0>
    1eb4:	00001b17          	auipc	s6,0x1
    1eb8:	eecb0b13          	addi	s6,s6,-276 # 2da0 <pxOverflowTimerList>
    1ebc:	00001497          	auipc	s1,0x1
    1ec0:	eec48493          	addi	s1,s1,-276 # 2da8 <xTimerQueue>
    1ec4:	00001997          	auipc	s3,0x1
    1ec8:	cd898993          	addi	s3,s3,-808 # 2b9c <_etext+0x18>
    1ecc:	00900a93          	li	s5,9
    1ed0:	000a2783          	lw	a5,0(s4)
    1ed4:	0007ab83          	lw	s7,0(a5)
    1ed8:	180b8463          	beqz	s7,2060 <prvTimerTask+0x1ec>
    1edc:	00c7a783          	lw	a5,12(a5)
    1ee0:	0007ab83          	lw	s7,0(a5)
    1ee4:	fe5fe0ef          	jal	ra,ec8 <vTaskSuspendAll>
    1ee8:	ff9fe0ef          	jal	ra,ee0 <xTaskGetTickCount>
    1eec:	00092783          	lw	a5,0(s2)
    1ef0:	00050413          	mv	s0,a0
    1ef4:	18f56a63          	bltu	a0,a5,2088 <prvTimerTask+0x214>
    1ef8:	00a92023          	sw	a0,0(s2)
    1efc:	00000613          	li	a2,0
    1f00:	1b757c63          	bgeu	a0,s7,20b8 <prvTimerTask+0x244>
    1f04:	0004a503          	lw	a0,0(s1)
    1f08:	408b85b3          	sub	a1,s7,s0
    1f0c:	c0dfe0ef          	jal	ra,b18 <vQueueWaitForMessageRestricted>
    1f10:	9b9ff0ef          	jal	ra,18c8 <xTaskResumeAll>
    1f14:	00051463          	bnez	a0,1f1c <prvTimerTask+0xa8>
    1f18:	00000073          	ecall
    1f1c:	0004a503          	lw	a0,0(s1)
    1f20:	00000613          	li	a2,0
    1f24:	00010593          	mv	a1,sp
    1f28:	9f5fe0ef          	jal	ra,91c <xQueueReceive>
    1f2c:	fa0502e3          	beqz	a0,1ed0 <prvTimerTask+0x5c>
    1f30:	00012783          	lw	a5,0(sp)
    1f34:	00812503          	lw	a0,8(sp)
    1f38:	1007c863          	bltz	a5,2048 <prvTimerTask+0x1d4>
    1f3c:	00812403          	lw	s0,8(sp)
    1f40:	01442783          	lw	a5,20(s0)
    1f44:	00078663          	beqz	a5,1f50 <prvTimerTask+0xdc>
    1f48:	00440513          	addi	a0,s0,4
    1f4c:	d1dfe0ef          	jal	ra,c68 <uxListRemove>
    1f50:	f91fe0ef          	jal	ra,ee0 <xTaskGetTickCount>
    1f54:	00092783          	lw	a5,0(s2)
    1f58:	00050b93          	mv	s7,a0
    1f5c:	12f56e63          	bltu	a0,a5,2098 <prvTimerTask+0x224>
    1f60:	00012783          	lw	a5,0(sp)
    1f64:	01792023          	sw	s7,0(s2)
    1f68:	fafaeae3          	bltu	s5,a5,1f1c <prvTimerTask+0xa8>
    1f6c:	00279793          	slli	a5,a5,0x2
    1f70:	00f987b3          	add	a5,s3,a5
    1f74:	0007a783          	lw	a5,0(a5)
    1f78:	00f987b3          	add	a5,s3,a5
    1f7c:	00078067          	jr	a5
    1f80:	02444783          	lbu	a5,36(s0)
    1f84:	00412703          	lw	a4,4(sp)
    1f88:	01842683          	lw	a3,24(s0)
    1f8c:	0017e793          	ori	a5,a5,1
    1f90:	02f40223          	sb	a5,36(s0)
    1f94:	00d707b3          	add	a5,a4,a3
    1f98:	00f42223          	sw	a5,4(s0)
    1f9c:	00842823          	sw	s0,16(s0)
    1fa0:	10fbe063          	bltu	s7,a5,20a0 <prvTimerTask+0x22c>
    1fa4:	40eb8bb3          	sub	s7,s7,a4
    1fa8:	06dbe463          	bltu	s7,a3,2010 <prvTimerTask+0x19c>
    1fac:	02042783          	lw	a5,32(s0)
    1fb0:	00040513          	mv	a0,s0
    1fb4:	000780e7          	jalr	a5
    1fb8:	02444783          	lbu	a5,36(s0)
    1fbc:	0047f793          	andi	a5,a5,4
    1fc0:	f4078ee3          	beqz	a5,1f1c <prvTimerTask+0xa8>
    1fc4:	01842783          	lw	a5,24(s0)
    1fc8:	00412603          	lw	a2,4(sp)
    1fcc:	00000713          	li	a4,0
    1fd0:	00000693          	li	a3,0
    1fd4:	00f60633          	add	a2,a2,a5
    1fd8:	00000593          	li	a1,0
    1fdc:	00040513          	mv	a0,s0
    1fe0:	cf1ff0ef          	jal	ra,1cd0 <xTimerGenericCommand>
    1fe4:	f39ff06f          	j	1f1c <prvTimerTask+0xa8>
    1fe8:	00412703          	lw	a4,4(sp)
    1fec:	02444783          	lbu	a5,36(s0)
    1ff0:	00842823          	sw	s0,16(s0)
    1ff4:	017706b3          	add	a3,a4,s7
    1ff8:	0017e793          	ori	a5,a5,1
    1ffc:	02f40223          	sb	a5,36(s0)
    2000:	00e42c23          	sw	a4,24(s0)
    2004:	00d42223          	sw	a3,4(s0)
    2008:	0adbe063          	bltu	s7,a3,20a8 <prvTimerTask+0x234>
    200c:	f00708e3          	beqz	a4,1f1c <prvTimerTask+0xa8>
    2010:	000b2503          	lw	a0,0(s6)
    2014:	00440593          	addi	a1,s0,4
    2018:	c01fe0ef          	jal	ra,c18 <vListInsert>
    201c:	f01ff06f          	j	1f1c <prvTimerTask+0xa8>
    2020:	02444783          	lbu	a5,36(s0)
    2024:	ffe7f793          	andi	a5,a5,-2
    2028:	02f40223          	sb	a5,36(s0)
    202c:	ef1ff06f          	j	1f1c <prvTimerTask+0xa8>
    2030:	02444783          	lbu	a5,36(s0)
    2034:	0027f713          	andi	a4,a5,2
    2038:	0c070063          	beqz	a4,20f8 <prvTimerTask+0x284>
    203c:	ffe7f793          	andi	a5,a5,-2
    2040:	02f40223          	sb	a5,36(s0)
    2044:	ed9ff06f          	j	1f1c <prvTimerTask+0xa8>
    2048:	00412783          	lw	a5,4(sp)
    204c:	00c12583          	lw	a1,12(sp)
    2050:	000780e7          	jalr	a5
    2054:	00012783          	lw	a5,0(sp)
    2058:	ec07c2e3          	bltz	a5,1f1c <prvTimerTask+0xa8>
    205c:	ee1ff06f          	j	1f3c <prvTimerTask+0xc8>
    2060:	e69fe0ef          	jal	ra,ec8 <vTaskSuspendAll>
    2064:	e7dfe0ef          	jal	ra,ee0 <xTaskGetTickCount>
    2068:	00092783          	lw	a5,0(s2)
    206c:	00050413          	mv	s0,a0
    2070:	00f56c63          	bltu	a0,a5,2088 <prvTimerTask+0x214>
    2074:	000b2783          	lw	a5,0(s6)
    2078:	00892023          	sw	s0,0(s2)
    207c:	0007a603          	lw	a2,0(a5)
    2080:	00163613          	seqz	a2,a2
    2084:	e81ff06f          	j	1f04 <prvTimerTask+0x90>
    2088:	d1dff0ef          	jal	ra,1da4 <prvSwitchTimerLists>
    208c:	00892023          	sw	s0,0(s2)
    2090:	839ff0ef          	jal	ra,18c8 <xTaskResumeAll>
    2094:	e89ff06f          	j	1f1c <prvTimerTask+0xa8>
    2098:	d0dff0ef          	jal	ra,1da4 <prvSwitchTimerLists>
    209c:	ec5ff06f          	j	1f60 <prvTimerTask+0xec>
    20a0:	00ebf463          	bgeu	s7,a4,20a8 <prvTimerTask+0x234>
    20a4:	f0e7f4e3          	bgeu	a5,a4,1fac <prvTimerTask+0x138>
    20a8:	000a2503          	lw	a0,0(s4)
    20ac:	00440593          	addi	a1,s0,4
    20b0:	b69fe0ef          	jal	ra,c18 <vListInsert>
    20b4:	e69ff06f          	j	1f1c <prvTimerTask+0xa8>
    20b8:	811ff0ef          	jal	ra,18c8 <xTaskResumeAll>
    20bc:	000a2783          	lw	a5,0(s4)
    20c0:	00c7a783          	lw	a5,12(a5)
    20c4:	00c7ac03          	lw	s8,12(a5)
    20c8:	004c0c93          	addi	s9,s8,4
    20cc:	000c8513          	mv	a0,s9
    20d0:	b99fe0ef          	jal	ra,c68 <uxListRemove>
    20d4:	024c4783          	lbu	a5,36(s8)
    20d8:	0047f713          	andi	a4,a5,4
    20dc:	02071463          	bnez	a4,2104 <prvTimerTask+0x290>
    20e0:	ffe7f793          	andi	a5,a5,-2
    20e4:	02fc0223          	sb	a5,36(s8)
    20e8:	020c2783          	lw	a5,32(s8)
    20ec:	000c0513          	mv	a0,s8
    20f0:	000780e7          	jalr	a5
    20f4:	e29ff06f          	j	1f1c <prvTimerTask+0xa8>
    20f8:	00040513          	mv	a0,s0
    20fc:	9c4fe0ef          	jal	ra,2c0 <vPortFree>
    2100:	e1dff06f          	j	1f1c <prvTimerTask+0xa8>
    2104:	018c2703          	lw	a4,24(s8)
    2108:	018c2823          	sw	s8,16(s8)
    210c:	00eb87b3          	add	a5,s7,a4
    2110:	00fc2223          	sw	a5,4(s8)
    2114:	00f47a63          	bgeu	s0,a5,2128 <prvTimerTask+0x2b4>
    2118:	000a2503          	lw	a0,0(s4)
    211c:	000c8593          	mv	a1,s9
    2120:	af9fe0ef          	jal	ra,c18 <vListInsert>
    2124:	fc5ff06f          	j	20e8 <prvTimerTask+0x274>
    2128:	41740433          	sub	s0,s0,s7
    212c:	02e46063          	bltu	s0,a4,214c <prvTimerTask+0x2d8>
    2130:	00000713          	li	a4,0
    2134:	00000693          	li	a3,0
    2138:	000b8613          	mv	a2,s7
    213c:	00000593          	li	a1,0
    2140:	000c0513          	mv	a0,s8
    2144:	b8dff0ef          	jal	ra,1cd0 <xTimerGenericCommand>
    2148:	fa1ff06f          	j	20e8 <prvTimerTask+0x274>
    214c:	000b2503          	lw	a0,0(s6)
    2150:	000c8593          	mv	a1,s9
    2154:	ac5fe0ef          	jal	ra,c18 <vListInsert>
    2158:	f91ff06f          	j	20e8 <prvTimerTask+0x274>

0000215c <vSendString>:
    215c:	fe010113          	addi	sp,sp,-32
    2160:	00812c23          	sw	s0,24(sp)
    2164:	00912a23          	sw	s1,20(sp)
    2168:	01212823          	sw	s2,16(sp)
    216c:	01312623          	sw	s3,12(sp)
    2170:	00112e23          	sw	ra,28(sp)
    2174:	00050493          	mv	s1,a0
    2178:	00000413          	li	s0,0
    217c:	b44ff0ef          	jal	ra,14c0 <vTaskEnterCritical>
    2180:	000109b7          	lui	s3,0x10
    2184:	8141a903          	lw	s2,-2028(gp) # 2d34 <TOHOST_PORT>
    2188:	0140006f          	j	219c <vSendString+0x40>
    218c:	0007c783          	lbu	a5,0(a5)
    2190:	00140413          	addi	s0,s0,1
    2194:	0137e7b3          	or	a5,a5,s3
    2198:	00f92023          	sw	a5,0(s2)
    219c:	00048513          	mv	a0,s1
    21a0:	159000ef          	jal	ra,2af8 <strlen>
    21a4:	008487b3          	add	a5,s1,s0
    21a8:	fea462e3          	bltu	s0,a0,218c <vSendString+0x30>
    21ac:	01812403          	lw	s0,24(sp)
    21b0:	01c12083          	lw	ra,28(sp)
    21b4:	01412483          	lw	s1,20(sp)
    21b8:	01012903          	lw	s2,16(sp)
    21bc:	00c12983          	lw	s3,12(sp)
    21c0:	02010113          	addi	sp,sp,32
    21c4:	b2cff06f          	j	14f0 <vTaskExitCritical>

000021c8 <simrv_exit>:
    21c8:	8141a783          	lw	a5,-2028(gp) # 2d34 <TOHOST_PORT>
    21cc:	00020737          	lui	a4,0x20
    21d0:	00e7a023          	sw	a4,0(a5)
    21d4:	0000006f          	j	21d4 <simrv_exit+0xc>

000021d8 <set_SEG>:
    21d8:	ff010113          	addi	sp,sp,-16
    21dc:	00812423          	sw	s0,8(sp)
    21e0:	00112623          	sw	ra,12(sp)
    21e4:	00050413          	mv	s0,a0
    21e8:	ad8ff0ef          	jal	ra,14c0 <vTaskEnterCritical>
    21ec:	8101a783          	lw	a5,-2032(gp) # 2d30 <SEG_PORT>
    21f0:	0087a023          	sw	s0,0(a5)
    21f4:	00812403          	lw	s0,8(sp)
    21f8:	00c12083          	lw	ra,12(sp)
    21fc:	01010113          	addi	sp,sp,16
    2200:	af0ff06f          	j	14f0 <vTaskExitCritical>

00002204 <set_PWM>:
    2204:	ff010113          	addi	sp,sp,-16
    2208:	00812423          	sw	s0,8(sp)
    220c:	00050413          	mv	s0,a0
    2210:	00912223          	sw	s1,4(sp)
    2214:	00112623          	sw	ra,12(sp)
    2218:	00058493          	mv	s1,a1
    221c:	00841413          	slli	s0,s0,0x8
    2220:	aa0ff0ef          	jal	ra,14c0 <vTaskEnterCritical>
    2224:	009465b3          	or	a1,s0,s1
    2228:	00812403          	lw	s0,8(sp)
    222c:	00c12083          	lw	ra,12(sp)
    2230:	00412483          	lw	s1,4(sp)
    2234:	80c1a783          	lw	a5,-2036(gp) # 2d2c <PWM_PORT>
    2238:	00b7a023          	sw	a1,0(a5)
    223c:	01010113          	addi	sp,sp,16
    2240:	ab0ff06f          	j	14f0 <vTaskExitCritical>

00002244 <init_EXINT>:
    2244:	fe010113          	addi	sp,sp,-32
    2248:	00912a23          	sw	s1,20(sp)
    224c:	01212823          	sw	s2,16(sp)
    2250:	01312623          	sw	s3,12(sp)
    2254:	00112e23          	sw	ra,28(sp)
    2258:	00812c23          	sw	s0,24(sp)
    225c:	00050493          	mv	s1,a0
    2260:	00058993          	mv	s3,a1
    2264:	00060913          	mv	s2,a2
    2268:	f14027f3          	csrr	a5,mhartid
    226c:	02050663          	beqz	a0,2298 <init_EXINT+0x54>
    2270:	00500737          	lui	a4,0x500
    2274:	02070713          	addi	a4,a4,32 # 500020 <_stack_top+0x4eac80>
    2278:	00e787b3          	add	a5,a5,a4
    227c:	00879793          	slli	a5,a5,0x8
    2280:	0007a703          	lw	a4,0(a5)
    2284:	fff50613          	addi	a2,a0,-1
    2288:	00100693          	li	a3,1
    228c:	00c696b3          	sll	a3,a3,a2
    2290:	00d76733          	or	a4,a4,a3
    2294:	00e7a023          	sw	a4,0(a5)
    2298:	01000513          	li	a0,16
    229c:	ec9fd0ef          	jal	ra,164 <pvPortMalloc>
    22a0:	00050413          	mv	s0,a0
    22a4:	00000613          	li	a2,0
    22a8:	00098513          	mv	a0,s3
    22ac:	00400593          	li	a1,4
    22b0:	b54fe0ef          	jal	ra,604 <xQueueGenericCreate>
    22b4:	00249713          	slli	a4,s1,0x2
    22b8:	00013797          	auipc	a5,0x13
    22bc:	c6078793          	addi	a5,a5,-928 # 14f18 <exints>
    22c0:	00a42223          	sw	a0,4(s0)
    22c4:	00942023          	sw	s1,0(s0)
    22c8:	01242623          	sw	s2,12(s0)
    22cc:	00e787b3          	add	a5,a5,a4
    22d0:	01c12083          	lw	ra,28(sp)
    22d4:	0087a023          	sw	s0,0(a5)
    22d8:	00040513          	mv	a0,s0
    22dc:	01812403          	lw	s0,24(sp)
    22e0:	01412483          	lw	s1,20(sp)
    22e4:	01012903          	lw	s2,16(sp)
    22e8:	00c12983          	lw	s3,12(sp)
    22ec:	02010113          	addi	sp,sp,32
    22f0:	00008067          	ret

000022f4 <get_EXINT>:
    22f4:	00052783          	lw	a5,0(a0)
    22f8:	ff010113          	addi	sp,sp,-16
    22fc:	40000737          	lui	a4,0x40000
    2300:	00279793          	slli	a5,a5,0x2
    2304:	00112623          	sw	ra,12(sp)
    2308:	00f707b3          	add	a5,a4,a5
    230c:	00d7a023          	sw	a3,0(a5)
    2310:	00052783          	lw	a5,0(a0)
    2314:	00452503          	lw	a0,4(a0)
    2318:	00279793          	slli	a5,a5,0x2
    231c:	00f70733          	add	a4,a4,a5
    2320:	00072023          	sw	zero,0(a4) # 40000000 <_stack_top+0x3ffeac60>
    2324:	df8fe0ef          	jal	ra,91c <xQueueReceive>
    2328:	00c12083          	lw	ra,12(sp)
    232c:	00100513          	li	a0,1
    2330:	01010113          	addi	sp,sp,16
    2334:	00008067          	ret

00002338 <handle_trap>:
    2338:	502007b7          	lui	a5,0x50200
    233c:	f1402773          	csrr	a4,mhartid
    2340:	00d71713          	slli	a4,a4,0xd
    2344:	00e787b3          	add	a5,a5,a4
    2348:	fe010113          	addi	sp,sp,-32
    234c:	00812c23          	sw	s0,24(sp)
    2350:	0047a403          	lw	s0,4(a5) # 50200004 <_stack_top+0x501eac64>
    2354:	00013797          	auipc	a5,0x13
    2358:	bc478793          	addi	a5,a5,-1084 # 14f18 <exints>
    235c:	00112e23          	sw	ra,28(sp)
    2360:	00241713          	slli	a4,s0,0x2
    2364:	00e787b3          	add	a5,a5,a4
    2368:	0007a783          	lw	a5,0(a5)
    236c:	02078463          	beqz	a5,2394 <handle_trap+0x5c>
    2370:	400006b7          	lui	a3,0x40000
    2374:	00e68733          	add	a4,a3,a4
    2378:	00072703          	lw	a4,0(a4)
    237c:	0047a503          	lw	a0,4(a5)
    2380:	00000693          	li	a3,0
    2384:	00000613          	li	a2,0
    2388:	00c10593          	addi	a1,sp,12
    238c:	00e12623          	sw	a4,12(sp)
    2390:	cc8fe0ef          	jal	ra,858 <xQueueGenericSendFromISR>
    2394:	502007b7          	lui	a5,0x50200
    2398:	f1402773          	csrr	a4,mhartid
    239c:	00d71713          	slli	a4,a4,0xd
    23a0:	00e787b3          	add	a5,a5,a4
    23a4:	01c12083          	lw	ra,28(sp)
    23a8:	0087a223          	sw	s0,4(a5) # 50200004 <_stack_top+0x501eac64>
    23ac:	01812403          	lw	s0,24(sp)
    23b0:	02010113          	addi	sp,sp,32
    23b4:	00008067          	ret

000023b8 <TaskHeartBeat>:
    23b8:	ff010113          	addi	sp,sp,-16
    23bc:	00812423          	sw	s0,8(sp)
    23c0:	00112623          	sw	ra,12(sp)
    23c4:	00001417          	auipc	s0,0x1
    23c8:	9ec40413          	addi	s0,s0,-1556 # 2db0 <cnt.0>
    23cc:	00042503          	lw	a0,0(s0)
    23d0:	e09ff0ef          	jal	ra,21d8 <set_SEG>
    23d4:	00042783          	lw	a5,0(s0)
    23d8:	3e800513          	li	a0,1000
    23dc:	00178793          	addi	a5,a5,1
    23e0:	00f42023          	sw	a5,0(s0)
    23e4:	eb0ff0ef          	jal	ra,1a94 <vTaskDelay>
    23e8:	fe5ff06f          	j	23cc <TaskHeartBeat+0x14>

000023ec <TaskLineTrace>:
    23ec:	fe010113          	addi	sp,sp,-32
    23f0:	00100613          	li	a2,1
    23f4:	00400593          	li	a1,4
    23f8:	00200513          	li	a0,2
    23fc:	00812c23          	sw	s0,24(sp)
    2400:	00912a23          	sw	s1,20(sp)
    2404:	01212823          	sw	s2,16(sp)
    2408:	00112e23          	sw	ra,28(sp)
    240c:	e39ff0ef          	jal	ra,2244 <init_EXINT>
    2410:	00050413          	mv	s0,a0
    2414:	00100913          	li	s2,1
    2418:	00200493          	li	s1,2
    241c:	00b00693          	li	a3,11
    2420:	fff00613          	li	a2,-1
    2424:	00c10593          	addi	a1,sp,12
    2428:	00040513          	mv	a0,s0
    242c:	ec9ff0ef          	jal	ra,22f4 <get_EXINT>
    2430:	00c12783          	lw	a5,12(sp)
    2434:	03278a63          	beq	a5,s2,2468 <TaskLineTrace+0x7c>
    2438:	04978063          	beq	a5,s1,2478 <TaskLineTrace+0x8c>
    243c:	fe0790e3          	bnez	a5,241c <TaskLineTrace+0x30>
    2440:	0c000593          	li	a1,192
    2444:	0c000513          	li	a0,192
    2448:	dbdff0ef          	jal	ra,2204 <set_PWM>
    244c:	00b00693          	li	a3,11
    2450:	fff00613          	li	a2,-1
    2454:	00c10593          	addi	a1,sp,12
    2458:	00040513          	mv	a0,s0
    245c:	e99ff0ef          	jal	ra,22f4 <get_EXINT>
    2460:	00c12783          	lw	a5,12(sp)
    2464:	fd279ae3          	bne	a5,s2,2438 <TaskLineTrace+0x4c>
    2468:	00000593          	li	a1,0
    246c:	0ff00513          	li	a0,255
    2470:	d95ff0ef          	jal	ra,2204 <set_PWM>
    2474:	fa9ff06f          	j	241c <TaskLineTrace+0x30>
    2478:	0ff00593          	li	a1,255
    247c:	00000513          	li	a0,0
    2480:	d85ff0ef          	jal	ra,2204 <set_PWM>
    2484:	f99ff06f          	j	241c <TaskLineTrace+0x30>

00002488 <vApplicationMallocFailedHook>:
    2488:	ff010113          	addi	sp,sp,-16
    248c:	00112623          	sw	ra,12(sp)
    2490:	30047073          	csrci	mstatus,8
    2494:	00000517          	auipc	a0,0x0
    2498:	76450513          	addi	a0,a0,1892 # 2bf8 <_etext+0x74>
    249c:	cc1ff0ef          	jal	ra,215c <vSendString>
    24a0:	d29ff0ef          	jal	ra,21c8 <simrv_exit>
    24a4:	0000006f          	j	24a4 <vApplicationMallocFailedHook+0x1c>

000024a8 <vApplicationStackOverflowHook>:
    24a8:	ff010113          	addi	sp,sp,-16
    24ac:	00112623          	sw	ra,12(sp)
    24b0:	30047073          	csrci	mstatus,8
    24b4:	00000517          	auipc	a0,0x0
    24b8:	75450513          	addi	a0,a0,1876 # 2c08 <_etext+0x84>
    24bc:	ca1ff0ef          	jal	ra,215c <vSendString>
    24c0:	d09ff0ef          	jal	ra,21c8 <simrv_exit>
    24c4:	0000006f          	j	24c4 <vApplicationStackOverflowHook+0x1c>

000024c8 <vApplicationTickHook>:
    24c8:	00008067          	ret
	...

00002500 <freertos_risc_v_trap_handler>:
    2500:	f8810113          	addi	sp,sp,-120
    2504:	00112223          	sw	ra,4(sp)
    2508:	00512423          	sw	t0,8(sp)
    250c:	00612623          	sw	t1,12(sp)
    2510:	00712823          	sw	t2,16(sp)
    2514:	00812a23          	sw	s0,20(sp)
    2518:	00912c23          	sw	s1,24(sp)
    251c:	00a12e23          	sw	a0,28(sp)
    2520:	02b12023          	sw	a1,32(sp)
    2524:	02c12223          	sw	a2,36(sp)
    2528:	02d12423          	sw	a3,40(sp)
    252c:	02e12623          	sw	a4,44(sp)
    2530:	02f12823          	sw	a5,48(sp)
    2534:	03012a23          	sw	a6,52(sp)
    2538:	03112c23          	sw	a7,56(sp)
    253c:	03212e23          	sw	s2,60(sp)
    2540:	05312023          	sw	s3,64(sp)
    2544:	05412223          	sw	s4,68(sp)
    2548:	05512423          	sw	s5,72(sp)
    254c:	05612623          	sw	s6,76(sp)
    2550:	05712823          	sw	s7,80(sp)
    2554:	05812a23          	sw	s8,84(sp)
    2558:	05912c23          	sw	s9,88(sp)
    255c:	05a12e23          	sw	s10,92(sp)
    2560:	07b12023          	sw	s11,96(sp)
    2564:	07c12223          	sw	t3,100(sp)
    2568:	07d12423          	sw	t4,104(sp)
    256c:	07e12623          	sw	t5,108(sp)
    2570:	07f12823          	sw	t6,112(sp)
    2574:	300022f3          	csrr	t0,mstatus
    2578:	06512a23          	sw	t0,116(sp)
    257c:	00000297          	auipc	t0,0x0
    2580:	7e42a283          	lw	t0,2020(t0) # 2d60 <pxCurrentTCB>
    2584:	0022a023          	sw	sp,0(t0)
    2588:	34202573          	csrr	a0,mcause
    258c:	341025f3          	csrr	a1,mepc

00002590 <test_if_asynchronous>:
    2590:	01f55613          	srli	a2,a0,0x1f
    2594:	08060063          	beqz	a2,2614 <handle_synchronous>
    2598:	00b12023          	sw	a1,0(sp)

0000259c <handle_asynchronous>:
    259c:	00100293          	li	t0,1
    25a0:	01f29293          	slli	t0,t0,0x1f
    25a4:	00728313          	addi	t1,t0,7
    25a8:	04651c63          	bne	a0,t1,2600 <test_if_external_interrupt>
    25ac:	00000297          	auipc	t0,0x0
    25b0:	7a82a283          	lw	t0,1960(t0) # 2d54 <pullMachineTimerCompareRegister>
    25b4:	00000317          	auipc	t1,0x0
    25b8:	77032303          	lw	t1,1904(t1) # 2d24 <pullNextTime>
    25bc:	fff00e93          	li	t4,-1
    25c0:	00032383          	lw	t2,0(t1)
    25c4:	00432e03          	lw	t3,4(t1)
    25c8:	01d2a023          	sw	t4,0(t0)
    25cc:	01c2a223          	sw	t3,4(t0)
    25d0:	0072a023          	sw	t2,0(t0)
    25d4:	8181a283          	lw	t0,-2024(gp) # 2d38 <uxTimerIncrementsForOneTick>
    25d8:	00728eb3          	add	t4,t0,t2
    25dc:	007ebf33          	sltu	t5,t4,t2
    25e0:	01ee0fb3          	add	t6,t3,t5
    25e4:	01d32023          	sw	t4,0(t1)
    25e8:	01f32223          	sw	t6,4(t1)
    25ec:	81c1a103          	lw	sp,-2020(gp) # 2d3c <xISRStackTop>
    25f0:	8fdfe0ef          	jal	ra,eec <xTaskIncrementTick>
    25f4:	04050a63          	beqz	a0,2648 <processed_source>
    25f8:	b49fe0ef          	jal	ra,1140 <vTaskSwitchContext>
    25fc:	04c0006f          	j	2648 <processed_source>

00002600 <test_if_external_interrupt>:
    2600:	00430313          	addi	t1,t1,4
    2604:	02651e63          	bne	a0,t1,2640 <as_yet_unhandled>
    2608:	81c1a103          	lw	sp,-2020(gp) # 2d3c <xISRStackTop>
    260c:	d2dff0ef          	jal	ra,2338 <handle_trap>
    2610:	0380006f          	j	2648 <processed_source>

00002614 <handle_synchronous>:
    2614:	00458593          	addi	a1,a1,4
    2618:	00b12023          	sw	a1,0(sp)

0000261c <test_if_environment_call>:
    261c:	00b00293          	li	t0,11
    2620:	00551863          	bne	a0,t0,2630 <is_exception>
    2624:	81c1a103          	lw	sp,-2020(gp) # 2d3c <xISRStackTop>
    2628:	b19fe0ef          	jal	ra,1140 <vTaskSwitchContext>
    262c:	01c0006f          	j	2648 <processed_source>

00002630 <is_exception>:
    2630:	342022f3          	csrr	t0,mcause
    2634:	34102373          	csrr	t1,mepc
    2638:	300023f3          	csrr	t2,mstatus
    263c:	ff5ff06f          	j	2630 <is_exception>

00002640 <as_yet_unhandled>:
    2640:	342022f3          	csrr	t0,mcause
    2644:	ffdff06f          	j	2640 <as_yet_unhandled>

00002648 <processed_source>:
    2648:	00000317          	auipc	t1,0x0
    264c:	71832303          	lw	t1,1816(t1) # 2d60 <pxCurrentTCB>
    2650:	00032103          	lw	sp,0(t1)
    2654:	00012283          	lw	t0,0(sp)
    2658:	34129073          	csrw	mepc,t0
    265c:	07412283          	lw	t0,116(sp)
    2660:	30029073          	csrw	mstatus,t0
    2664:	00412083          	lw	ra,4(sp)
    2668:	00812283          	lw	t0,8(sp)
    266c:	00c12303          	lw	t1,12(sp)
    2670:	01012383          	lw	t2,16(sp)
    2674:	01412403          	lw	s0,20(sp)
    2678:	01812483          	lw	s1,24(sp)
    267c:	01c12503          	lw	a0,28(sp)
    2680:	02012583          	lw	a1,32(sp)
    2684:	02412603          	lw	a2,36(sp)
    2688:	02812683          	lw	a3,40(sp)
    268c:	02c12703          	lw	a4,44(sp)
    2690:	03012783          	lw	a5,48(sp)
    2694:	03412803          	lw	a6,52(sp)
    2698:	03812883          	lw	a7,56(sp)
    269c:	03c12903          	lw	s2,60(sp)
    26a0:	04012983          	lw	s3,64(sp)
    26a4:	04412a03          	lw	s4,68(sp)
    26a8:	04812a83          	lw	s5,72(sp)
    26ac:	04c12b03          	lw	s6,76(sp)
    26b0:	05012b83          	lw	s7,80(sp)
    26b4:	05412c03          	lw	s8,84(sp)
    26b8:	05812c83          	lw	s9,88(sp)
    26bc:	05c12d03          	lw	s10,92(sp)
    26c0:	06012d83          	lw	s11,96(sp)
    26c4:	06412e03          	lw	t3,100(sp)
    26c8:	06812e83          	lw	t4,104(sp)
    26cc:	06c12f03          	lw	t5,108(sp)
    26d0:	07012f83          	lw	t6,112(sp)
    26d4:	07810113          	addi	sp,sp,120
    26d8:	30200073          	mret
    26dc:	00000013          	nop
    26e0:	00000013          	nop
    26e4:	00000013          	nop
    26e8:	00000013          	nop
    26ec:	00000013          	nop
    26f0:	00000013          	nop
    26f4:	00000013          	nop
    26f8:	00000013          	nop
    26fc:	00000013          	nop

00002700 <xPortStartFirstTask>:
    2700:	00000297          	auipc	t0,0x0
    2704:	e0028293          	addi	t0,t0,-512 # 2500 <freertos_risc_v_trap_handler>
    2708:	30529073          	csrw	mtvec,t0
    270c:	00000117          	auipc	sp,0x0
    2710:	65412103          	lw	sp,1620(sp) # 2d60 <pxCurrentTCB>
    2714:	00012103          	lw	sp,0(sp)
    2718:	00012083          	lw	ra,0(sp)
    271c:	00c12303          	lw	t1,12(sp)
    2720:	01012383          	lw	t2,16(sp)
    2724:	01412403          	lw	s0,20(sp)
    2728:	01812483          	lw	s1,24(sp)
    272c:	01c12503          	lw	a0,28(sp)
    2730:	02012583          	lw	a1,32(sp)
    2734:	02412603          	lw	a2,36(sp)
    2738:	02812683          	lw	a3,40(sp)
    273c:	02c12703          	lw	a4,44(sp)
    2740:	03012783          	lw	a5,48(sp)
    2744:	03412803          	lw	a6,52(sp)
    2748:	03812883          	lw	a7,56(sp)
    274c:	03c12903          	lw	s2,60(sp)
    2750:	04012983          	lw	s3,64(sp)
    2754:	04412a03          	lw	s4,68(sp)
    2758:	04812a83          	lw	s5,72(sp)
    275c:	04c12b03          	lw	s6,76(sp)
    2760:	05012b83          	lw	s7,80(sp)
    2764:	05412c03          	lw	s8,84(sp)
    2768:	05812c83          	lw	s9,88(sp)
    276c:	05c12d03          	lw	s10,92(sp)
    2770:	06012d83          	lw	s11,96(sp)
    2774:	06412e03          	lw	t3,100(sp)
    2778:	06812e83          	lw	t4,104(sp)
    277c:	06c12f03          	lw	t5,108(sp)
    2780:	07012f83          	lw	t6,112(sp)
    2784:	07412283          	lw	t0,116(sp)
    2788:	00828293          	addi	t0,t0,8
    278c:	30029073          	csrw	mstatus,t0
    2790:	00812283          	lw	t0,8(sp)
    2794:	07810113          	addi	sp,sp,120
    2798:	00008067          	ret
    279c:	00000013          	nop
    27a0:	00000013          	nop
    27a4:	00000013          	nop
    27a8:	00000013          	nop
    27ac:	00000013          	nop
    27b0:	00000013          	nop
    27b4:	00000013          	nop
    27b8:	00000013          	nop
    27bc:	00000013          	nop
    27c0:	00000013          	nop
    27c4:	00000013          	nop
    27c8:	00000013          	nop
    27cc:	00000013          	nop
    27d0:	00000013          	nop
    27d4:	00000013          	nop
    27d8:	00000013          	nop
    27dc:	00000013          	nop
    27e0:	00000013          	nop
    27e4:	00000013          	nop
    27e8:	00000013          	nop
    27ec:	00000013          	nop
    27f0:	00000013          	nop
    27f4:	00000013          	nop
    27f8:	00000013          	nop
    27fc:	00000013          	nop

00002800 <pxPortInitialiseStack>:
    2800:	300022f3          	csrr	t0,mstatus
    2804:	ff72f293          	andi	t0,t0,-9
    2808:	18800313          	li	t1,392
    280c:	00431313          	slli	t1,t1,0x4
    2810:	0062e2b3          	or	t0,t0,t1
    2814:	ffc50513          	addi	a0,a0,-4
    2818:	00552023          	sw	t0,0(a0)
    281c:	fa850513          	addi	a0,a0,-88
    2820:	00c52023          	sw	a2,0(a0)
    2824:	fe850513          	addi	a0,a0,-24
    2828:	00052023          	sw	zero,0(a0)
    282c:	00000293          	li	t0,0

00002830 <chip_specific_stack_frame>:
    2830:	00028a63          	beqz	t0,2844 <chip_specific_stack_frame+0x14>
    2834:	ffc50513          	addi	a0,a0,-4
    2838:	00052023          	sw	zero,0(a0)
    283c:	fff28293          	addi	t0,t0,-1
    2840:	ff1ff06f          	j	2830 <chip_specific_stack_frame>
    2844:	ffc50513          	addi	a0,a0,-4
    2848:	00b52023          	sw	a1,0(a0)
    284c:	00008067          	ret
	...

00002884 <__clzsi2>:
int
__clzSI2 (UWtype x)
{
  Wtype ret;

  count_leading_zeros (ret, x);
    2884:	000107b7          	lui	a5,0x10
    2888:	02f57a63          	bgeu	a0,a5,28bc <__clzsi2+0x38>
    288c:	10053793          	sltiu	a5,a0,256
    2890:	0017c793          	xori	a5,a5,1
    2894:	00379793          	slli	a5,a5,0x3
    2898:	00003737          	lui	a4,0x3
    289c:	02000693          	li	a3,32
    28a0:	40f686b3          	sub	a3,a3,a5
    28a4:	00f55533          	srl	a0,a0,a5
    28a8:	c1c70793          	addi	a5,a4,-996 # 2c1c <__clz_tab>
    28ac:	00a787b3          	add	a5,a5,a0
    28b0:	0007c503          	lbu	a0,0(a5) # 10000 <__global_pointer$+0xcae0>

  return ret;
}
    28b4:	40a68533          	sub	a0,a3,a0
    28b8:	00008067          	ret
  count_leading_zeros (ret, x);
    28bc:	01000737          	lui	a4,0x1000
    28c0:	01000793          	li	a5,16
    28c4:	fce56ae3          	bltu	a0,a4,2898 <__clzsi2+0x14>
    28c8:	01800793          	li	a5,24
    28cc:	fcdff06f          	j	2898 <__clzsi2+0x14>

000028d0 <__mulsi3>:
/* Our RV64 64-bit routine is equivalent to our RV32 32-bit routine.  */
# define __muldi3 __mulsi3
#endif

FUNC_BEGIN (__muldi3)
  mv     a2, a0
    28d0:	00050613          	mv	a2,a0
  li     a0, 0
    28d4:	00000513          	li	a0,0
.L1:
  andi   a3, a1, 1
    28d8:	0015f693          	andi	a3,a1,1
  beqz   a3, .L2
    28dc:	00068463          	beqz	a3,28e4 <__mulsi3+0x14>
  add    a0, a0, a2
    28e0:	00c50533          	add	a0,a0,a2
.L2:
  srli   a1, a1, 1
    28e4:	0015d593          	srli	a1,a1,0x1
  slli   a2, a2, 1
    28e8:	00161613          	slli	a2,a2,0x1
  bnez   a1, .L1
    28ec:	fe0596e3          	bnez	a1,28d8 <__mulsi3+0x8>
  ret
    28f0:	00008067          	ret

000028f4 <memcpy>:
    28f4:	00b547b3          	xor	a5,a0,a1
    28f8:	0037f793          	andi	a5,a5,3
    28fc:	00c508b3          	add	a7,a0,a2
    2900:	06079663          	bnez	a5,296c <memcpy+0x78>
    2904:	00300793          	li	a5,3
    2908:	06c7f263          	bgeu	a5,a2,296c <memcpy+0x78>
    290c:	00357793          	andi	a5,a0,3
    2910:	00050713          	mv	a4,a0
    2914:	0c079a63          	bnez	a5,29e8 <memcpy+0xf4>
    2918:	ffc8f613          	andi	a2,a7,-4
    291c:	40e606b3          	sub	a3,a2,a4
    2920:	02000793          	li	a5,32
    2924:	02000293          	li	t0,32
    2928:	06d7c263          	blt	a5,a3,298c <memcpy+0x98>
    292c:	00058693          	mv	a3,a1
    2930:	00070793          	mv	a5,a4
    2934:	02c77863          	bgeu	a4,a2,2964 <memcpy+0x70>
    2938:	0006a803          	lw	a6,0(a3) # 40000000 <_stack_top+0x3ffeac60>
    293c:	00478793          	addi	a5,a5,4
    2940:	00468693          	addi	a3,a3,4
    2944:	ff07ae23          	sw	a6,-4(a5)
    2948:	fec7e8e3          	bltu	a5,a2,2938 <memcpy+0x44>
    294c:	fff60793          	addi	a5,a2,-1
    2950:	40e787b3          	sub	a5,a5,a4
    2954:	ffc7f793          	andi	a5,a5,-4
    2958:	00478793          	addi	a5,a5,4
    295c:	00f70733          	add	a4,a4,a5
    2960:	00f585b3          	add	a1,a1,a5
    2964:	01176863          	bltu	a4,a7,2974 <memcpy+0x80>
    2968:	00008067          	ret
    296c:	00050713          	mv	a4,a0
    2970:	ff157ce3          	bgeu	a0,a7,2968 <memcpy+0x74>
    2974:	0005c783          	lbu	a5,0(a1)
    2978:	00170713          	addi	a4,a4,1 # 1000001 <_stack_top+0xfeac61>
    297c:	00158593          	addi	a1,a1,1
    2980:	fef70fa3          	sb	a5,-1(a4)
    2984:	ff1768e3          	bltu	a4,a7,2974 <memcpy+0x80>
    2988:	00008067          	ret
    298c:	0045a683          	lw	a3,4(a1)
    2990:	01c5a783          	lw	a5,28(a1)
    2994:	0005af83          	lw	t6,0(a1)
    2998:	0085af03          	lw	t5,8(a1)
    299c:	00c5ae83          	lw	t4,12(a1)
    29a0:	0105ae03          	lw	t3,16(a1)
    29a4:	0145a303          	lw	t1,20(a1)
    29a8:	0185a803          	lw	a6,24(a1)
    29ac:	00d72223          	sw	a3,4(a4)
    29b0:	0205a683          	lw	a3,32(a1)
    29b4:	01f72023          	sw	t6,0(a4)
    29b8:	01e72423          	sw	t5,8(a4)
    29bc:	01d72623          	sw	t4,12(a4)
    29c0:	01c72823          	sw	t3,16(a4)
    29c4:	00672a23          	sw	t1,20(a4)
    29c8:	01072c23          	sw	a6,24(a4)
    29cc:	00f72e23          	sw	a5,28(a4)
    29d0:	02470713          	addi	a4,a4,36
    29d4:	40e607b3          	sub	a5,a2,a4
    29d8:	fed72e23          	sw	a3,-4(a4)
    29dc:	02458593          	addi	a1,a1,36
    29e0:	faf2c6e3          	blt	t0,a5,298c <memcpy+0x98>
    29e4:	f49ff06f          	j	292c <memcpy+0x38>
    29e8:	0005c683          	lbu	a3,0(a1)
    29ec:	00170713          	addi	a4,a4,1
    29f0:	00377793          	andi	a5,a4,3
    29f4:	fed70fa3          	sb	a3,-1(a4)
    29f8:	00158593          	addi	a1,a1,1
    29fc:	f0078ee3          	beqz	a5,2918 <memcpy+0x24>
    2a00:	0005c683          	lbu	a3,0(a1)
    2a04:	00170713          	addi	a4,a4,1
    2a08:	00377793          	andi	a5,a4,3
    2a0c:	fed70fa3          	sb	a3,-1(a4)
    2a10:	00158593          	addi	a1,a1,1
    2a14:	fc079ae3          	bnez	a5,29e8 <memcpy+0xf4>
    2a18:	f01ff06f          	j	2918 <memcpy+0x24>

00002a1c <memset>:
    2a1c:	00f00313          	li	t1,15
    2a20:	00050713          	mv	a4,a0
    2a24:	02c37e63          	bgeu	t1,a2,2a60 <memset+0x44>
    2a28:	00f77793          	andi	a5,a4,15
    2a2c:	0a079063          	bnez	a5,2acc <memset+0xb0>
    2a30:	08059263          	bnez	a1,2ab4 <memset+0x98>
    2a34:	ff067693          	andi	a3,a2,-16
    2a38:	00f67613          	andi	a2,a2,15
    2a3c:	00e686b3          	add	a3,a3,a4
    2a40:	00b72023          	sw	a1,0(a4)
    2a44:	00b72223          	sw	a1,4(a4)
    2a48:	00b72423          	sw	a1,8(a4)
    2a4c:	00b72623          	sw	a1,12(a4)
    2a50:	01070713          	addi	a4,a4,16
    2a54:	fed766e3          	bltu	a4,a3,2a40 <memset+0x24>
    2a58:	00061463          	bnez	a2,2a60 <memset+0x44>
    2a5c:	00008067          	ret
    2a60:	40c306b3          	sub	a3,t1,a2
    2a64:	00269693          	slli	a3,a3,0x2
    2a68:	00000297          	auipc	t0,0x0
    2a6c:	005686b3          	add	a3,a3,t0
    2a70:	00c68067          	jr	12(a3)
    2a74:	00b70723          	sb	a1,14(a4)
    2a78:	00b706a3          	sb	a1,13(a4)
    2a7c:	00b70623          	sb	a1,12(a4)
    2a80:	00b705a3          	sb	a1,11(a4)
    2a84:	00b70523          	sb	a1,10(a4)
    2a88:	00b704a3          	sb	a1,9(a4)
    2a8c:	00b70423          	sb	a1,8(a4)
    2a90:	00b703a3          	sb	a1,7(a4)
    2a94:	00b70323          	sb	a1,6(a4)
    2a98:	00b702a3          	sb	a1,5(a4)
    2a9c:	00b70223          	sb	a1,4(a4)
    2aa0:	00b701a3          	sb	a1,3(a4)
    2aa4:	00b70123          	sb	a1,2(a4)
    2aa8:	00b700a3          	sb	a1,1(a4)
    2aac:	00b70023          	sb	a1,0(a4)
    2ab0:	00008067          	ret
    2ab4:	0ff5f593          	zext.b	a1,a1
    2ab8:	00859693          	slli	a3,a1,0x8
    2abc:	00d5e5b3          	or	a1,a1,a3
    2ac0:	01059693          	slli	a3,a1,0x10
    2ac4:	00d5e5b3          	or	a1,a1,a3
    2ac8:	f6dff06f          	j	2a34 <memset+0x18>
    2acc:	00279693          	slli	a3,a5,0x2
    2ad0:	00000297          	auipc	t0,0x0
    2ad4:	005686b3          	add	a3,a3,t0
    2ad8:	00008293          	mv	t0,ra
    2adc:	fa0680e7          	jalr	-96(a3)
    2ae0:	00028093          	mv	ra,t0
    2ae4:	ff078793          	addi	a5,a5,-16
    2ae8:	40f70733          	sub	a4,a4,a5
    2aec:	00f60633          	add	a2,a2,a5
    2af0:	f6c378e3          	bgeu	t1,a2,2a60 <memset+0x44>
    2af4:	f3dff06f          	j	2a30 <memset+0x14>

00002af8 <strlen>:
    2af8:	00357793          	andi	a5,a0,3
    2afc:	00050713          	mv	a4,a0
    2b00:	04079c63          	bnez	a5,2b58 <strlen+0x60>
    2b04:	7f7f86b7          	lui	a3,0x7f7f8
    2b08:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_stack_top+0x7f7e2bdf>
    2b0c:	fff00593          	li	a1,-1
    2b10:	00072603          	lw	a2,0(a4)
    2b14:	00470713          	addi	a4,a4,4
    2b18:	00d677b3          	and	a5,a2,a3
    2b1c:	00d787b3          	add	a5,a5,a3
    2b20:	00c7e7b3          	or	a5,a5,a2
    2b24:	00d7e7b3          	or	a5,a5,a3
    2b28:	feb784e3          	beq	a5,a1,2b10 <strlen+0x18>
    2b2c:	ffc74683          	lbu	a3,-4(a4)
    2b30:	40a707b3          	sub	a5,a4,a0
    2b34:	04068463          	beqz	a3,2b7c <strlen+0x84>
    2b38:	ffd74683          	lbu	a3,-3(a4)
    2b3c:	02068c63          	beqz	a3,2b74 <strlen+0x7c>
    2b40:	ffe74503          	lbu	a0,-2(a4)
    2b44:	00a03533          	snez	a0,a0
    2b48:	00f50533          	add	a0,a0,a5
    2b4c:	ffe50513          	addi	a0,a0,-2
    2b50:	00008067          	ret
    2b54:	fa0688e3          	beqz	a3,2b04 <strlen+0xc>
    2b58:	00074783          	lbu	a5,0(a4)
    2b5c:	00170713          	addi	a4,a4,1
    2b60:	00377693          	andi	a3,a4,3
    2b64:	fe0798e3          	bnez	a5,2b54 <strlen+0x5c>
    2b68:	40a70733          	sub	a4,a4,a0
    2b6c:	fff70513          	addi	a0,a4,-1
    2b70:	00008067          	ret
    2b74:	ffd78513          	addi	a0,a5,-3
    2b78:	00008067          	ret
    2b7c:	ffc78513          	addi	a0,a5,-4
    2b80:	00008067          	ret

Disassembly of section .rodata:

00002b84 <__clz_tab-0x98>:
    2b84:	4449                	li	s0,18
    2b86:	454c                	lw	a1,12(a0)
    2b88:	0000                	unimp
    2b8a:	0000                	unimp
    2b8c:	6d54                	flw	fa3,28(a0)
    2b8e:	5172                	lw	sp,60(sp)
    2b90:	0000                	unimp
    2b92:	0000                	unimp
    2b94:	6d54                	flw	fa3,28(a0)
    2b96:	2072                	fld	ft0,280(sp)
    2b98:	00637653          	fadd.s	fa2,ft6,ft6
    2b9c:	f3e4                	fsw	fs1,100(a5)
    2b9e:	ffff                	0xffff
    2ba0:	f3e4                	fsw	fs1,100(a5)
    2ba2:	ffff                	0xffff
    2ba4:	f3e4                	fsw	fs1,100(a5)
    2ba6:	ffff                	0xffff
    2ba8:	f484                	fsw	fs1,40(s1)
    2baa:	ffff                	0xffff
    2bac:	f44c                	fsw	fa1,44(s0)
    2bae:	ffff                	0xffff
    2bb0:	f494                	fsw	fa3,40(s1)
    2bb2:	ffff                	0xffff
    2bb4:	f3e4                	fsw	fs1,100(a5)
    2bb6:	ffff                	0xffff
    2bb8:	f3e4                	fsw	fs1,100(a5)
    2bba:	ffff                	0xffff
    2bbc:	f484                	fsw	fs1,40(s1)
    2bbe:	ffff                	0xffff
    2bc0:	f44c                	fsw	fa1,44(s0)
    2bc2:	ffff                	0xffff
    2bc4:	6548                	flw	fa0,12(a0)
    2bc6:	6c6c                	flw	fa1,92(s0)
    2bc8:	7246206f          	j	652ec <_stack_top+0x4ff4c>
    2bcc:	6565                	lui	a0,0x19
    2bce:	5452                	lw	s0,52(sp)
    2bd0:	2121534f          	fnmadd.s	ft6,ft2,fs2,ft4,unknown
    2bd4:	000a                	c.slli	zero,0x2
    2bd6:	0000                	unimp
    2bd8:	6154                	flw	fa3,4(a0)
    2bda:	694c6b73          	csrrsi	s6,0x694,24
    2bde:	656e                	flw	fa0,216(sp)
    2be0:	7254                	flw	fa3,36(a2)
    2be2:	6361                	lui	t1,0x18
    2be4:	0065                	c.nop	25
    2be6:	0000                	unimp
    2be8:	6154                	flw	fa3,4(a0)
    2bea:	65486b73          	csrrsi	s6,0x654,16
    2bee:	7261                	lui	tp,0xffff8
    2bf0:	4274                	lw	a3,68(a2)
    2bf2:	6165                	addi	sp,sp,112
    2bf4:	0074                	addi	a3,sp,12
    2bf6:	0000                	unimp
    2bf8:	614d                	addi	sp,sp,176
    2bfa:	6c6c                	flw	fa1,92(s0)
    2bfc:	4620636f          	jal	t1,905e <__global_pointer$+0x5b3e>
    2c00:	6961                	lui	s2,0x18
    2c02:	656c                	flw	fa1,76(a0)
    2c04:	2164                	fld	fs1,192(a0)
    2c06:	0000                	unimp
    2c08:	63617453          	0x63617453
    2c0c:	764f206b          	0x764f206b
    2c10:	7265                	lui	tp,0xffff9
    2c12:	6c66                	flw	fs8,88(sp)
    2c14:	2121776f          	jal	a4,19e26 <_stack_top+0x4a86>
    2c18:	0000                	unimp
	...

00002c1c <__clz_tab>:
const UQItype __clz_tab[256] =
    2c1c:	0100                	addi	s0,sp,128
    2c1e:	0202                	c.slli64	tp
    2c20:	03030303          	lb	t1,48(t1) # 18030 <_stack_top+0x2c90>
    2c24:	0404                	addi	s1,sp,512
    2c26:	0404                	addi	s1,sp,512
    2c28:	0404                	addi	s1,sp,512
    2c2a:	0404                	addi	s1,sp,512
    2c2c:	0505                	addi	a0,a0,1
    2c2e:	0505                	addi	a0,a0,1
    2c30:	0505                	addi	a0,a0,1
    2c32:	0505                	addi	a0,a0,1
    2c34:	0505                	addi	a0,a0,1
    2c36:	0505                	addi	a0,a0,1
    2c38:	0505                	addi	a0,a0,1
    2c3a:	0505                	addi	a0,a0,1
    2c3c:	0606                	slli	a2,a2,0x1
    2c3e:	0606                	slli	a2,a2,0x1
    2c40:	0606                	slli	a2,a2,0x1
    2c42:	0606                	slli	a2,a2,0x1
    2c44:	0606                	slli	a2,a2,0x1
    2c46:	0606                	slli	a2,a2,0x1
    2c48:	0606                	slli	a2,a2,0x1
    2c4a:	0606                	slli	a2,a2,0x1
    2c4c:	0606                	slli	a2,a2,0x1
    2c4e:	0606                	slli	a2,a2,0x1
    2c50:	0606                	slli	a2,a2,0x1
    2c52:	0606                	slli	a2,a2,0x1
    2c54:	0606                	slli	a2,a2,0x1
    2c56:	0606                	slli	a2,a2,0x1
    2c58:	0606                	slli	a2,a2,0x1
    2c5a:	0606                	slli	a2,a2,0x1
    2c5c:	07070707          	0x7070707
    2c60:	07070707          	0x7070707
    2c64:	07070707          	0x7070707
    2c68:	07070707          	0x7070707
    2c6c:	07070707          	0x7070707
    2c70:	07070707          	0x7070707
    2c74:	07070707          	0x7070707
    2c78:	07070707          	0x7070707
    2c7c:	07070707          	0x7070707
    2c80:	07070707          	0x7070707
    2c84:	07070707          	0x7070707
    2c88:	07070707          	0x7070707
    2c8c:	07070707          	0x7070707
    2c90:	07070707          	0x7070707
    2c94:	07070707          	0x7070707
    2c98:	07070707          	0x7070707
    2c9c:	0808                	addi	a0,sp,16
    2c9e:	0808                	addi	a0,sp,16
    2ca0:	0808                	addi	a0,sp,16
    2ca2:	0808                	addi	a0,sp,16
    2ca4:	0808                	addi	a0,sp,16
    2ca6:	0808                	addi	a0,sp,16
    2ca8:	0808                	addi	a0,sp,16
    2caa:	0808                	addi	a0,sp,16
    2cac:	0808                	addi	a0,sp,16
    2cae:	0808                	addi	a0,sp,16
    2cb0:	0808                	addi	a0,sp,16
    2cb2:	0808                	addi	a0,sp,16
    2cb4:	0808                	addi	a0,sp,16
    2cb6:	0808                	addi	a0,sp,16
    2cb8:	0808                	addi	a0,sp,16
    2cba:	0808                	addi	a0,sp,16
    2cbc:	0808                	addi	a0,sp,16
    2cbe:	0808                	addi	a0,sp,16
    2cc0:	0808                	addi	a0,sp,16
    2cc2:	0808                	addi	a0,sp,16
    2cc4:	0808                	addi	a0,sp,16
    2cc6:	0808                	addi	a0,sp,16
    2cc8:	0808                	addi	a0,sp,16
    2cca:	0808                	addi	a0,sp,16
    2ccc:	0808                	addi	a0,sp,16
    2cce:	0808                	addi	a0,sp,16
    2cd0:	0808                	addi	a0,sp,16
    2cd2:	0808                	addi	a0,sp,16
    2cd4:	0808                	addi	a0,sp,16
    2cd6:	0808                	addi	a0,sp,16
    2cd8:	0808                	addi	a0,sp,16
    2cda:	0808                	addi	a0,sp,16
    2cdc:	0808                	addi	a0,sp,16
    2cde:	0808                	addi	a0,sp,16
    2ce0:	0808                	addi	a0,sp,16
    2ce2:	0808                	addi	a0,sp,16
    2ce4:	0808                	addi	a0,sp,16
    2ce6:	0808                	addi	a0,sp,16
    2ce8:	0808                	addi	a0,sp,16
    2cea:	0808                	addi	a0,sp,16
    2cec:	0808                	addi	a0,sp,16
    2cee:	0808                	addi	a0,sp,16
    2cf0:	0808                	addi	a0,sp,16
    2cf2:	0808                	addi	a0,sp,16
    2cf4:	0808                	addi	a0,sp,16
    2cf6:	0808                	addi	a0,sp,16
    2cf8:	0808                	addi	a0,sp,16
    2cfa:	0808                	addi	a0,sp,16
    2cfc:	0808                	addi	a0,sp,16
    2cfe:	0808                	addi	a0,sp,16
    2d00:	0808                	addi	a0,sp,16
    2d02:	0808                	addi	a0,sp,16
    2d04:	0808                	addi	a0,sp,16
    2d06:	0808                	addi	a0,sp,16
    2d08:	0808                	addi	a0,sp,16
    2d0a:	0808                	addi	a0,sp,16
    2d0c:	0808                	addi	a0,sp,16
    2d0e:	0808                	addi	a0,sp,16
    2d10:	0808                	addi	a0,sp,16
    2d12:	0808                	addi	a0,sp,16
    2d14:	0808                	addi	a0,sp,16
    2d16:	0808                	addi	a0,sp,16
    2d18:	0808                	addi	a0,sp,16
    2d1a:	0808                	addi	a0,sp,16

Disassembly of section .data:

00002d1c <xFreeBytesRemaining-0x4>:
    2d1c:	0000                	unimp
	...

00002d20 <xFreeBytesRemaining>:
    2d20:	fff0                	fsw	fa2,124(a5)
	...

00002d24 <pullNextTime>:
    2d24:	2d58                	fld	fa4,152(a0)
	...

00002d28 <uxTopUsedPriority>:
    2d28:	0006                	c.slli	zero,0x1
	...

00002d2c <PWM_PORT>:
    2d2c:	2004                	fld	fs1,0(s0)
    2d2e:	4000                	lw	s0,0(s0)

00002d30 <SEG_PORT>:
    2d30:	2008                	fld	fa0,0(s0)
    2d32:	4000                	lw	s0,0(s0)

00002d34 <TOHOST_PORT>:
    2d34:	8000                	0x8000
    2d36:	4000                	lw	s0,0(s0)

00002d38 <uxTimerIncrementsForOneTick>:
    2d38:	86a0                	0x86a0
    2d3a:	0001                	nop

00002d3c <xISRStackTop>:
    2d3c:	4dc0                	lw	s0,28(a1)
    2d3e:	0001                	nop

Disassembly of section .bss:

00002d40 <xEnd>:
	...

00002d48 <xHeapHasBeenInitialised.0>:
    2d48:	0000                	unimp
	...

00002d4c <xStart>:
	...

00002d54 <pullMachineTimerCompareRegister>:
    2d54:	0000                	unimp
	...

00002d58 <ullNextTime>:
	...

00002d60 <pxCurrentTCB>:
    2d60:	0000                	unimp
	...

00002d64 <pxDelayedTaskList>:
    2d64:	0000                	unimp
	...

00002d68 <pxOverflowDelayedTaskList>:
    2d68:	0000                	unimp
	...

00002d6c <uxCurrentNumberOfTasks>:
    2d6c:	0000                	unimp
	...

00002d70 <uxDeletedTasksWaitingCleanUp>:
    2d70:	0000                	unimp
	...

00002d74 <uxSchedulerSuspended>:
    2d74:	0000                	unimp
	...

00002d78 <uxTaskNumber>:
    2d78:	0000                	unimp
	...

00002d7c <uxTopReadyPriority>:
    2d7c:	0000                	unimp
	...

00002d80 <xIdleTaskHandle>:
    2d80:	0000                	unimp
	...

00002d84 <xNextTaskUnblockTime>:
    2d84:	0000                	unimp
	...

00002d88 <xNumOfOverflows>:
    2d88:	0000                	unimp
	...

00002d8c <xPendedTicks>:
    2d8c:	0000                	unimp
	...

00002d90 <xSchedulerRunning>:
    2d90:	0000                	unimp
	...

00002d94 <xTickCount>:
    2d94:	0000                	unimp
	...

00002d98 <xYieldPending>:
    2d98:	0000                	unimp
	...

00002d9c <pxCurrentTimerList>:
    2d9c:	0000                	unimp
	...

00002da0 <pxOverflowTimerList>:
    2da0:	0000                	unimp
	...

00002da4 <xLastTime.0>:
    2da4:	0000                	unimp
	...

00002da8 <xTimerQueue>:
    2da8:	0000                	unimp
	...

00002dac <xTimerTaskHandle>:
    2dac:	0000                	unimp
	...

00002db0 <cnt.0>:
    2db0:	0000                	unimp
	...

00002db4 <ucHeap>:
	...

00012dc0 <xISRStack>:
	...

00014dc0 <xQueueRegistry>:
	...

00014e00 <pxReadyTasksLists>:
	...

00014e8c <xDelayedTaskList1>:
	...

00014ea0 <xDelayedTaskList2>:
	...

00014eb4 <xPendingReadyList>:
	...

00014ec8 <xSuspendedTaskList>:
	...

00014edc <xTasksWaitingTermination>:
	...

00014ef0 <xActiveTimerList1>:
	...

00014f04 <xActiveTimerList2>:
	...

00014f18 <exints>:
	...

Disassembly of section .stack:

00014f98 <_stack_top-0x408>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e31                	jal	328 <vPortSetupTimerInterrupt>
   e:	2e31                	jal	32a <vPortSetupTimerInterrupt+0x2>
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
  1a:	2884                	fld	fs1,16(s1)
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
  ea:	ae01                	j	3fa <prvCopyDataToQueue+0x22>
  ec:	0102                	c.slli64	sp
  ee:	0026                	c.slli	zero,0x9
  f0:	0000                	unimp
  f2:	2884                	fld	fs1,16(s1)
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
 110:	b001                	j	fffff910 <_stack_top+0xfffea570>
 112:	0902                	c.slli64	s2
 114:	008a                	slli	ra,ra,0x2
 116:	0000                	unimp
 118:	0c0c                	addi	a1,sp,528
 11a:	0000                	unimp
 11c:	0d00                	addi	s0,sp,656
 11e:	0026                	c.slli	zero,0x9
 120:	0000                	unimp
 122:	b201                	j	fffffa22 <_stack_top+0xfffea682>
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
 154:	0028                	addi	a0,sp,8
 156:	2400                	fld	fs0,8(s0)
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
 22e:	bb09                	j	ffffff40 <_stack_top+0xfffeaba0>
 230:	0000                	unimp
 232:	0200                	addi	s0,sp,256
 234:	029e                	slli	t0,t0,0x7
 236:	1c03050f          	0x1c03050f
 23a:	002c                	addi	a1,sp,8
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	2401                	jal	200 <pvPortMalloc+0x9c>
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
  24:	2501                	jal	624 <xQueueGenericCreate+0x20>
  26:	130e                	slli	t1,t1,0x23
  28:	1b1f030b          	0x1b1f030b
  2c:	111f 1201 1006      	0x10061201111f
  32:	05000017          	auipc	zero,0x5000
  36:	0024                	addi	s1,sp,8
  38:	0b3e0b0b          	0xb3e0b0b
  3c:	00000803          	lb	a6,0(zero) # 0 <_start>
  40:	0106                	slli	sp,sp,0x1
  42:	4901                	li	s2,0
  44:	00130113          	addi	sp,t1,1 # ffffa001 <_stack_top+0xfffe4c61>
  48:	0700                	addi	s0,sp,896
  4a:	0021                	c.nop	8
  4c:	1349                	addi	t1,t1,-14
  4e:	00000b2f          	0xb2f
  52:	3408                	fld	fa0,40(s0)
  54:	0300                	addi	s0,sp,384
  56:	3a0e                	fld	fs4,224(sp)
  58:	39053b0b          	0x39053b0b
  5c:	3f13490b          	0x3f13490b
  60:	3c19                	jal	fffffa76 <_stack_top+0xfffea6d6>
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
  de:	2401                	jal	2de <vPortFree+0x1e>
  e0:	0b00                	addi	s0,sp,400
  e2:	030b3e0b          	0x30b3e0b
  e6:	000e                	c.slli	zero,0x3
  e8:	0200                	addi	s0,sp,256
  ea:	0026                	c.slli	zero,0x9
  ec:	1349                	addi	t1,t1,-14
  ee:	0000                	unimp
  f0:	25011103          	lh	sp,592(sp) # 1201131e <_stack_top+0x11ffbf7e>
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
 146:	3905                	jal	fffffd76 <_stack_top+0xfffea9d6>
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
   c:	00288407          	0x288407
  10:	a800                	fsd	fs0,16(s0)
  12:	0028                	addi	a0,sp,8
  14:	0100                	addi	s0,sp,128
  16:	075a                	slli	a4,a4,0x16
  18:	28a8                	fld	fa0,80(s1)
  1a:	0000                	unimp
  1c:	28bc                	fld	fa5,80(s1)
  1e:	0000                	unimp
  20:	a304                	fsd	fs1,0(a4)
  22:	5a01                	li	s4,-32
  24:	079f 28bc 0000      	0x28bc079f
  2a:	28d0                	fld	fa2,144(s1)
  2c:	0000                	unimp
  2e:	5a01                	li	s4,-32
  30:	0700                	addi	s0,sp,896
  32:	2884                	fld	fs1,16(s1)
  34:	0000                	unimp
  36:	28a8                	fld	fa0,80(s1)
  38:	0000                	unimp
  3a:	5a01                	li	s4,-32
  3c:	0028a807          	flw	fa6,2(a7)
  40:	bc00                	fsd	fs0,56(s0)
  42:	0028                	addi	a0,sp,8
  44:	0400                	addi	s0,sp,512
  46:	9f5a01a3          	sb	s5,-1565(s4)
  4a:	0028bc07          	fld	fs8,2(a7)
  4e:	d000                	sw	s0,32(s0)
  50:	0028                	addi	a0,sp,8
  52:	0100                	addi	s0,sp,128
  54:	005a                	c.slli	zero,0x16
  56:	00289807          	0x289807
  5a:	ac00                	fsd	fs0,24(s0)
  5c:	0028                	addi	a0,sp,8
  5e:	0100                	addi	s0,sp,128
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
  10:	2884                	fld	fs1,16(s1)
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
  30:	28d0                	fld	fa2,144(s1)
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
   e:	0028                	addi	a0,sp,8
  10:	9800                	0x9800
  12:	0028                	addi	a0,sp,8
  14:	0600                	addi	s0,sp,768
  16:	2898                	fld	fa4,16(s1)
  18:	0000                	unimp
  1a:	28b4                	fld	fa3,80(s1)
  1c:	0000                	unimp
  1e:	bc06                	fsd	ft1,56(sp)
  20:	0028                	addi	a0,sp,8
  22:	d000                	sw	s0,32(s0)
  24:	0028                	addi	a0,sp,8
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000c7          	fmsub.s	ft1,ft0,ft0,ft0,rne
   4:	0005                	c.nop	1
   6:	0004                	0x4
   8:	00000033          	add	zero,zero,zero
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffff1e <_stack_top+0xfffeab7e>
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
  44:	2884                	fld	fs1,16(s1)
  46:	0000                	unimp
  48:	0105ae03          	lw	t3,16(a1)
  4c:	0305                	addi	t1,t1,1
  4e:	00090103          	lb	sp,0(s2) # 1000 <xTaskIncrementTick+0x114>
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
  b4:	04020003          	lb	zero,64(tp) # fffe1040 <_stack_top+0xfffcbca0>
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
 108:	28d0                	fld	fa2,144(s1)
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
 144:	3b01                	jal	fffffe54 <_stack_top+0xfffeaab4>
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
   6:	20676e6f          	jal	t3,7620c <_stack_top+0x60e6c>
   a:	6e69                	lui	t3,0x1a
   c:	0074                	addi	a3,sp,12
   e:	5f5f 6c63 737a      	0x737a6c635f5f
  14:	3269                	jal	fffff99e <_stack_top+0xfffea5fe>
  16:	6300                	flw	fs0,0(a4)
  18:	6c706d6f          	jal	s10,6ede <__global_pointer$+0x39be>
  1c:	7865                	lui	a6,0xffff9
  1e:	6420                	flw	fs0,72(s0)
  20:	6c62756f          	jal	a0,276e6 <_stack_top+0x12346>
  24:	0065                	c.nop	25
  26:	5f5f 7278 6c00      	0x6c0072785f5f
  2c:	20676e6f          	jal	t3,76232 <_stack_top+0x60e92>
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
  5a:	706d6f63          	bltu	s10,t1,778 <xQueueGenericSend+0xb8>
  5e:	656c                	flw	fa1,76(a0)
  60:	2078                	fld	fa4,192(s0)
  62:	6f6c                	flw	fa1,92(a4)
  64:	676e                	flw	fa4,216(sp)
  66:	6420                	flw	fs0,72(s0)
  68:	6c62756f          	jal	a0,2772e <_stack_top+0x1238e>
  6c:	0065                	c.nop	25
  6e:	726f6873          	csrrsi	a6,0x726,30
  72:	2074                	fld	fa3,192(s0)
  74:	6e75                	lui	t3,0x1d
  76:	6e676973          	csrrsi	s2,0x6e6,14
  7a:	6465                	lui	s0,0x19
  7c:	6920                	flw	fs0,80(a0)
  7e:	746e                	flw	fs0,248(sp)
  80:	6300                	flw	fs0,0(a4)
  82:	6c706d6f          	jal	s10,6f48 <__global_pointer$+0x3a28>
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
  ae:	3731                	jal	ffffffba <_stack_top+0xfffeac1a>
  b0:	3120                	fld	fs0,96(a0)
  b2:	2e31                	jal	3ce <xPortStartScheduler+0x22>
  b4:	2e31                	jal	3d0 <xPortStartScheduler+0x24>
  b6:	2030                	fld	fa2,64(s0)
  b8:	6d2d                	lui	s10,0xb
  ba:	646f6d63          	bltu	t5,t1,714 <xQueueGenericSend+0x54>
  be:	6c65                	lui	s8,0x19
  c0:	6d3d                	lui	s10,0xf
  c2:	6465                	lui	s0,0x19
  c4:	6f6c                	flw	fa1,92(a4)
  c6:	6d2d2077          	0x6d2d2077
  ca:	646f6d63          	bltu	t5,t1,724 <xQueueGenericSend+0x64>
  ce:	6c65                	lui	s8,0x19
  d0:	6d3d                	lui	s10,0xf
  d2:	6465                	lui	s0,0x19
  d4:	6f6c                	flw	fa1,92(a4)
  d6:	6d2d2077          	0x6d2d2077
  da:	7574                	flw	fa3,108(a0)
  dc:	656e                	flw	fa0,216(sp)
  de:	723d                	lui	tp,0xfffef
  e0:	656b636f          	jal	t1,b6736 <_stack_top+0xa1396>
  e4:	2074                	fld	fa3,192(s0)
  e6:	6d2d                	lui	s10,0xb
  e8:	7261                	lui	tp,0xffff8
  ea:	723d6863          	bltu	s10,gp,81a <xQueueGenericSend+0x15a>
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
 12a:	2d206363          	bltu	zero,s2,3f0 <prvCopyDataToQueue+0x18>
 12e:	6e66                	flw	ft8,88(sp)
 130:	74732d6f          	jal	s10,33076 <_stack_top+0x1dcd6>
 134:	6361                	lui	t1,0x18
 136:	72702d6b          	0x72702d6b
 13a:	6365746f          	jal	s0,57770 <_stack_top+0x423d0>
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
 15a:	3369                	jal	fffffee4 <_stack_top+0xfffeab44>
 15c:	532e                	lw	t1,232(sp)
 15e:	2f00                	fld	fs0,24(a4)
 160:	6f68                	flw	fa0,92(a4)
 162:	656d                	lui	a0,0x1b
 164:	6e616b2f          	0x6e616b2f
 168:	6d61                	lui	s10,0x18
 16a:	2f69726f          	jal	tp,97460 <_stack_top+0x820c0>
 16e:	6972                	flw	fs2,28(sp)
 170:	2d766373          	csrrsi	t1,0x2d7,12
 174:	2d756e67          	0x2d756e67
 178:	6f74                	flw	fa3,92(a4)
 17a:	68636c6f          	jal	s8,36800 <_stack_top+0x21460>
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
 1b2:	47006363          	bltu	zero,a6,618 <xQueueGenericCreate+0x14>
 1b6:	554e                	lw	a0,240(sp)
 1b8:	4120                	lw	s0,64(a0)
 1ba:	2e322053          	0x2e322053
 1be:	312e3633          	0x312e3633
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6d6f682f          	0x6d6f682f
   4:	2f65                	jal	7bc <xQueueGenericSend+0xfc>
   6:	616e616b          	0x616e616b
   a:	6f6d                	lui	t5,0x1b
   c:	6972                	flw	fs2,28(sp)
   e:	7369722f          	0x7369722f
  12:	672d7663          	bgeu	s10,s2,67e <xQueueGenericCreate+0x7a>
  16:	756e                	flw	fa0,248(sp)
  18:	742d                	lui	s0,0xfffeb
  1a:	636c6f6f          	jal	t5,c6650 <_stack_top+0xb12b0>
  1e:	6168                	flw	fa0,68(a0)
  20:	6e69                	lui	t3,0x1a
  22:	6975622f          	0x6975622f
  26:	646c                	flw	fa1,76(s0)
  28:	672d                	lui	a4,0xb
  2a:	6e2d6363          	bltu	s10,sp,710 <xQueueGenericSend+0x50>
  2e:	7765                	lui	a4,0xffff9
  30:	696c                	flw	fa1,84(a0)
  32:	2d62                	fld	fs10,24(sp)
  34:	67617473          	csrrci	s0,0x676,2
  38:	3265                	jal	fffff9e0 <_stack_top+0xfffea640>
  3a:	7369722f          	0x7369722f
  3e:	32337663          	bgeu	t1,gp,36a <vPortSetupTimerInterrupt+0x42>
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
  64:	672d7663          	bgeu	s10,s2,6d0 <xQueueGenericSend+0x10>
  68:	6c2f6363          	bltu	t5,sp,72e <xQueueGenericSend+0x6e>
  6c:	6269                	lui	tp,0x1a
  6e:	2f636367          	0x2f636367
  72:	696c                	flw	fa1,84(a0)
  74:	6762                	flw	fa4,24(sp)
  76:	2e326363          	bltu	tp,gp,35c <vPortSetupTimerInterrupt+0x34>
  7a:	2e2e0063          	beq	t3,sp,35a <vPortSetupTimerInterrupt+0x32>
  7e:	2f2e2e2f          	0x2f2e2e2f
  82:	2e2e                	fld	ft8,200(sp)
  84:	722f2e2f          	0x722f2e2f
  88:	7369                	lui	t1,0xffffa
  8a:	672d7663          	bgeu	s10,s2,6f6 <xQueueGenericSend+0x36>
  8e:	6c2f6363          	bltu	t5,sp,754 <xQueueGenericSend+0x94>
  92:	6269                	lui	tp,0x1a
  94:	00636367          	0x636367
  98:	696c                	flw	fa1,84(a0)
  9a:	6762                	flw	fa4,24(sp)
  9c:	2e326363          	bltu	tp,gp,382 <vPortSetupTimerInterrupt+0x5a>
  a0:	0068                	addi	a0,sp,12
  a2:	2e2e                	fld	ft8,200(sp)
  a4:	2f2e2e2f          	0x2f2e2e2f
  a8:	2e2e                	fld	ft8,200(sp)
  aa:	722f2e2f          	0x722f2e2f
  ae:	7369                	lui	t1,0xffffa
  b0:	672d7663          	bgeu	s10,s2,71c <xQueueGenericSend+0x5c>
  b4:	6c2f6363          	bltu	t5,sp,77a <xQueueGenericSend+0xba>
  b8:	6269                	lui	tp,0x1a
  ba:	2f636367          	0x2f636367
  be:	666e6f63          	bltu	t3,t1,73c <xQueueGenericSend+0x7c>
  c2:	6769                	lui	a4,0x1a
  c4:	7369722f          	0x7369722f
  c8:	6d007663          	bgeu	zero,a6,794 <xQueueGenericSend+0xd4>
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
  18:	2884                	fld	fs1,16(s1)
  1a:	0000                	unimp
  1c:	004c                	addi	a1,sp,4
	...
