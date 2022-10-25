#!/bin/bash

echo -e "\n Installing Bluetooth stack... \n"
sudo pacman -Sy --noconfirm bluez bluez-utils

echo -e "\n Starting Bluetooth service... \n"
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service