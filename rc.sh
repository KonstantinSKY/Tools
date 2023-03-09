# Part of .bashrc and other .rc files

#Environment variables
#main
export USER_NAME=SKY
export EMAIL=sky012877@gmail.com
export GH_USER=KonstantinSKY

#paths
export TOOLS_PATH="$HOME/Tools"
export PROJECTS_PATH="$HOME/Projects"
export PATH=$PATH:$TOOLS_PATH:$PROJECTS_PATH

#git
export GH_HOST="github.com"
# Tools environmen paths

export PATH=$PATH:$TOOLS_PATH/pkgs
export PATH=$PATH:$TOOLS_PATH/ssh
export PATH=$PATH:$TOOLS_PATH/git
export PATH=$PATH:$TOOLS_PATH/helpers
export PATH=$PATH:$TOOLS_PATH/tar
export PATH=$PATH:$TOOLS_PATH/pass

# Open alias file
alias ali="vi $TOOLS_PATH/rc.sh"

#ALIASES
#package aliases
alias upd="upd.sh"
alias unlockdb="sudo rm /var/lib/pacman/db.lck; rm -R /var/lib/pacman/sync; pamac update --force-refresh"

# git aliases
alias commit="commit.sh"
alias delete="delete.sh"
alias new_clone="new_repo_clone.sh"
alias pull="git pull"
# GitHub

alias gh_delete="gh_delete_repo.sh"
alias gh_list="gh repo list"
alias gh_create="gh_create_repo.sh"
alias gh_clone="gh_clone_repo.sh"
alias gh_descr="gh_descr_repo.sh"

#python
alias py="python $1"

#nvim
alias vi="nvim $1"

#shell
alias ls="ls -la --color=auto $1"
alias chx="chmod u+x $1"
alias rmall="rm"
alias rm=trash
alias Trash="trash --help; ls -la ~/.local/share/Trash/files"

#Short paths
alias prjs="cd ~/Projects"
alias pylib="cd ~/Projects/py.libs"
alias skyai="cd ~/Projects/skyai"

#ssh
alias rsss="remote_start_sudo_script.sh"

#tar
alias tarb="tarb.sh $1" #archive bzip2 format

#pass
alias inspass="insert_password.sh"
alias genpass="pass generate last_generated 15 -f"

#vms
alias vserver="VBoxManage startvm vserver --type headless"
alias k="VBoxManage startvm K"
alias vserveroff="VBoxManage controlvm vserver poweroff"
#EOF
