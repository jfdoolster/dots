# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.gcloudrc ]; then
    . $HOME/.gcloudrc
fi

#if [ -f $HOME/.bash_conda ]; then
#    . $HOME/.bash_conda
#fi

if [ -d $HOME/dots/srcs ]; then
    PATH=$PATH:$HOME/dots/srcs
fi

set-window-title() {
  echo -en "\033]0;$PROMPT_PRE$USER@$(uname -n): $(basename `pwd`)\a"
}
if [[ "$PROMPT_COMMAND" ]]; then
  export PROMPT_COMMAND="$PROMPT_COMMAND;set-window-title"
else
  export PROMPT_COMMAND=set-window-title
fi

export PS1="\[\033[93;1;2;3m\]${PROMPT_PRE}\[\033[0m\]${PS1}"

