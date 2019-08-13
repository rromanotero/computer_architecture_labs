# Lab 1 - Hello World

## Support

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


## Objectives

1. To get familiar with compiling bare-metal executables for the PI 3
2. To get familiar with running bare-metal executables on QEMU and the PI 3

## Tasks

1. Edit the source code and add a response to the question "What is white and can't climb a tree?"
