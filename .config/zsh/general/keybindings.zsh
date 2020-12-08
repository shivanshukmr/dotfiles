# vi mode
bindkey -v
export KEYTIMEOUT=25

# up
function up_widget() {
    BUFFER="cd .."
    zle accept-line
}
zle -N up_widget
bindkey "^k" up_widget

# easy esc
bindkey "jk" vi-cmd-mode
bindkey "kj" vi-cmd-mode

bindkey -M viins "^R" history-incremental-search-backward
bindkey -M vicmd "^R" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

bindkey -M viins "^A" beginning-of-line
bindkey -M viins "^E" end-of-line

bindkey -v "^h" backward-delete-char
bindkey -v "^?" backward-delete-char
