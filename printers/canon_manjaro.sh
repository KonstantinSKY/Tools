#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Setiing up CANON printer for Manjaro
sudo pamac install simple-scan skanlite splix system-config-printer avahi
echo for print manager just ENTER
sudo pamac install printer-manager
echo Setting up configs
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path
sudo systemctl enable --now avahi-daemon.service

xdg-open http://localhost:631/ &

