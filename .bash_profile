#
# ~/.bash_profile
#

# If running from tty3 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
