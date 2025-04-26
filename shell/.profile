export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:$HOME/.local/share/go/bin

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR="/tmp/$USER-runtime"
	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
fi

export EDITOR="vim"
export SVDIR="$XDG_DATA_HOME/service"

# ~ cleanup:
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export MAVEN_OPTS=-Dmaven.repo.local="$XDG_DATA_HOME/maven/repository"
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
export NPM_CONFIG_USERCONFIG="XDG_CONFIG_HOME/npm/npmrc"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo":/usr/share/terminfo 
export MESA_SHADER_CACHE_DIR="$XDG_CACHE_HOME/mesa_shader_cache_db"

# misc
export FZF_DEFAULT_OPTS="-m --bind=ctrl-i:toggle --height=40% --border=rounded --info=right --prompt='» ' --pointer='' --no-scrollbar --color='gutter:0,fg+:#121212,bg+:#83a598,pointer:#121212,hl:7:bold:underline,hl+:#121212,prompt:#928374:regular,query::regular'"
export FZF_DEFAULT_COMMAND="git ls-files -co --exclude-standard || find \( -name node_modules -o -name .git \) -prune -o -type f"

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && startx "$XDG_CONFIG_HOME/x11/xinitrc" 2>/tmp/.Xinit-errors

[[ -f ~/.bashrc ]] && . ~/.bashrc
