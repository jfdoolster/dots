# $HOME/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

cyg-activate() {
    export CONDA_DEFAULT_ENV=$1
    source ~/.bash_profile
    cyg-conda info --envs
}

if [[ "${OSTYPE}" == 'cygwin' ]]; then
    export CONDA_BASEDIR=/cygwin/c/ProgramData/anaconda3
    export SHELLOPTS
    set -o igncr
    
    alias ifconfig=ipconfig
    
    export PATH=$CONDA_BASEDIR/python:$PATH
#
#    alias cyg-conda=${CONDA_BASE_DIR}/Scripts/conda.exe
#    PATH=$PATH:$CONDA_PREFIX
#    PATH=$PATH:$CONDA_PREFIX/Library/mingw-w64/bin
#    PATH=$PATH:$CONDA_PREFIX/Library/usr/bin
#    PATH=$PATH:$CONDA_PREFIX/Library/bin
#    PATH=$PATH:$CONDA_PREFIX/Scripts
#    PATH=$PATH:$HOME/scripts
#    PATH=$PATH:$HOME/local/bin
#    PATH=$PATH:/usr/local/bin
#    PATH=$PATH:/usr/bin
#    export PATH
fi

#if [ -f $HOME/.bash_ssh ]; then
#    . $HOME/.bash_ssh
#fi
