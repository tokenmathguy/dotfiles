# source all dot files
for rcfile in ~/.zshrc.d/*
do
    source "$rcfile"
done

# colors and titles
eval "$(dircolors -b)"
export AUTO_TITLE_SCREENS="NO"

# # completions
autoload -U compinit
compinit

# other completions -- git, etc
fpath=(~/.zsh/completion $fpath)

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' menu select

# unsetopt correctall
setopt interactivecomments

export PATH=$HOME/.toolbox/bin:$PATH
