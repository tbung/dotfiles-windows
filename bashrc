#
# ~/.bashrc
#

# if not running interactively, dont do anything
[[ $- != *i* ]] && return

# git and prompt
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# pretty prompt
export PS1='\[\e[0;34m\]\[\e[0;34m\]\W\[\033[0;31m\]$(__git_ps1 " [%s]")\[\e[0;32m\] ❯\[\033[0m\] '

export PATH="/home/tillb/miniconda3/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"

alias ls='ls --color=auto'

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash