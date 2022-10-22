#!bin/bash

echo -e "\n Installing AUR updates \n"
paru -Syu --noconfirm

echo -e "\n Installing development apps \n"
paru -Sy --noconfirm powershell visual-studio-code-insiders-bin \
sublime-text-dev ttf-menlo-powerline-git

echo -e "\n Installing multimedia apps \n"
paru -Sy --noconfirm spotify spotify-adblock-git 
