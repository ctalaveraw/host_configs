#!bin/bash

echo -e "ONLY RUN THIS SCRIPT ONCE \n"

echo "Configuring pacman"
sudo sed -i '/Color/s/^#//' /etc/pacman.conf
sudo sed -i '/Color/a ILoveCandy' /etc/pacman.conf

echo "Adding x86_64 repository"
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

echo "Ugrading system"
sudo pacman --noconfirm -Syyu
pacman -Sl | grep -i lib32