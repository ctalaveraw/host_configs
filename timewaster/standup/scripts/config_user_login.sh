#!/bin/bash

echo -e "\n Granting 'wheel' group admin privileges... \n"
sed -i '' 's/#[[:blank:]]*\(%wheel[[:blank:]]*ALL=(ALL)[[:blank:]]*ALL.*\)/\1/g' /usr/local/etc/sudoers

echo -e "\n Make user account... \n"
sudo useradd --comment "admin." --user-group --shell /bin/bash --create-home --home-dir /home/admin admin

echo -e "\n Give sudo access... \n"
sudo usermod -aG wheel admin

echo -e "\n Set password... \n"
sudo passwd admin




