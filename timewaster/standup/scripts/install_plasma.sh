#!bin/bash

echo "Installing updates"
sudo pacman -Syu --noconfirm

echo "Installing KDE Plasma desktop environment"
sudo pacman -Sy --noconfirm xorg plasma plasma-wayland-session kde-applications sddm 

echo "Installing SSDM"
sudo pacman -Sy --noconfirm sddm 

echo "Enabling SSDM"
sudo systemctl enable sddm.service

