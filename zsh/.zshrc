# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cat/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Variables
export BROWSER="firefox"
export EDITOR="nvim"
export PATH="${PATH}:${HOME}/.bin"
export PROMPT="[%B%F{magenta}%n%f%b@%m %F{magenta}%1~%f]$ "

# Aliases
. ${HOME}/.zsh_aliases
