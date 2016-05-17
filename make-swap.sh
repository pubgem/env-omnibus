#!/bin/bash

dd if=/dev/zero of=/swapfile bs=1024k count=2048
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile
swapon /swapfile
echo "/swapfile       none    swap    sw      0       0" >> /etc/fstab
echo "10" >> /proc/sys/vm/swappiness
echo "vm.swappiness = 10" >> /etc/sysctl.conf
