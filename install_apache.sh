#!/bin/bash
echo"installing apache 2"
sudo apt update
sudo apt install apache2
if [ -f /var/run/apache2.pid];
then 
	echo "apache2 is running"
else
	echo "apache2 is not running"
	sudo systemctl start apache2
	sudo systemctl eanble apache2
	echo "print status of apche.services"
	sudo systemctl status apache2
fi

echo "installing  docker "
echo "adding user"



users="ram shyam hari gopal"  # Define user list

for user in $users  # Loop through each user
do
    echo "Adding user: $user"
    sudo useradd $user  # Add user (needs sudo privileges)
done

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

echo "adding docker official GPG key"

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
