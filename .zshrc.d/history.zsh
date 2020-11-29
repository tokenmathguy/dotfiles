# .zshrc.d/history.zsh # vim: set ft=zsh:

setopt incappendhistory
setopt sharehistory
setopt extendedhistory
setopt hist_ignore_space
setopt histreduceblanks
setopt histignoredups

export HISTFILE="${HOME}/.history"
export HISTSIZE=6553600
export SAVEHIST=6553600
export REPORTTIME=10

bindkey "^R" history-incremental-search-backward
