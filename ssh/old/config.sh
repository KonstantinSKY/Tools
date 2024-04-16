#!/bin/bash

echo Copying config to ~/.ssh/ ...
mkdir -p ~/.ssh/
tail -n +11 config.sh > ~/.ssh/config
echo config tile:
cat ~/.ssh/config
echo
exit

#SSH hosts data config

Host server
        HostName 192.168.1.100
        User sky
        Port 22

Host out-server
        HostName 99.153.249.66
        User sky
        Port 22

Host pc
        HostName 192.168.1.50
        User sky
        Port 22

Host term
        HostName 192.168.0.54
        User sky
        Port 22

Host vserver
        HostName 192.168.0.131
        User sky
        Port 22
#End config
