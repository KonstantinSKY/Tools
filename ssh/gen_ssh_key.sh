#!/bin/bash

email=$EMAIL
key_file=$SSH_KEY

echo Generating SSH keys....
ssh-keygen -t ed25519 -f $key_file -C $email

# Example for copy
# ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -C XXXX@gmail.com

echo $key_file key: \n

cat $key_file.pub
