#!/bin/bash
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
    sleep 5

    apt update -y && apt upgrade -y

    apt install make gcc dkms linux-source linux-headers-$(uname -r)

    cd /media/cdrom0

    sh VBoxLinuxAdditions.run

    reboot

else
    clear
    echo ""
    echo "Annulée !"
fi