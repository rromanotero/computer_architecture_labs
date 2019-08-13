# 1. Hello World

### Compile Windows
#### ( Docker Windows requires the FULL PATH of the HOST directory to bind mount)
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run `
       -v C:\...\1_Hello_World:/src `
       rromanotero/aarch64 `
       bash -c "cd src && make"
```
Output:
```bash
aarch64-elf-ld -nostdlib -nostartfiles src/boot.o src/uart.o src/main.o -T linker.ld -o output/kernel8.elf
aarch64-elf-objcopy -O binary output/kernel8.elf output/kernel8.img
aarch64-elf-objdump -D output/kernel8.elf > output/kernel8.lss
aarch64-elf-objdump -s output/kernel8.elf > output/kernel8.dump       
```       
### Compile Linux/Mac
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run \
       -v ./1_Hello_World:/src \
       rromanotero/aarch64 \
       bash -c "cd src && make"
```
Output:
```bash
aarch64-elf-ld -nostdlib -nostartfiles src/boot.o src/uart.o src/main.o -T linker.ld -o output/kernel8.elf
aarch64-elf-objcopy -O binary output/kernel8.elf output/kernel8.img
aarch64-elf-objdump -D output/kernel8.elf > output/kernel8.lss
aarch64-elf-objdump -s output/kernel8.elf > output/kernel8.dump
```

### Run
#### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\1_Hello_World\output\kernel8.img -serial null -serial stdio
```
Output:
```bash
What is white and can't climb a tree?
```

#### PI 3
For testing with the PI3 replace **kernel8.img in the boot partition** (you'll see it when reading the PI's SDCard from a laptop) with ./output/kernel8.img.
