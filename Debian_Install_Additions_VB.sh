#!/bin/bash
echo
echo ------------------------------------------
echo          creée par:  Kuroakashiro
echo ------------------------------------------
echo
sleep 5

apt update -y && apt upgrade -y

apt install make gcc dkms linux-source linux-headers-$(uname -r)

cd /media/cdrom0

sh VBoxLinuxAdditions.run

reboot