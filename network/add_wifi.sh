#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################




conf_file="50-cloud-init.yaml"

echo Adding wifi setup...
echo Checking existing connections ...
ls /sys/class/net/

echo Checking config directory ...
ls /etc/netplan/

echo Gonna to add one more config file $conf_file
sudo cat $conf_file


echo Anykey if you want to add it
read anykey

echo Copying config file
sudo cp $conf_file /etc/netplan/$conf_file
sudo chown root:root /etc/netplan/$conf_file
sudo chmod 600 /etc/netplan/$conf_file

echo Apply netplay
sudo netplan apply

echo IP Connection  Statististic
ip a
echo Done.


