# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Case Insensitive auto-completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'

HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8

# cd -> cd + ls
chpwd() ls -a 

# History in cache directory:
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Don't repeat commands in history
setopt HIST_IGNORE_ALL_DUPS

# vi mode
bindkey -v
export KEYTIMEOUT=1

# cd is not requried
setopt autocd

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source $ZDOTDIR/plug-config/fzf.zsh
