#!bin/bash

echo -e "\n Installing ZSH... \n"
sudo pacman -Sy --noconfirm zsh

echo -e "\n Installing Oh My ZSH... \n"
wget -O - https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash