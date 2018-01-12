# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

#SSH-Agent via systemd as Gnome-Keyring is B0rked
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK

