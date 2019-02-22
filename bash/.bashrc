#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias runtestserver='VBoxHeadless -s Ubuntu\ Server'
alias vim='nvim'
alias optimode-intel='optimus-manager --switch intel --no-confirm'
alias optimode-nvidia='optimus-manager --switch nvidia --no-confirm'
alias optimode-check='notify-send "$(optimus-manager --print-mode)"' 
PS1='[\u@\h \W]\$ '
