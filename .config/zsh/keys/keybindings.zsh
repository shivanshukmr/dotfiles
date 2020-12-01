# vi mode
bindkey -v
export KEYTIMEOUT=1

# up
	function up_widget() {

		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
	bindkey "^k" up_widget

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

bindkey 'jk' vi-cmd-mode
bindkey 'kj' vi-cmd-mode
