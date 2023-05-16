#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
echo Converting text to wave
echo From $2 to $1
text=$1
name="${text%.txt}"
wave=$name".wav"
mp3=$name".mp3"
echo From $text to $wave and to $mp3

cat $1

text2wave -F 48000 -o $wave $text

echo Converting to $mp3

lame $wave $mp3

echo finished


