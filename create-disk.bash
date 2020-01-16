#! /bin/bash
#
# create-disk.bash
#
# Taken from https://translatedcode.wordpress.com/2016/11/03/installing-debian-on-qemus-32-bit-arm-virt-board/ .

set -e -x

qemu-img create -f qcow2 hda.qcow2 5G
