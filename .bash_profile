#
# ~/.bash_profile
#

# If running from tty3 start sway
if [ "$(tty)" = "/dev/tty3" ]; then
	exec sway
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
