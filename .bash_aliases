# $HOME/.bashrc_aliases

PS1="\[\e[97;1m\]\u@\h"
PSYMB="\$"
if [ $EUID == 0 ]; then
    PS1="\[\e[91;1m\]\u@\h"
    PSYMB="#"
fi

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

PS1="$PS1 \[\e[0;2;3m\]\W \[\e[23;1m\]$PSYMB \[\e[0m\]"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s checkwinsize # update col # after each command

if [ -n "$SSH_CLIENT" ]; then
	PROMPT_PRE="(ssh) "
fi
