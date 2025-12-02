# $HOME/.bashrc_aliases

if [ -f $HOME/.bash_colors ]; then
    . $HOME/.bash_colors
fi

PS1USER="${BOLD}\u@\h${COL_RESET}"
PS1DIR="${ITALIC}${DIM}\W${COL_RESET}"
PS1SYM="\$"

if [ $EUID == 0 ]; then
    PS1USER="${RED}$PS1USER"
    PS1DIR="${RED}$PS1DIR"
    PS1SYM="${RED}$PS1SYM"
fi

PS1="${PS1USER} ${PS1DIR} ${PS1SYM} "

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s checkwinsize # update col # after each command

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

if [ -n "$SSH_CLIENT" ]; then
    PROMPT_PRE="${BOLD}${ITALIC}${BRIGHT_YELLOW}(ssh)${COL_RESET}"
fi



