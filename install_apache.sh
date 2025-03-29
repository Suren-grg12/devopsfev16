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

echo "adding user"



users="ram shyam hari gopal"  # Define user list

for user in $users  # Loop through each user
do
    echo "Adding user: $user"
    sudo useradd $user  # Add user (needs sudo privileges)
done

