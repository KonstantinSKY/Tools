#!/bin/bash

echo Copying config to ~/.ssh/ ...
tail -n +9 config.sh > ~/.ssh/config
echo config tile:
cat ~/.ssh/config
echo
exit

#SSH hosts data config

Host server
        HostName 192.168.0.55
        User sky
        Port 22

Host pc
        HostName 192.168.0.59
        User sky
        Port 22

Host term
        HostName 192.168.0.54
        User sky
        Port 22

#End config
