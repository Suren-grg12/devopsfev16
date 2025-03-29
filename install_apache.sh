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
fi


