#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="\[\e[38;2;162;65;188m\]\w\[\e[38;2;21;32;153m\]\$ \[\e[0m\]"

export EDITOR=nvim
