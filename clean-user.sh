sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chown $1:$1 /home/$1/.ssh/authorized_keys
sudo chown $1:$1 /home/$1/.ssh

# set folder permissions back to originally desired
sudo chmod 710 /home/$1 