autoload -Uz add-zsh-hook

prompt_pwd () {
	echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}
STATUS_COLOR="12"
RPROMPT_COLOR="8"

preprompt_render() {
	local preprompt=""
	preprompt+="%K{#282828}"
	# directory
	preprompt+="%B%F{$STATUS_COLOR}$(prompt_pwd)%f%b"
	# jobs
	preprompt+="%(1j.%F{3}*%f.)"
	preprompt+="%k "

	PROMPT="$preprompt"
}

function auto-ls-after-cd() {
	emulate -L zsh
	# Only in response to a user-initiated `cd`, not indirectly (eg. via another
	# function).
	if [ "$ZSH_EVAL_CONTEXT" = "toplevel:shfunc" ]; then
		ls -a
	fi
}
add-zsh-hook chpwd auto-ls-after-cd

add-zsh-hook precmd preprompt_render
