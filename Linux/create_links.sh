#!/bin/bash

############################################################################
# Script name : create_links.sh               Date   : 10/02/22            #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create symbolic link to Work disk                          #
############################################################################
. exe.lib


h1 Symbolic Links Creator

directories="Tools Downloads Security Documents Music Pictures Projects Videos Configs Obsidian BackUps VirtualBox_VMs"

bin_files="exe.lib"


h2 Symbolik links from ~/.local/bin to ~/Work/Tools/Linux 
for file in $bin_files; do
	slink "$HOME/Work/Tools/Linux/$file.sh" "$HOME/.local/bin/$file" "$file"
	chmod 700 "$HOME/.local/bin/$file"
done

h2 Symbolic links from ~/ to ~/Work will be created for next Directories:
h2 "$directories"
for dir in $directories; do
	mkdir -p "$HOME"/Work/"$dir"
	slink "$HOME/Work/$dir" "$HOME/$dir" "$dir"
done

end
