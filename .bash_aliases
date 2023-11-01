# $HOME/.bashrc_aliases

PS1="\[\e[97;1m\]\u@\h"
if [ $EUID == 0 ]; then
	PS1="\[\e[91;1m\]\u@\h"
fi

if [ -n "$SSH_CLIENT" ]; then
	PS1="\[\e[93;1;2;3m\](ssh)\[\e[0m\] $PS1"
fi

PS1="$PS1 \[\e[0;2;3m\]\W \[\e[23;1m\]\$ \[\e[0m\]"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s histappend # dont overwrite historyfile
shopt -s checkwinsize # update col # after each command

# See bash(1) for more options
HISTCONTROL=ignoreboth

#HISTSIZE= HISTFILESIZE= # Infinite history.
HISTSIZE=1000
HISTFILESIZE=2000

