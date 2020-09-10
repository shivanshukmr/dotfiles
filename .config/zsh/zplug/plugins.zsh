ZPLUG_PROTOCOL=ssh
ZPLUG_HOME=$HOME/.config/zsh/zplug/.zplug
ZPLUG_CACHE_DIR=$HOME/.cache/zsh/zplug

source $ZPLUG_HOME/init.zsh
#=======================PLUGINS=================================

zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-autosuggestions"

#===============================================================

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load
