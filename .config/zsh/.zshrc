# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/shivanshukmr/.config/zsh/general/settings.zsh
source /home/shivanshukmr/.config/zsh/general/aliases.zsh
source /home/shivanshukmr/.config/zsh/keys/keybindings.zsh
source /home/shivanshukmr/.config/zsh/zplug/plugins.zsh
source /home/shivanshukmr/.config/zsh/.p10k.zsh
