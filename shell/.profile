[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$HOME/.local/bin:$PATH

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR="/tmp/$USER-runtime"
	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
fi

export HISTFILESIZE=5000
export HISTFILE="$XDG_CACHE_HOME/bash_history"
export HISTCONTROL=ignoreboth:erasedups

export EDITOR="nvim"

export FZF_DEFAULT_OPTS="-m --bind=ctrl-i:toggle --height=30% --info=hidden --prompt='>> ' --color='gutter:0,fg+:#121212,bg+:#83a598,pointer:#121212,hl:7:bold:underline,hl+:#121212,prompt:#928374:regular:italic,query::regular'"
export FZF_DEFAULT_COMMAND="git ls-files || find ."

# ~ cleanup:
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export XAUTHORITY="$XDG_DATA_HOME/x11/Xauthority"
export XDEB_PKGROOT="$XDG_DATA_HOME/xdeb"


[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && startx "$XDG_CONFIG_HOME/x11/xinitrc" 2>/tmp/.Xinit-errors
