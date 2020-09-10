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

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# cd is not requried
setopt autocd

# FZF includes hidden files
export FZF_DEFAULT_COMMAND='rg --files --hidden'
