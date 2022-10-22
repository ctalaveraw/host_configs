#!bin/bash

echo "Installing ZSH"
sudo pacman -Sy --noconfirm zsh

echo "Installing Oh My ZSH"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
