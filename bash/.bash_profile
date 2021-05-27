# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH="$HOME/.cask/bin:$HOME/.cargo/bin:$PATH"

# Switch set capslock to ctrl
# Must live here to be activated for login shell
# Does not work if in .bashrc.d
setxkbmap -option "ctrl:nocaps"
