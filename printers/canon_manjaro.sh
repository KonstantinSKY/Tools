#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
ip=192.168.1.254

echo Setiing up CANON printer for Manjaro

sudo pamac install simple-scan skanlite system-config-printer avahi
sudo pamac install manjaro-printer
echo for print manager just ENTER
sudo pamac install print-manager
echo Setting up configs
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path
sudo systemctl enable --now avahi-daemon.service
echo adding $ip to /etc/hosts
echo $ip      printer | sudo tee -a /etc/hosts

xdg-open http://localhost:631/ &

