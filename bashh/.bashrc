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
export PS1='\[\e[38;5;133;2;3m\]\w\[\e[0m\] \[\e[38;5;210;1;2;3m\]\\$\[\e[0m\] \[\e[38;5;203;1;2;3m\]pad\[\e[38;5;132m\].\[\e[38;5;66m\]!\[\e[38;5;132m\]!\[\e[0m\] \[\e[38;5;240;1;2;3m\]~\[\e[0m\] '
###==VIM==###
set -o vi # vim mode

# keybinds
bind -m vi-command '"$":end-of-line'
bind -m vi-command '"_":beginning-of-line'
bind -m vi-command 'i:vi-editing-mode'
bind -m vi-command 'a:vi-append-mode'

###=================###








