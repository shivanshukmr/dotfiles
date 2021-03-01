HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8

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

autoload -Uz zcalc
