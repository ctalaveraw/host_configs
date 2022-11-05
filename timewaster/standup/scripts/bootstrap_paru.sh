#!bin/bash

echo -e "\n Installing AUR updates... \n"
paru -Syu --noconfirm

echo -e "\n Installing system utilities... \n"
paru -Sy --noconfirm ntfs3-dkms zfs-linux-zen-git adduser

echo -e "\n Installing development apps... \n"
paru -Sy --noconfirm powershell-bin sublime-text-4 sublime-merge \
ttf-menlo-powerline-git drawio-desktop slack-desktop

echo -e "\n Installing VSCodium... \n"
paru -Sy --noconfirm vscodium-bin \
vscodium-bin-marketplace \
vscodium-bin-features 

echo -e "\n Installing multimedia apps... \n"
paru -Sy --noconfirm spotify spotify-adblock-git 

echo -e "\n Installing gaming hardware configuration apps... \n"
paru -Sy --noconfirm openrgb-bin piper

echo -e "\n Installing custom apps... \n"
paru -Sy --noconfirm brave-bin