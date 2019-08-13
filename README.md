# Computer Architecture Labs for Raspberry PI 3

## Getting the aarch64-elf bare-metal GNU Toolchain

I've created an image with the aarch64-toolchain. All labs use it. To get it:

```bash
docker pull rromanotero/aarch64
```
## Running Labs

All labs have been tested with [QEMU](https://www.qemu.org/download/) (qemu-system-aarch64) and a Raspberry PI 3 Model A+. The boot files are the ones from the [Raspbian Buster Lite image](https://www.raspberrypi.org/downloads/raspbian/).

**Labs and Instructions appear on every Lab folder** .

## Bare-metal Raspberry PI 3 Resources ( We'll be building on these )
- [Application note. Bare-metal Boot Code for ARMv8-A Processors](http://infocenter.arm.com/help/topic/com.arm.doc.dai0527a/DAI0527A_baremetal_boot_code_for_ARMv8_A_processors.pdf)
- [MiniOS](https://github.com/rromanotero/minios)
- [Sergey Matyukevich's Raspberry PI OS](https://github.com/s-matyukevich/raspberry-pi-os/)
- [Leon de Boer's Bare Metal Examples](https://github.com/LdB-ECM/Raspberry-Pi/)
- [Zoltan Baldaszti's PI3's Tutorial](https://github.com/bztsrc/raspi3-tutorial)
- [PeterLemon's Bare Metal Assembly  for PI 3](https://github.com/PeterLemon/RaspberryPi)
- [Maciej Muszkowski's No OS Bootstrap](https://github.com/mmuszkow/NoOsBootstrap/)
