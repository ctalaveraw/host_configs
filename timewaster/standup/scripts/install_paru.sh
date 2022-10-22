#!bin/bash

echo -e "\n Install 'paru'... \n"
cd ~
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

echo -e "\n Running cleanup... \n"
cd ~
rm -rfv ./paru/
