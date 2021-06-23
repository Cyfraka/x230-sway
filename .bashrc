#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias ssh="kitty +kitten ssh"
alias ls='ls --color=auto'
alias vnc='ssh -L 5901:127.0.0.1:5901 192.168.6.66'
alias config='/usr/bin/git --git-dir=$HOME/.x230-sway.git --work-tree=$HOME'
# reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

PS1='[\t \[\e[01;36m\]\u\[\e[0m\]@\[\e[01;36m\]\h\[\e[0m\] \W]\\$ '

export PATH=${HOME}/tools/vim/bin:$PATH
export EDITOR=vim

source <(kitty + complete setup bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

neofetch

#
# End
#
