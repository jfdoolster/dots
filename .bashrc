# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_ssh ]; then
    . $HOME/.bash_ssh
fi

if [ -f $HOME/.bash_texlive ]; then
    . $HOME/.bash_texlive
fi

if [ -f $HOME/.bash_conda ]; then
    . $HOME/.bash_conda
fi

if [ -d $HOME/dots/srcs ]; then
    PATH=$PATH:$HOME/dots/srcs
fi

set-window-title() {
  echo -en "\033]0;$PROMPT_PRE$(pwd | sed -e "s;^$HOME;~;")\a"
}
if [[ "$PROMPT_COMMAND" ]]; then
  export PROMPT_COMMAND="$PROMPT_COMMAND;set-window-title"
else
  export PROMPT_COMMAND=set-window-title
fi

export PS1="\[\e[93;1;2;3m\]$PROMPT_PRE\[\e[0m\]$PS1"