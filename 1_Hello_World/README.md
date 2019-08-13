# Lab 1 - Hello World

### Objectives
1. To get familiar with compiling bare-metal executables for the PI 3
2. To get familiar with running bare-metal executables on QEMU and the PI 3
3. To get a high-level idea of what a UART is.


### Tasks
1. Edit the source code and add a response to the question printed over UART1. 
2. Print to UART1 an answer to the following questions (in your own words): 
    - What does "bare-metal program" mean?
    - What is the GNU toolchain?
    - What is a Makefile and how do you run it?
    - What is the use of a UART peripheral? 
    - How many UARTs does the PI 3 have?
    - What's the UART's baud rate used on this demo (see uart.c) ?
    - Why printing to the UART1 gets printed to the terminal when running the Lab on QEMU ?

### Deliverables 
1. A screenshot of the output from running your solution to this lab (with the answers to the questions above)


### Resources on the WEB
- [64 bit Bare Metal Programming on RPI-3 Your first aarch64 bare metal program](https://www.youtube.com/watch?v=8-65xiGXMyA)
- [Fun and Easy UART - How the UART Serial Communication Protocol Works](https://youtu.be/ZzRXKDkMBhA)


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


