#!bin/bash

echo -e "\n Installing updates... \n"
sudo pacman -Syu --noconfirm

echo -e "\n Installing KDE Plasma desktop environment... \n"
sudo pacman -Sy --noconfirm xorg plasma plasma-wayland-session kde-applications sddm packagekit-qt5

echo -e "\n Installing SSDM... \n"
sudo pacman -Sy --noconfirm sddm 

echo -e "\n Enabling SSDM... \n"
sudo systemctl enable sddm.service

echo -e "\n Installing Network Manager... \n"
sudo pacman -Sy --noconfirm networkmanager

echo -e "\n Enable Network Manager... \n"
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service