# boot-snake
This is a minimalistic Snake game written in x86 Assembly, designed to run directly from the Boot Sector (512 bytes). The game demonstrates how to program at a low level, interacting directly with hardware without any operating system. It's a fun and educational project for anyone interested in bootloaders, retro programming, or assembly language.

# Build & Run

## Requirements
- **NASM**: The Netwide Assembler for assembling the code.
- **QEMU**: An emulator for testing the bootable game.

## Building with Make
Run `make` or `make all` to build `build/bin/snake.bin`.

## Building without Make

### Linux and macOS
```sh
nasm -f bin src/snake.asm -o build/bin/snake.bin
```

### Windows
Who needs Windows?

## Running with Make
Run the binary directly in QEMU:

```sh
make run-bin
```

Or run QEMU directly:

```sh
qemu-system-i386 -drive format=raw,file=build/bin/snake.bin
```

---

# License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
