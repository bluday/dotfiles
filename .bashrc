[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"

PS1="\u @ \h \W \[\e[34;1m\])\[\e[m\] "
