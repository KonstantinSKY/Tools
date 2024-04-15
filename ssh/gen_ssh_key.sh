#!/bin/bash


key_file=~/.ssh/id_ed25519


echo Generating SSH keys....
ssh-keygen -t ed25519 -f $key_file -C $EMAIL

echo $key_file key: \n

cat $key_file.pub
