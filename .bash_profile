# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=/opt/pkgs/gnupg/bin:/opt/pkgs/tmux/3.3a/bin:$PATH:$HOME/.local/bin:$HOME/bin

export PATH
