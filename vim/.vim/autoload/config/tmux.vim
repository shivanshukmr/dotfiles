function! config#tmux#clear() abort
  call system('tmux set status-right ""')
endfunction

" Incompatible APIs, smh
function! s:jobstart(job) abort
  if has('nvim')
    call jobstart(a:job)
  else
    call job_start(a:job)
  endif
endfunction

function! config#tmux#build(delay) abort
  if has('vim_starting') == 1 || &buftype ==# 'terminal'
    return
  endif

  if a:delay " delay on FocusGained event so another vim instance can clear the status
    sleep 15m
  endif

  let job='tmux set status-right "#[fg=white,bold,italics]' . &ft . ' #[default]' . expand('%:~:.') . ' "'
  call s:jobstart(job)
endfunction
