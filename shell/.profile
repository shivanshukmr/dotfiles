export PATH=$HOME/.local/bin:$PATH

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR="/tmp/$USER-runtime"
	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
fi

export EDITOR="vim"
export SVDIR="$XDG_DATA_HOME/service"

# ~ cleanup:
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export XAUTHORITY="$XDG_DATA_HOME/x11/Xauthority"
export XDEB_PKGROOT="$XDG_DATA_HOME/xdeb"
export CALCHISTFILE="$XDG_CACHE_HOME/calc_history"
export PYTHON_HISTORY="$XDG_CACHE_HOME/python/history"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export PGDATA="$XDG_DATA_HOME/pgdata"
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

# misc
export FZF_DEFAULT_OPTS="-m --bind=ctrl-i:toggle --height=30% --info=hidden --prompt='>> ' --color='gutter:0,fg+:#121212,bg+:#83a598,pointer:#121212,hl:7:bold:underline,hl+:#121212,prompt:#928374:regular:italic,query::regular'"
export FZF_DEFAULT_COMMAND="git ls-files -c || find . -type f"

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && startx "$XDG_CONFIG_HOME/x11/xinitrc" 2>/tmp/.Xinit-errors

[[ -f ~/.bashrc ]] && . ~/.bashrc
