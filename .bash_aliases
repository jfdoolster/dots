# $HOME/.bashrc_aliases

PS1="\[\e[97;1m\]\u@\h"
if [ $EUID == 0 ]; then
    PS1="\[\e[91;1m\]\u@\h"
fi
PS1="$PS1 \[\e[0;2;3m\]\W \[\e[23;1m\]\$ \[\e[0m\]"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s checkwinsize # update col # after each command

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

if [ -n "$SSH_CLIENT" ]; then
	PROMPT_PRE="(ssh) "
fi

if [[ "${OSTYPE}" == 'cygwin' ]]; then
    export CONDA_BASEDIR=/cygdrive/c/Users/jdooley/anaconda3
    export SHELLOPTS
    set -o igncr

    alias ifconfig=ipconfig
    alias tlmgr=tlmgr.bat
fi


