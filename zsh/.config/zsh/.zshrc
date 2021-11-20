# vim: fdm=marker fdl=0
# ENVS {{{
export GPG_TTY=$(tty)
# }}}

# ALIASES {{{
alias ls="ls --color=auto --group-directories-first"
alias la="ls -a"
alias ll="ls -al"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias vim="nvim"
alias g="git"
# }}}

# COMPLETION {{{
# Case Insensitive auto-completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
	'+l:|?=** r:|?=**'

# Make completion:
# - Try exact (case-sensitive) match first.
# - Then fall back to case-insensitive.
# - Accept abbreviations after . or _ or - (ie. f.b -> foo.bar).
# - Substring complete (ie. bar -> foobar).
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Allow completion of ..<Tab> to ../ and beyond.
zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(..) ]] && reply=(..)'

# $CDPATH is overpowered (can allow us to jump to 100s of directories) so tends
# to dominate completion; exclude path-directories from the tag-order so that
# they will only be used as a fallback if no completions are found.
zstyle ':completion:*:complete:(cd|pushd):*' tag-order 'local-directories named-directories'

# Categorize completion suggestions with headings:
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %F{default}%B%{$__GENERAL[ITALIC_ON]%}--- %d ---%{$__GENERAL[ITALIC_OFF]%}%b%f

setopt glob_dots
# }}}

# PROMPT {{{
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
# }}}

# SETTINGS {{{
HYPHEN_INSENSITIVE="true"

# History in cache directory:
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd
setopt histignorealldups
setopt histfindnodups
setopt listpacked
setopt correct
setopt noflowcontrol
setopt printexitvalue
setopt sharehistory

autoload -Uz zcalc
# }}}

# KEYBINDINGS {{{
bindkey -e
WORDCHARS+=':'

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line

# Make CTRL-Z (un)background things
function fg-bg() {
	if [[ $#BUFFER -eq 0 ]]; then
		fg
	else
		zle push-input
	fi
}
zle -N fg-bg
bindkey '^Z' fg-bg

function delete-path-component() {
	WORDCHARS='*?_-.[]~&;!#$%^(){}<>'
	zle backward-kill-word
	WORDCHARS+='/:='
}
zle -N delete-path-component
bindkey '^[^?' delete-path-component

# Different terminal emulators interpret key codes differently
# Alacritty fix
bindkey '^[^A' beginning-of-line
bindkey '^[^B' backward-char
# }}}
