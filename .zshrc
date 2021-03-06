# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"
# "robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY        # Share history across sessions
setopt HIST_IGNORE_SPACE    # commands starting w/ a space don't go into history
setopt print_exit_value
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ncray/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias curl='nocorrect curl'
alias cp='nocorrect cp'
alias mosh='nocorrect mosh'
alias e='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs'
alias ec='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs -nw'
alias ecn='/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs -nw --no-init-file'

#eval `dircolors -b`

#export PS1='%m%#'
#export PS1='%~%#'

#export NODE_PATH=/usr/lib/
export EDITOR='emacs -nw --no-init-file'

export PATH="/usr/local/bin:$PATH:/Applications/Julia.app/Contents/Resources/julia/bin"

x () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xvf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7za x $1 ;;
      *.xz)        xz -d $1 ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
