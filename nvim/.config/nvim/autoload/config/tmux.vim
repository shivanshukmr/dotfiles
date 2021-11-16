function! config#tmux#clear() abort
  call system('tmux set status-right ""')
endfunction

function! config#tmux#build(delay) abort
  if has('vim_starting') == 1 || &buftype ==# 'nofile'
    return
  endif

  let job='tmux set status-right "#[fg=white,bold,italics]' . &ft . ' #[default]' . expand('%:~:.') . ' "'
  if a:delay == v:true
    sleep 15m
    call jobstart(job)
  else
    call jobstart(job)
  endif
endfunction
