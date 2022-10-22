#!bin/bash

echo "Installing AUR updates"
paru -Syu --noconfirm

echo "Installing development apps"
paru -Sy --noconfirm powershell visual-studio-code-insiders-bin \
sublime-text-dev powerline-fonts

echo "Installing multimedia apps"
paru -Sy --noconfirm spotify-adblock-git 

echo "Installing gaming apps"
echo -e "BE SURE TO SELECT THE CORRECT GPU ARCHITECTURE\n"
paru -Sy steam proton proton-ge-custom-bin