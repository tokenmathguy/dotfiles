# .zshrc.d/vim.zsh # vim: set ft=zsh

export EDITOR=vim
export VISUAL=vim
bindkey -v # this should be covered by EDITOR, but sometimes isn't
set -o vi
if [[ -f /usr/local/bin/vim ]]; then
    alias vim=/usr/local/bin/vim
    alias vi=/usr/local/bin/vim
else
    alias vim=/usr/bin/vim
    alias vi=/usr/bin/vim
fi
