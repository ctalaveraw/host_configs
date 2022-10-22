#!bin/bash

echo "Installing Paru updates"
paru -Syu --noconfirm

echo "Installing Paru apps"
paru -Sy --noconfirm powershell spotify-adblocker-git \
visual-studio-code-insiders-bin sublime-text-dev

