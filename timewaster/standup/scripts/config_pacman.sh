#!bin/bash

echo -e "\n ONLY RUN THIS SCRIPT ONCE... \n"

echo -e "\n Configuring pacman... \n"
sudo sed -i '/Color/s/^#//' /etc/pacman.conf
sudo sed -i '/Color/a ILoveCandy' /etc/pacman.conf

echo -e "\n Adding x86_64 repository... \n"
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

echo -e "\n Setting pacman mirrorlist... \n"
sudo pacman -Sy --noconfirm  reflector
sudo reflector --latest 5 --country "United States",Canada --sort rate --save /etc/pacman.d/ mirrorlist --protocol https --download-timeout 15

echo -e "\n Upgrading system... \n"
sudo pacman --noconfirm -Syyu
pacman -Sl | grep -i lib32