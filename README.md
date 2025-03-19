How to use these scripts from a Windows machine to create a new user
ssh image-builder@172.20.189.123 "bash /home/image-builder/linux-cat/create-user.sh jess18"
scp "$keyGenPrivatePath.pub" image-builder@172.20.189.123:/home/jess18/.ssh/authorized_keys
ssh image-builder@172.20.189.123 "bash /home/image-builder/linux-cat/clean-user.sh jess18"