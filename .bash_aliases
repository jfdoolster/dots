# $HOME/.bashrc_aliases

if [ -f $HOME/.bash_colors ]; then
    . $HOME/.bash_colors
fi


#PS1="\[\e[97;1m\]\u@\h"
#PS1="\033[38;5;7;1m\u@\h"
PS1="\[\033[97;1m\]\u@\h\[\033[0m\]"
PDIR="\[\033[97;2;3m\]\W\[\033[0m\]"
PSYMB="\[\033[97;1m\]\$\[\033[0m\]"
#PSTR="\[\033[90;1m\]90\[\033[91;1m\]91\[\033[93;1m\]93\[\033[94;1m\]94\[\033[95;1m\]95\[\033[96;1m\]96\[\033[97;1m\]97\[\033[0m\]"
if [ $EUID == 0 ]; then
    PS1="\[\033[91;1m\]\u@\h\[\033[0m\]"
    PDIR="\[\033[91;2;3m\]\W\[\033[0m\]"
    PSYMB="\[\033[91;1m\]\$\[\033[0m\]"
fi

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

PS1="$PS1 $PDIR $PSYMB "

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s checkwinsize # update col # after each command

if [ -n "$SSH_CLIENT" ]; then
	PROMPT_PRE="(ssh) "
fi
