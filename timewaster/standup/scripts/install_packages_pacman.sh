#!bin/bash

echo -e "\n Installing updates... \n"
sudo pacman -Syu --noconfirm

echo -e "\n Installing system utilities... \n"
sudo pacman -Sy --noconfirm p7zip p7zip-plugins unrar \
tar rsync wget openssh curl tree htop vim neovim \
nano neofetch ntfs-3g

echo -e "\n Installing system apps... \n"
sudo pacman -Sy --noconfirm gedit kate clamtk xscreensaver spectacle conky

echo -e "\n Installing development tools... \n"
sudo pacman -Sy --noconfirm git ansible terraform packer vagrant kubeadm kubectl kubelet

echo -e "\n Installing custom apps... \n"
sudo pacman -Sy --noconfirm firefox chromium transmission-qt discord gimp libreoffice thunderbird aria2

echo -e "\n Installing multimedia software... \n"
sudo pacman -Sy --noconfirm vlc amarok a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore
