autoload -U colors
colors

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{green}*%f" # default 'S'
zstyle ':vcs_info:*' unstagedstr "%F{red}*%f" # default 'U'
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:git+set-message:*' hooks git-untracked
zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
zstyle ':vcs_info:git*:*' actionformats '[%b|%a%m%c%u] ' # default ' (%s)-[%b|%a]%c%u-'

function +vi-git-untracked() {
  emulate -L zsh
  if [[ -n $(git ls-files --exclude-standard --others 2> /dev/null) ]]; then
    hook_com[unstaged]+="%F{blue}*%f"
  fi
}

RPROMPT_BASE="\${vcs_info_msg_0_}%F{#878e9f}%~%f"
setopt PROMPT_SUBST

# Anonymous function to avoid leaking NBSP variable.
function () {
  if [[ $EUID -eq 0 ]]; then
    local SUFFIX=$(printf '\#%.0s')
  else
    local SUFFIX=$(printf '\$%.0s')
  fi
  # Don't bother with ZLE_RPROMPT_INDENT here, because it ends up eating the
  # space after PS1.
  export PS1="%F{green}${SSH_TTY:+%n@%m}%f${SSH_TTY:+:}%F{blue}%1d%F{yellow}%(1j.*.)%(?..!)%f%F{red}${SUFFIX}%f "
}

export RPROMPT=$RPROMPT_BASE
export SPROMPT="zsh: correct %F{red}'%R'%f to %F{red}'%r'%f [%Bnyae%b]? "

# Hooks
autoload -U add-zsh-hook

function auto-ls-after-cd() {
  emulate -L zsh
  # Only in response to a user-initiated `cd`, not indirectly (eg. via another
  # function).
  if [ "$ZSH_EVAL_CONTEXT" = "toplevel:shfunc" ]; then
    ls -a
  fi
}
add-zsh-hook chpwd auto-ls-after-cd

# for prompt
add-zsh-hook precmd vcs_info
