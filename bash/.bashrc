# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Java Home
export JAVA_HOME=/etc/alternatives/java_sdk

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Switch set capslock to ctrl
setxkbmap -option "ctrl:nocaps"

alias xclip='xclip -sel c'
alias pd='podman'

haste() { a=$(cat); curl -X POST -s -d "$a" https://bin.friedl.net/documents | awk -F '"' '{print "https://bin.friedl.net/"$4}'; }

# GPG as SSH agent
# see: https://opensource.com/article/19/4/gpg-subkeys-ssh
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Virtualenvwrapper
# installed with pip install --user virtualenvwrapper
# see: https://virtualenvwrapper.readthedocs.io/en/latest/install.html
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
source $HOME/.local/bin/virtualenvwrapper_lazy.sh
