augroup deinhooks
  autocmd!
  autocmd VimEnter * call dein#call_hook('post_source')
augroup END

if !empty($TMUX)
  augroup tmuxstatus
    autocmd!
    autocmd BufEnter * lua require'custom.tmux'.build()
    autocmd CursorMoved,CursorMovedI * lua require'custom.tmux'.build(1)
    autocmd FocusGained * lua require'custom.tmux'.build(2)
    autocmd VimLeave,VimSuspend,FocusLost * lua require'custom.tmux'.clear()
  augroup END
endif
