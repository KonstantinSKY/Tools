echo copying config to .ssh
cp config.sh ~/.ssh/config
ls ~/.ssh/
exit

#hosts data config
Host server
        HostName 192.168.0.75
        User sky
        Port 22

Host pc
        HostName 192.168.0.59
        User sky
        Port 22

Host virtserver
        HostName 192.168.0.194
        User sky
		Port 22
