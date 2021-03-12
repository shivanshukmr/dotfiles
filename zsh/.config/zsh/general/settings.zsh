HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8

# History in cache directory:
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=100000
SAVEHIST=100000

setopt autocd
setopt histignorealldups
setopt histfindnodups
setopt listpacked
setopt correct
setopt noflowcontrol

autoload -Uz zcalc
