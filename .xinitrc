#!/bin/bash
wmname LG3D

xmodmap ${HOME}/.Xmodmap

xsetroot -solid black

autocutsel -selection PRIMARY -fork
autocutsel -fork

eval `ssh-agent -s`

$(sleep 4 && slstatus) &
# $(sleep 4 && monitor) &

exec dwm
