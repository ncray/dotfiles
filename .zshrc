# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ncray/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias e='emacs -nw --no-init-file'

export EDITOR='emacs -nw --no-init-file'