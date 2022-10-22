#!bin/bash

echo -e "\n Installing Linux gaming libraries... \n"
sudo pacman -Sy --noconfirm wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

echo -e "\n Installing Linux gaming dependencies... \n"
sudo pacman -Sy --noconfirm wine-gecko wine-mono lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse vkd3d lib32-vkd3d lib32-libvdpau libvdpau lib32-libxml2 lib32-sdl2 lib32-freetype2 lib32-dbus sdl_image sdl_mixer

echo -e "\n Installing VFIO dependencies... \n"
sudo pacman -Sy --noconfirm qemu virt-manager ovmf dnsmasq ebtables iptables

echo -e "\n Installing Steam and Lutris... \n"
sudo paru -Sy --noconfirm lutris steam steam-native-runtime

echo -e "\n Installing proton... \n"
echo -e "\n BE SURE TO SELECT THE DESIRED VERSION OF PROTON... \n"
paru -Sy proton proton-ge-custom-bin

echo -e "\n Adding current user to the 'games' group... \n"
sudo usermod -a -G games $USERNAME