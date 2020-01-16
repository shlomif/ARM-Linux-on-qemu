#! /bin/bash
#
# run-installer.bash
#
# Based on https://translatedcode.wordpress.com/2016/11/03/installing-debian-on-qemus-32-bit-arm-virt-board/ .

set -e -x

qemu-system-arm -M virt -m 1024 \
  -kernel installer-vmlinuz \
  -initrd installer-initrd.gz \
  -drive if=none,file=hda.qcow2,format=qcow2,id=hd \
  -device virtio-blk-device,drive=hd \
  -netdev user,id=mynet \
  -device virtio-net-device,netdev=mynet \
  -nographic -no-reboot
