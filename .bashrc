# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_ssh ]; then
    . $HOME/.bash_ssh
fi

#if [ -f /root/anaconda3/bin/conda ]; then
#    PATH=/root/anaconda3/bin:$PATH
#fi
