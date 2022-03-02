MEM_SIZE        = 128k
STACK_SIZE      = 1024

PROG  = $(notdir $(patsubst %/,%,$(dir $(abspath $(firstword $(MAKEFILE_LIST))))))

CROSS   = $(RISCV)/riscv32-unknown-elf-
CC      = $(CROSS)gcc
OBJCOPY = $(CROSS)objcopy
ARCH    = $(CROSS)ar
OBJDUMP = $(CROSS)objdump
STRIP   = $(CROSS)strip

BUILD_DIR       = build
PROJ_SOURCE_DIR = $(dir $(abspath $(firstword $(MAKEFILE_LIST))))
RTOS_SOURCE_DIR = $(abspath ../FreeRTOS)
RVCORE_SOUECE_DIR = $(abspath ../FreeRTOS/portable/RVCore)

CPPFLAGS = \
	-D__riscv_float_abi_soft \
	-DportasmHANDLE_INTERRUPT=handle_trap \
	-I . \
	-I $(RTOS_SOURCE_DIR)/include \
	-I $(RTOS_SOURCE_DIR)/portable/GCC/RISC-V \
	-I $(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions \
	-I $(RVCORE_SOUECE_DIR)/include

CFLAGS  = -march=rv32i -mabi=ilp32 -mcmodel=medany \
	-Wall \
	-fmessage-length=0 \
	-ffunction-sections \
	-fdata-sections \
	-fno-builtin-printf

ASFLAGS = -march=rv32i -mabi=ilp32 -mcmodel=medany

LDFLAGS = -nostartfiles -T$(RVCORE_SOUECE_DIR)/memlayout.ld -static\
	-Xlinker --defsym=__stack_size=$(STACK_SIZE) \
	-Xlinker --gc-sections -DMEM_SIZE=$(MEM_SIZE)

ifeq ($(DEBUG), 1)
    CFLAGS += -Og -ggdb3
else
    CFLAGS += -O2
endif

SRCS = $(RTOS_SOURCE_DIR)/portable/MemMang/heap_2.c \
	   $(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/port.c \
	   $(wildcard $(RTOS_SOURCE_DIR)/*.c) \
	   $(wildcard $(RVCORE_SOUECE_DIR)/*.c) \
	   $(wildcard $(PROJ_SOURCE_DIR)/*.c)

ASMS = $(RVCORE_SOUECE_DIR)/start.S \
	$(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/portASM.S

OBJS = $(SRCS:%.c=$(BUILD_DIR)/%.o) $(ASMS:%.S=$(BUILD_DIR)/%.o)
DEPS = $(SRCS:%.c=$(BUILD_DIR)/%.d) $(ASMS:%.S=$(BUILD_DIR)/%.d)

.PHONY = copy clean

all: copy

$(BUILD_DIR)/%.o: %.c Makefile
	@mkdir -p $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -MMD -MP -c $< -o $@

$(BUILD_DIR)/%.o: %.S Makefile
	@mkdir -p $(@D)
	$(CC) $(CPPFLAGS) $(ASFLAGS) -MMD -MP -c $< -o $@

$(BUILD_DIR)/$(PROG).axf: $(OBJS) $(RVCORE_SOUECE_DIR)/memlayout.ld Makefile
	$(CC) $(LDFLAGS) $(OBJS) -o $@

$(BUILD_DIR)/$(PROG).asm: $(BUILD_DIR)/$(PROG).axf
	$(OBJDUMP) -S -xD $(BUILD_DIR)/$(PROG).axf > $(BUILD_DIR)/$(PROG).asm

$(BUILD_DIR)/$(PROG).bin: $(BUILD_DIR)/$(PROG).asm
	$(OBJCOPY) -O binary $(BUILD_DIR)/$(PROG).axf $(BUILD_DIR)/$(PROG)_raw.bin
	cp $(BUILD_DIR)/$(PROG)_raw.bin $(BUILD_DIR)/$(PROG).bin.tmp
	dd if=/dev/zero bs=$(MEM_SIZE) count=1 >> $(BUILD_DIR)/$(PROG).bin.tmp
	dd if=$(BUILD_DIR)/$(PROG).bin.tmp bs=$(MEM_SIZE) count=1 > $(BUILD_DIR)/$(PROG).bin

$(BUILD_DIR)/$(PROG).mem: $(BUILD_DIR)/$(PROG).bin
	hexdump -v -e '1/4 "%08x" "\n"' $(BUILD_DIR)/$(PROG).bin > $(BUILD_DIR)/$(PROG).mem

copy: $(BUILD_DIR)/$(PROG).bin $(BUILD_DIR)/$(PROG).mem $(BUILD_DIR)/$(PROG).asm
	cp $(BUILD_DIR)/$(PROG).bin ../../hardware/bin/boot.bin
	cp $(BUILD_DIR)/$(PROG).mem ../../hardware/bin/boot.hex
	cp $(BUILD_DIR)/$(PROG).asm ../../hardware/bin/boot.asm

clean:
	rm -rf $(BUILD_DIR)

-include $(DEPS)
