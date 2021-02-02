HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8

# History in cache directory:
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000

setopt auto_cd
setopt histignorealldups
setopt histignoredups
setopt histsavenodups
setopt hist_find_no_dups    # don't show duplicates when searching
setopt list_packed          # make completion lists more densly packaed
setopt correct              # command auto-correction
setopt correctall           # argument auto-correction
setopt no_nomatch           # unmatched patterns are left unchanged

autoload -Uz zcalc
