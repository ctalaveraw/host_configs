#!bin/bash

echo -e "\n Installing OpenSSH... \n"
sudo pacman -Sy --noconfirm openssh

echo -e "\n Enabling the sshd service... \n"
sudo systemctl enable sshd.service
sudo systemctl start sshd.service