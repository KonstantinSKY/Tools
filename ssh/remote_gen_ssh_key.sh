
#!/bin/bash

key_file="~/.ssh/id_ed25519"

echo Create ssh key at a remote host 

echo Preparing for creating ssh key ...

. get_hostname.sh

echo Hostname: $hostname

echo Key file is $key_file
echo Enter email for key file:
read email
echo push any key to create the keyfile: $key_file at $hostname with email: $email
read anykey
echo Connecting to remote host: $hostname

ssh $hostname << EOF

echo We are inside the remote host: $hostname
echo Generating SSH keys....

ssh-keygen -t ed25519 -f $key_file -C $email -N ""


echo $key_file public key: 

cat $key_file.pub
EOF

echo Returned to the local host!
echo Done!
