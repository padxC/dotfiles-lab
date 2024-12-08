#!/bin/bash
#######--PAD---ba$hrc
###=================###


shopt -s autocd # cd directly into the directory namea.

###==HISTORY==###
HISTSIZE= HISTFILESIZE= # infinite history

###==ALIAS==###
alias nv="nvim"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

###==COLORS==###
alias ls="ls -hN --color=auto --group-directories-first" 
alias grep="grep --color=auto" # color grep - highlight desired sequence

###==INTERNET==###
#alias yt="youtube-dl --add-metadata -ic" # download video link
#alias yta="youtube-dl --add-metadata -xic" # download only audio 


###==PROMPTS==###
#export PS1='\[\e[38;5;133;2;3m\]\w\[\e[0m\] \[\e[38;5;210;1;2;3m\]\\$\[\e[0m\] \[\e[38;5;203;1;2;3m\]pad\[\e[38;5;132m\].\[\e[38;5;66m\]!\[\e[38;5;132m\]!\[\e[0m\] \[\e[38;5;240;1;2;3m\]~\[\e[0m\] '
export PS1='\[\e[38;5;169;2;3m\]\w\[\e[22;23m\].\[\e[0m\] \[\e[38;5;178;1;3m\]\\$\[\e[0;38;5;135m\]_\[\e[38;5;203;3m\]pad.\[\e[0m\] \[\e[38;5;138;1;2;3m\]*\[\e[38;5;172m\]~\[\e[38;5;250m\].\[\e[0m\] '


###==VIM==###
set -o vi # vim mode


###=================###

# This line fix the color mismatch when do ls command 
export LS_COLORS=$LS_COLORS:'ow=36:'
