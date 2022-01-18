#!bin/sh
wget https://download.mikrotik.com/routeros/6.48.1/chr-6.48.1.img.zip -O chr.img.zip && \
gunzip -c chr.img.zip > chr.img && \
echo u > /proc/sysrq-trigger && \
dd if=chr.img bs=1024 of=/dev/vda && \
reboot
