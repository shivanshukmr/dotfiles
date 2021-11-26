if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Env {{{
PS1='\[$(tput bold)\]\[$(tput rev)\][\H \t \W]\[$(tput sgr0)\] '
export GPG_TTY=$(tty)
# }}}

# Options {{{
shopt -s autocd
# }}}

# Aliases {{{
alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias ll='ls -al'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias vim='nvim'
alias g='git'
# }}}

# Keybinds {{{
bind 'set completion-ignore-case On'
# }}}
# vim: fdm=marker
