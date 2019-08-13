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
    - What are the UART pins on the PI 3 Model A+ ?
    - What's the UART's baud rate used on this demo (see uart.c) ?
    - Why printing to the UART1 gets printed to the terminal when running the Lab on QEMU ?

### Deliverables 
1. A screenshot of the output from running your solution to this lab (with the answers to the questions above)


### Resources on the WEB
- [64 bit Bare Metal Programming on RPI-3 Your first aarch64 bare metal program](https://www.youtube.com/watch?v=8-65xiGXMyA)
- [Fun and Easy UART - How the UART Serial Communication Protocol Works](https://youtu.be/ZzRXKDkMBhA)
- [Pin Numbering - Raspberry Pi Model A+](https://pi4j.com/1.1/pins/model-a-plus.html)

### Compiling this Lab on Windows
##### ( Docker Windows requires the FULL PATH of the HOST directory to bind mount)
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run `
       -v C:\...\1_Hello_World:/src `
       rromanotero/aarch64 `
       bash -c "cd src && make"
```   

### Compiling this Lab on Linux/Mac
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run \
       -v ./1_Hello_World:/src \
       rromanotero/aarch64 \
       bash -c "cd src && make"
```

### Running this Lab 
##### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\1_Hello_World\output\kernel8.img -serial null -serial stdio
What is white and can't climb a tree?
```
##### PI 3
You'll need a Raspberry PI 3 MOdel A+, a [USB to UART converter](https://www.adafruit.com/product/954), [https://www.putty.org/](PuTTY), and a means to power the PI.

1. Get an SDCard with [https://www.raspberrypi.org/downloads/raspbian/](Raspbian Buster Lite) installed on it (see [installation instructions](https://www.raspberrypi.org/documentation/installation/installing-images/README.md))
2. replace **kernel8.img in the boot partition of the SDCard** (you'll see it when reading the PI's SDCard from a laptop) with ./output/kernel8.img.
3. Insert back the SD Card onto the PI
4. Install the USB to UART converter drivers (if you're using the one from Adafruit, they also have a tutorial on how to install drivers)
5. Plug the PI's UART to yout laptop (via the converter), and access the PI from PuTTY:

  <img src="https://github.com/rromanotero/computer_architecture_labs/1_Hello_World/lab_setup_a.png" width="290"/>
  <img src="https://github.com/rromanotero/computer_architecture_labs/1_Hello_World/lab_setup_b.png" width="290"/>
  <img src="https://github.com/rromanotero/computer_architecture_labs/1_Hello_World/lab_running.png" width="290"/>




