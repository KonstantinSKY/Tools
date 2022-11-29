#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setting blank screen on for ubuntu server                  #
############################################################################

echo Setting Blanking screen
echo Coping config...
sudo cp enable-console-blanking.service /etc/systemd/system/enable-console-blanking.service
sudo chmod 664 /etc/systemd/system/enable-console-blanking.service

echo enabling service...
sudo systemctl enable enable-console-blanking.service
sudo systemctl status enable-console-blanking.service

echo Done!
echo Dont forget to reboot the server
