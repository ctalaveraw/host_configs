#!bin/bash

echo "Installing updates"
pacman -Syu --noconfirm

echo "Installing system apps"
pacman -Sy --noconfirm gedit kate clamtk xscreensaver spectacle conky

echo "Installing system utilities"
pacman -Sy --noconfirm p7zip p7zip-plugins unrar tar rsync wget curl tree htop vim neovim nano neofetch

echo "Installing ZSH"
pacman -Sy --noconfirm zsh

echo "Installing Oh My ZSH"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Installing development tools"
pacman -Sy --noconfirm git ansible terraform packer vagrant kubeadm kubectl kubelet

echo "Installing custom apps"
pacman -Sy --noconfirm firefox chromium transmission-qt discord gimp libreoffice thunderbird aria2

echo "Installing multimedia software"
pacman -Sy --noconfirm vlc amarok a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore

echo "Installing Linux gaming libraries"
pacman -Sy --noconfirm wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

echo "Installing Linux gaming dependencies"
pacman -Sy --noconfirm wine-gecko wine-mono lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse vkd3d lib32-vkd3d lib32-libvdpau libvdpau lib32-libxml2 lib32-sdl2 lib32-freetype2 lib32-dbus sdl_image sdl_mixer lutris

echo "Installing VFIO dependencies"
pacman -Sy --noconfirm qemu virt-manager ovmf dnsmasq ebtables iptables
