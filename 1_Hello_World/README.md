# 1. Hello World

### Compile Windows
### (must provide full path of Host directory)
```bash
git clone https://github.com/rromanotero/computer_architecture_labs.git
cd computer_architecture_labs
docker run `
       -v C:\...\1_Hello_World:/src `    <<<--- Docker Windows requires the FULL PATH of the host directory
       rromanotero/aarch64 `
       bash -c "cd src && make"
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

### Run
```bash
qemu-system-aarch64 -M raspi3 -kernel .\1_Hello_World\output\kernel8.img -serial null -serial stdio
What is white and can't climb a tree?
```
