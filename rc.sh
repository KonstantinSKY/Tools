# Part of .bashrc and other .rc files

#Environment variables	
#main
export USER_NAME=SKY
export EMAIL=sky012877@gmail.com

#ssh
export SSH_KEY="$HOME/.ssh/id_ed25519"
export SSH_PORT=58290
export SSH_CONFIG="/etc/ssh/sshd_config"

#paths
export TOOLS_PATH="$HOME/Tools"
export PROJECTS_PATH="$HOME/Projects"
export PATH=$PATH:$TOOLS_PATH:$PROJECTS_PATH


#pass
export PASS_PUBLIC="pass_public.gpg"
export PASS_SECRET="pass_secret.gpg"

#git 
export GIT_PASS_STORE="git@gitlab.com:sky012877/Password-store.git"
export GIT_TOOLS="git@gitlab.com:sky012877/Tools.git"


# Open alias file
alias ali="vi $TOOLS_PATH/rc.sh"

#  ENV paths 

dirs="pkgs ssh git helpers"
for dir in $dirs
   do
       export PATH=$PATH:$TOOLS_PATH/$dir
done

#ALIASES
#package aliases
alias upd="sh update.sh"
alias unlockdb="sudo rm /var/lib/pacman/db.lck; rm -R /var/lib/pacman/sync; pamac update --force-refresh"

# git aliases
alias commit="commit.sh"
alias delete="delete.sh"
alias clone="python3 $path/git/git_clone.py"
alias pull="git pull"

#python
alias py="python $1"

#nvim
alias vi="nvim $1"

#shell
alias ls="ls -la --color=auto $1"
alias chx="chmod u+x $1"

#Short paths
alias prjs="cd ~/Projects"
alias pylib="cd ~/Projects/py.libs"
alias skyai="cd ~/Projects/skyai"

#ssh
alias laptop="ssh 192.168.0.54 -p 58290"
alias skypc="ssh 192.168.0.59 -p 58291"
alias copykey="~/Tools/ssh/copy_ssh_key.sh"
alias sshconf="sudo vi /etc/ssh/sshd_config"

#pass
alias passins="cd ~/Tools/pass && sh insert.sh $1"

