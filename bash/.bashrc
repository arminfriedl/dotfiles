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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/armin/opt/google-cloud-sdk/path.bash.inc' ]; then . '/home/armin/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/armin/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/home/armin/opt/google-cloud-sdk/completion.bash.inc'; fi

alias emacs-doom='emacs -q -l "~/.emacs-doom.d/init.el"'
alias emacs-base='emacs -q -l "~/.emacs-base.d/init.el"'
