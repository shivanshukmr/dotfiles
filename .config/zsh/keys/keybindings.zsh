# up
	function up_widget() {

		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
	bindkey "^k" up_widget

# Home - Navigates to the current root workspace
	function home_widget() {
		
		BUFFER="cd ~"
		zle accept-line
	}
	zle -N home_widget 
	bindkey "^h" home_widget
