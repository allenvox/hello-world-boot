# Hello World bootloader for Qemu with OVMF / POSIX UEFI
### Dependencies
1. mtools
2. mkgpt
3. qemu
### Use
Make bash scripts executable: `chmod +x build.sh hdcreate.sh`<br>
Build UEFI Hello World program: `./build.sh`<br>
Create bootable hd for qemu: `./hdcreate.sh`<br>
Run example: `qemu-system-x86_64 -L ./ -pflash ovmf/OVMF.fd -hda build/hdimage.bin -net none -nographic`<br>
