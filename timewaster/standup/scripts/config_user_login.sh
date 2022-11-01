#!/bin/bash

echo -e '\n Please enter the name of the new user... \n'
read NEW_USERNAME

echo -e "\n Granting 'wheel' group admin privileges... \n"
sudo sed -i '' 's/#[[:blank:]]*\(%wheel[[:blank:]]*ALL=(ALL)[[:blank:]]*ALL.*\)/\1/g' /usr/local/etc/sudoers

echo -e "\n Making user account... \n"
sudo useradd --comment "$NEW_USERNAME" --user-group --shell /bin/bash --create-home --home-dir /home/$NEW_USERNAME $NEW_USERNAME

echo -e "\n Giving sudo access... \n"
sudo usermod -aG wheel $NEW_USERNAME

echo -e "\n Setting password... \n"
sudo passwd $NEW_USERNAME