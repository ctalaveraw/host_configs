#!/bin/bash

echo -e "\n Granting 'wheel' group admin privileges... \n"
sudo sed -i '' 's/#[[:blank:]]*\(%wheel[[:blank:]]*ALL=(ALL)[[:blank:]]*ALL.*\)/\1/g' /usr/local/etc/sudoers

echo -e "\n Making user account... \n"
sudo useradd --comment "admin." --user-group --shell /bin/bash --create-home --home-dir /home/admin admin

echo -e "\n Giving sudo access... \n"
sudo usermod -aG wheel admin

echo -e "\n Setting password... \n"
sudo passwd admin