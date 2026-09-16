#!/bin/sh

#apt remove ntp
#apt install --reinstall systemd-timesyncd
#dpkg-reconfigure tzdata
#timedatectl status

#timedatectl set-local-rtc 0 --adjust-system-clock  #for Win time

#systemctl status systemd-timesyncd

#timedatectl set-ntp on
#timedatectl set-ntp false
#timedatectl set-ntp true


systemctl unmask systemd-timesyncd.service
systemctl enable systemd-timesyncd.service
systemctl start systemd-timesyncd.service

sleep 10

systemctl stop systemd-timesyncd.service
systemctl disable systemd-timesyncd.service
#systemctl mask systemd-timesyncd.service

#systemctl status chronyd.service
#systemctl status ntp.service
