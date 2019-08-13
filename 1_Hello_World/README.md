# Lab 1 - Hello World

### Objectives
1. To get familiar with compiling bare-metal executables for the PI 3
2. To get familiar with running bare-metal executables on QEMU and the PI 3
3. To get a high-level idea of what a UART is.

### Tasks
1. Edit the source code and add a response to the question printed over UART1:
2. Print an answer to the following questions over UART1 (in your own words):  
    - What a UART is used for 
    - How many does the PI 3 ?
    - What's the baud rate used on this demo (see uart.c) ?
    - Why printing to the UART1 gets printed to the terminal when running the Lab on QEMU.

### Compiling on Windows
##### ( Docker Windows requires the FULL PATH of the HOST directory to bind mount)
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run `
       -v C:\...\1_Hello_World:/src `
       rromanotero/aarch64 `
       bash -c "cd src && make"
```   

### Compiling on Linux/Mac
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run \
       -v ./1_Hello_World:/src \
       rromanotero/aarch64 \
       bash -c "cd src && make"
```

### Running it
##### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\1_Hello_World\output\kernel8.img -serial null -serial stdio
What is white and can't climb a tree?
```
##### PI 3
For testing with the PI3 replace **kernel8.img in the boot partition** (you'll see it when reading the PI's SDCard from a laptop) with ./output/kernel8.img.

### Resourcs on the WEB
- [Fun and Easy UART - How the UART Serial Communication Protocol Works](https://youtu.be/ZzRXKDkMBhA)
- [Fun and Easy UART - How the UART Serial Communication Protocol Works](https://youtu.be/ZzRXKDkMBhA)
