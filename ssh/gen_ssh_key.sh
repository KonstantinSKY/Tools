#!/bin/bash

email=$EMAIL
key_file=$SSH_KEY

echo Generating SSH keys....
ssh-keygen -t ed25519 -f $key_file -C $email

echo $key_file key: \n

cat $key_file.pub
