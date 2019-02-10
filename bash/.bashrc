#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias runtestserver='VBoxHeadless -s Ubuntu\ Server'
PS1='[\u@\h \W]\$ '
