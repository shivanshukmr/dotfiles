# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Load colors
autoload -U colors && colors

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
setopt autocd
