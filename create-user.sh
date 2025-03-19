#!/bin/bash
# this should pass 1 argument which is the username
if ["$#" -ne 1]; then
    echo "Usage $0 <username>"
fi

sudo useradd -m -s /bin/bash $1
sudo adduser $1 sudo
sudo usermod -G sudo -a $1
sudo passwd -d $1
sudo sh -c "echo '$1 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"

# set permission so image-builder can manipulate this folder
sudo chmod 777 /home/$1

# Create directories
mkdir /home/$1/.ssh
