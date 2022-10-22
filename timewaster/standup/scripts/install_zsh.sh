#!bin/bash

echo -e "\n Installing ZSH \n"
sudo pacman -Sy --noconfirm zsh

echo -e "\n Installing Oh My ZSH \n"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
