# .zshrc.d/z_aliases.zsh # vim: set ft=zsh:

# system
alias grep='grep --binary-files=without-match --color=auto --exclude-dir=build'
alias hist='cat ~/.history'
alias histg='cat ~/.history | grep'
alias kk='kinit -f -l 43200 -r 604800'
alias ls='ls --color=auto'
alias mux='tmux attach-session -t local || tmux -2 new-session -s local'
alias psw='ps axuf | less -+S'
alias serve='echo "http://$(hostname):8000"; python -m http.server'
alias sudo='sudo '
alias tree="tree -I '*.pyc|__pycache__|*.d.ts' --charset=ASCII -C"

# development
alias pip='noglob pip'
alias pip3='noglob pip3'

alias mkvirt='mkvirtualenv -p /usr/bin/python3.8'
