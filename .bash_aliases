# $HOME/.bashrc_aliases

if [ -f $HOME/.bash_colors ]; then
    . $HOME/.bash_colors
fi


#PS1="\[\e[97;1m\]\u@\h"
#PS1="\033[38;5;7;1m\u@\h"
PS1="\[$BOLD\]\u@\h\[$COL_RESET\]"
PSYMB="\[$BOLD\]\$\[$COL_RESET\]"
PDIR="\[$DIM\]\[$ITALIC\]\W\[$COL_RESET\]"
if [ $EUID == 0 ]; then
    PS1="\[$RED\]\[$BOLD\]\u@\h\[$COL_RESET\]"
    PSYMB="\[$RED\]\[$BOLD\]#\[$COL_RESET\]"
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
