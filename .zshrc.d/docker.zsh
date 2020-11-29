# .zshrc.d/docker.zsh # vim: set ft=zsh

export DOCKER_HOST=unix:///var/run/docker.sock
unset DOCKER_TLS_VERIFY  # https://github.com/moby/moby/issues/36535 
