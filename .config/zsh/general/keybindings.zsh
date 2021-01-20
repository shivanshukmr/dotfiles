bindkey -e

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line

# Make CTRL-Z background things and unbackground them.
function fg-bg() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}
zle -N fg-bg
bindkey '^Z' fg-bg

function up-widget() {
  BUFFER="cd .."
  zle accept-line
}
zle -N up-widget
bindkey '^[k' up-widget

function delete-path-section() {
  WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
  zle backward-kill-word
  WORDCHARS+='/'
}
zle -N delete-path-section
bindkey '^[^?' delete-path-section
