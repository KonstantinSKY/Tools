#!/bin/bash

echo Setting system clock auto sync...
sudo timedatectl set-ntp true
timedatectl status
echo Done!
