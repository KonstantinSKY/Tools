#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

sudo pamac install postgresql
postgres --version

echo Create directory

mkdir -p ~/Work/postgres/

sudo -iu postgres
echo init DB
initdb --locale=en_US.UTF8 --auth=md5 -E UTF8 -D /var/lib/postgres/data/ -W
sudo -iu postgres

sudo systemctl start postgresql


echo Anykey for init DB
sudo systemctl start postgresql
sudo systemctl status postgresql
sudo systemctl enable postgresql
