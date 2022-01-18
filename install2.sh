#!bin/sh
wget https://download.mikrotik.com/routeros/7.1.1/chr-7.1.1.img.zip -O chr.img.zip && \
gunzip -c chr.img.zip > chr.img && \
echo u > /proc/sysrq-trigger && \
dd if=chr.img bs=1024 of=/dev/vda && \
reboot
