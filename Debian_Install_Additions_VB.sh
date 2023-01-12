#!/bin/bash
clear
echo ""
echo "------------------------------------------"
echo "         creée par:  Kuroakashiro"
echo "------------------------------------------"
echo ""
echo "Ajouter le CD des Addition Invité depui 'Péripheriques'"
echo "[ OK ] Pour continuer !"
echo ""
read -p ": " OK
if [ $OK = "OK" ];
then
    echo -e "\033[32m [ OK ]\033[00m Starting !"
    
    sleep 5

    apt update -y && apt upgrade -y

    apt install make gcc dkms linux-source linux-headers-$(uname -r)

    cd /media/cdrom0

    sh VBoxLinuxAdditions.run

    reboot

if [ $OK = "ok" ];
then
    echo -e "\033[32m [ OK ]\033[00m Starting !"
    
    sleep 5

    apt update -y && apt upgrade -y

    apt install make gcc dkms linux-source linux-headers-$(uname -r)

    cd /media/cdrom0

    sh VBoxLinuxAdditions.run

    reboot


else
    clear
    echo ""
    echo -e "\033[31m Annulée !\033[00m"
fi
