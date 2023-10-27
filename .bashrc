# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_ssh ]; then
    . ~/.bash_ssh
fi

if [ -f ~/anaconda3/bin/conda ]; then
    PATH=$HOME/anaconda3/bin:$PATH
fi
