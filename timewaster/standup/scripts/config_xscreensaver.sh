#!/bin/bash

echo -e "\n Installing XScreensaver... \n"
sudo pacman -Sy --noconfirm xscreensaver

echo -e "\n Creating XScreensaver service... \n"
mkdir -pv ~/.config/systemd/user/
touch ~/.config/systemd/user/xscreensaver.service

echo -e "\n Configuring XScreensaver service... \n"
echo "[Unit]
Description=XScreenSaver
[Service]
ExecStart=/usr/bin/xscreensaver -nosplash
[Install]
WantedBy=default.target" > ~/.config/systemd/user/xscreensaver.service
cat ~/.config/systemd/user/xscreensaver.service

echo -e "\n Enabling XScreensaver service... \n"
systemctl --user enable xscreensaver