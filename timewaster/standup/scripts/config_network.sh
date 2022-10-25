#!/bin/bash

echo -e "\n Installing Network Manager... \n"
sudo pacman -Sy --noconfirm networkmanager

echo -e "\n Enabling Network Manager... \n"
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service