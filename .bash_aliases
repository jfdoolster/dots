# $HOME/.bashrc_aliases

if [ -f $HOME/.bash_colors ]; then
    . $HOME/.bash_colors
fi

PS1="${BOLD}\u@\h"
PSYMB="${BOLD}\$"
if [ $EUID == 0 ]; then
    PS1="${BOLD}${RED}\u@\h"
    PSYMB="${BOLD}${RED}#"
fi

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

PS1="$PS1 ${ITALIC}${DIM}\W${COL_RESET} $PSYMB ${COL_RESET}"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s checkwinsize # update col # after each command

if [ -n "$SSH_CLIENT" ]; then
	PROMPT_PRE="(ssh) "
fi
