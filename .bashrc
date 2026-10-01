#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias dotfiles='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)
