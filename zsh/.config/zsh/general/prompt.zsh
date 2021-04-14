autoload -Uz add-zsh-hook

prompt_pwd () {
	echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}
STATUS_COLOR="12"
RPROMPT_COLOR="8"

preprompt_render() {
	local preprompt=""
	# directory
	preprompt+="%B%F{$STATUS_COLOR}$(prompt_pwd)%f%b"
	# jobs
	preprompt+="%(1j.%F{3}*%f.)"
	preprompt+=" "

	PROMPT="$preprompt"

	psvar[12]="${VIRTUAL_ENV:t}"

	local rprompt=""
	# virtual env
	rprompt+="%F{$RPROMPT_COLOR}%(12V. %12v.)%f"

	RPROMPT="$rprompt"
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
