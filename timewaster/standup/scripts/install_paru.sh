#!bin/bash

echo "Install `paru`"
cd ~
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

echo "Running cleanup"
cd ~
rm -rfv ./paru/
