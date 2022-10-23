#!bin/bash

echo -e "\n Installing 'openssh'... \n"
sudo pacman -Sy --noconfirm openssh

echo -e "\n Enabling the 'sshd' daemon... \n"
sudo systemctl enable sshd.service
sudo systemctl start sshd.service