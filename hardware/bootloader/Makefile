
## for riscv bootloader
RISCV_PREFIX = $(RISCV)/riscv32-unknown-elf-
CC=$(RISCV_PREFIX)gcc
OBJDUMP=$(RISCV_PREFIX)objdump

CFLAGS=-I. -O2 -march=rv32i -mabi=ilp32 -Tmain.lds -nostartfiles -D_RVCORE_ 
TARGET = bootloader
DEPS = $(TARGET).h
OBJ = $(TARGET).o startup.o

.PHONY = mem clean all

all: test mem

mem: $(TARGET).hex $(TARGET).dump

clean: riscv-clean test-clean

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET).elf: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

$(TARGET).bin: $(TARGET).elf
	$(RISCV_PREFIX)objcopy -O binary $< $@
	cp $(TARGET).bin _$(TARGET).bin
	dd if=/dev/zero bs=8k count=1 >> _$(TARGET).bin
	dd if=_$(TARGET).bin bs=8k count=1 > $(TARGET).bin
	rm -f _$(TARGET).bin

$(TARGET).dump: $(TARGET).elf
	$(OBJDUMP) -D $< > $@
	cp $@ ../../hardware/design

$(TARGET).hex: $(TARGET).bin
	hexdump -v -e '1/4 "%08x" "\n"' $< > $@
	cp $@ ../../hardware/design


riscv-clean:
	rm -rf $(TARGET).bin *.o *.elf *.hex *.dump
###############################################################################
## for test env

GCC=gcc
GCCFLAGS=-I.
GCCDEPS = $(TARGET).h
GCCOBJ = $(TARGET).oo

test: $(TARGET) run

%.oo: %.c $(GCCDEPS)
	$(GCC) -c -o $@ $< $(GCCFLAGS)

$(TARGET): $(GCCOBJ)
	$(GCC) -o $@ $^ $(GCCFLAGS)

	
sd.iso:
	cp ../bin/boot.bin .
	dd if=/dev/zero of=sd.iso bs=128K count=4
	mkfs.vfat -v -F 32 sd.iso
	mkdir -p mnt
	sudo mount -o iocharset=utf8 -t vfat sd.iso mnt/
	sudo cp boot.bin mnt
	sudo mkdir mnt/test
	sudo touch mnt/test/test.txt
	sudo umount mnt
	rmdir mnt
	hexdump -v -e '1/4 "%08x" "\n"' $@ > $@.hex
	cp $@.hex ../../hardware/bin
	rm boot.bin
	
run: sd.iso
	./bootloader
	diff boot.bin boot2.bin

od:
	od -Ax -tx1z sd8gb.iso | less

test-clean:
	rm -rf $(TARGET) boot2.bin $(GCCOBJ) sd.iso