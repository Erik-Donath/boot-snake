ASM = nasm
ASMFLAGS = -f bin
QEMU = qemu-system-i386

BOOTSECTOR = src/snake.asm
BINFILE = build/bin/snake.bin

.PHONY: all run-bin clean

all: $(BINFILE)

$(BINFILE): $(BOOTSECTOR)
	@mkdir -p $(dir $@)
	$(ASM) $(ASMFLAGS) -o $@ $<

run: $(BINFILE)
	$(QEMU) -drive format=raw,file=$(BINFILE)

clean:
	rm -f $(BINFILE)
