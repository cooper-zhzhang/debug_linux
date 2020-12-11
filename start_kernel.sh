#/usr/bin/bash
qemu-system-x86_64 -kernel linux-5.9.9/arch/x86_64/boot/bzImage \
	-drive file=xenial-debootstrap.ext4.qcow2 \
	-net nic -net user,hostfwd=tcp::2222-:22,hostfwd=tcp::9999-:9999,hostfwd=tcp::8000-:8000 \
	-nographic -append "root=/dev/sda console=ttyS0" -s -S 
