if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

PS1='\[$(tput bold)\]\[$(tput rev)\][\H \t \W]\[$(tput sgr0)\] '
GPG_TTY=$(tty)

# history
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups
HISTFILE="$XDG_CACHE_HOME/bash_history"

shopt -s autocd
shopt -s cdspell

alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias ll='ls -al'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias g='git'
alias rm='rm -I'

shopt -s autocd
shopt -s cdspell

bind 'set completion-ignore-case On'
