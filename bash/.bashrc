# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash prompt
export PS1="\[\033[00;33m\]\w λ\[\033[00;00m\] "

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/armin/opt/google-cloud-sdk/path.bash.inc' ]; then . '/home/armin/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/armin/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/home/armin/opt/google-cloud-sdk/completion.bash.inc'; fi

alias emacs-doom='emacs -q -l "~/.emacs-doom.d/init.el"'
alias emacs-base='emacs -q -l "~/.emacs-base.d/init.el"'

alias xclip='xclip -sel c'

haste() { a=$(cat); curl -X POST -s -d "$a" https://bin.friedl.net/documents | awk -F '"' '{print "https://bin.friedl.net/"$4}'; }

# GPG as SSH agent
# see: https://opensource.com/article/19/4/gpg-subkeys-ssh
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

source /home/armin/.config/broot/launcher/bash/br

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
