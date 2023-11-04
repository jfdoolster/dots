# $HOME/.bash_profile
PS1="\[\e[97;1m\]\u@\h"
if [ $EUID == 0 ]; then
    PS1="\[\e[91;1m\]\u@\h"
fi
PS1="$PS1 \[\e[0;2;3m\]\W \[\e[23;1m\]\$ \[\e[0m\]"

[[ -f ~/.bashrc ]] && . ~/.bashrc
