# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [[ "${OSTYPE}" == 'cygwin' ]]; then
    export CONDA_BASEDIR=/cygdrive/c/Users/jdooley/anaconda3
    export SHELLOPTS
    set -o igncr
    
    alias ifconfig=ipconfig
    
    export PATH=$CONDA_BASEDIR/python:$PATH
fi

#if [ -f $HOME/.bash_ssh ]; then
#    . $HOME/.bash_ssh
#fi
