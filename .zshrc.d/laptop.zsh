# .zshrc.d/laptop.zsh # vim: set ft=zsh:

function backlight() {
    echo -n "$1" | sudo tee /sys/class/backlight/intel_backlight/brightness
}

export XDG_CACHE_HOME=.cache

alias deskdock='xrandr --output HDMI-1 --mode 2048x1152 --output eDP-1 --off && xmodmap ~/.Xmodmapdesk'
