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
