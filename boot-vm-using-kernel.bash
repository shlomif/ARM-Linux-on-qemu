#! /bin/bash
#
# boot-vm-using-kernel.bash

# Based on https://translatedcode.wordpress.com/2016/11/03/installing-debian-on-qemus-32-bit-arm-virt-board/

qemu-system-arm -M virt -m 1024 \
  -kernel vmlinuz-3.16.0-6-armmp-lpae \
  -initrd initrd.img-3.16.0-6-armmp-lpae \
  -append 'root=/dev/vda2' \
  -drive if=none,file=hda.qcow2,format=qcow2,id=hd \
  -device virtio-blk-device,drive=hd \
  -netdev user,id=mynet \
  -device virtio-net-device,netdev=mynet \
  -nographic
