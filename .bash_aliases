# $HOME/.bashrc_aliases

if [ $EUID == 0 ]; then
	PS1='\[\e[91;1m\]\u@\h \[\e[0;2;3m\]\W \[\e[23;1m\]\$ \[\e[0m\]'
else
	PS1='\[\e[1m\]\u@\h \[\e[0;2;3m\]\W \[\e[23;1m\]\$ \[\e[0m\]'
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# See bash(1) for more options
HISTCONTROL=ignoreboth

#HISTSIZE= HISTFILESIZE= # Infinite history.
HISTSIZE=1000
HISTFILESIZE=2000

