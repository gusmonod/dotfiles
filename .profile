# +----------------------------+
# | General bash configuration |
# +----------------------------+

# Aliases definitions => ~/.bash_aliases
# ======================================

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# History management
# ==================

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
shopt -s histappend
# bigger history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
# append to the history file, don't overwrite it
shopt -s cmdhist
shopt -s histappend
# backward search into history when using up arrow: ~/.inputrc
## arrow up
#"\e[A":history-search-backward
## arrow down
#"\e[B":history-search-forward
# history everywhere
PROMPT_COMMAND="history -a; history -n"

# Window resizing
# ===============

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Prompt display
# ==============

# script to include git branch with $(__git_ps1)
source ~/.git-prompt.sh
# removing old value of PS1
PS1=""
# saving the return value
PS1=$PS1"\$(ret=\$?;"
# display time
PS1=$PS1"echo -ne \"\[\e[0;37m\]\$(date +%H:%M)\";"
# non zero return code display + arrow
PS1=$PS1"if [[ \$ret == 0 ]];"
PS1=$PS1"then echo -e \" \[\e[1;32m\]➜ \";"
PS1=$PS1"else echo -e \" \[\e[1;31m\]➜ \$ret\"; fi)"
# adding branch name when in git repo
PS1=$PS1"\$(if [ -n __git_ps1 ]; then echo -e \"\[\e[1;33m\]\$(__git_ps1)\"; fi)"
# current directory name
PS1=$PS1" \[\e[m\]\[\e[1;34m\]\W \[\e[m\]"

# +-----------------------+
# | Environment variables |
# +-----------------------+

# Global
# ======

# make sure utf-8 is used when appropriate
export LC_CTYPE=en_US.UTF-8

# Version Managers
# ================

# where to store different node and npm versions
export NVM_DIR="$HOME/.nvm"
# where to store python virtualenvs
export WORKON_DIR="$HOME/.virtualenvs"

# +----------+
# | Launches |
# +----------+

# Version Managers
# ================

# make nvm command available
source $(brew --prefix nvm)/nvm.sh
# make virtualenvwrapper commands available
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy
# make rbenv commands available
# eval "$(rbenv init -)"

# Automatic .env execution
# ========================

source /usr/local/opt/autoenv/activate.sh

# iTerm2 shell integration
# ========================

source ~/.iterm2_shell_integration.bash

