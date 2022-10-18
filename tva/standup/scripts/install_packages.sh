#!bin/bash

echo "Installing updates"
pacman -Syu --noconfirm

echo "Installing system utilities"
pacman -Syu --noconfirm htop vim neovim tree wget curl nano

echo "Installing ZSH"
pacman -Sy --noconfirm zsh

echo "Installing Oh My ZSH"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Installing development tools"
pacman -Sy --noconfirm git ansible terraform

echo "Installing custom apps"
pacman -Sy --noconfirm firefox chromium vlc transmission-qt discord

echo "Installing Linux gaming libraries"
pacman -Sy --noconfirm wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

echo "Installing Linux gaming dependencies"
pacman -Sy --noconfirm wine-gecko wine-mono lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse vkd3d lib32-vkd3d lib32-libvdpau libvdpau lib32-libxml2 lib32-sdl2 lib32-freetype2 lib32-dbus sdl_image sdl_mixer

echo "Installing VFIO dependencies"
pacman -S qemu virt-manager ovmf dnsmasq ebtables iptables
