#!/usr/bin/bash
virt-make-fs --format qcow2 --size +1G --type ext4 debootstrap xenial-debootstrap.ext4.qcow2

