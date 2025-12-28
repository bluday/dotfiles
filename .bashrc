[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"

PATH="${PATH}:${HOME}/.local/bin"

PS1="\u @ \h \w \[\e[34m\])\[\e[m\] "

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
