[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"

if [[ $PATH_UPDATED -eq 0 ]]; then
    PATH="$HOME/.local/bin:$PATH"
    PATH_UPDATED=1
fi

PS1="\u @ \h \w \[\e[34m\])\[\e[m\] "

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
