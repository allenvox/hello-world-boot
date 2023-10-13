echo [hdcreate] creating helloworld hd for qemu
dd if=/dev/zero of=build/fat.img bs=1k count=1440
echo [hdcreate] made empty disk build/fat.img
mformat -i build/fat.img -f 1440 ::
echo [hdcreate] formatted empty disk build/fat.img
mmd -i build/fat.img ::/EFI
echo [hdcreate] created /EFI folder on build/fat.img
mmd -i build/fat.img ::/EFI/BOOT
echo [hdcreate] created /EFI/BOOT folder on build/fat.img
mcopy -i build/fat.img src/helloworld.efi ::/EFI/BOOT
echo [hdcreate] copied helloworld.efi to /EFI/BOOT on build/fat.img
mkgpt -o build/hdimage.bin --image-size 4096 --part build/fat.img --type system
echo [hdcreate] made GPT filesystem in build/hdimage.bin size 4KB from build/fat.img
