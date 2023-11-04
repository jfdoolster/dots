# $HOME/.bashrc_aliases

alias ls="ls --color=auto"
alias grep="grep --color=auto"

shopt -s histappend # dont overwrite historyfile
shopt -s checkwinsize # update col # after each command

# See bash(1) for more options
HISTCONTROL=ignoreboth

#HISTSIZE= HISTFILESIZE= # Infinite history.
HISTSIZE=1000
HISTFILESIZE=2000

if [ -d $HOME/dots/srcs ]; then
    PATH=$PATH:$HOME/dots/srcs
fi

if [[ -z "${USER}" ]]; then
    USER=$USERNAME
fi

if [[ "${OSTYPE}" == 'cygwin' ]]; then
    export CONDA_BASEDIR=/cygdrive/c/Users/jdooley/anaconda3
    export SHELLOPTS
    set -o igncr

    alias ifconfig=ipconfig

    export PATH=$CONDA_BASEDIR/bin:$PATH
fi


