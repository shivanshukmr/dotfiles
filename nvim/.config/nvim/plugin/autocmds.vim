augroup deinhooks
  autocmd!
  autocmd VimEnter * call dein#call_hook('post_source')
augroup END

augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
augroup END

if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd BufEnter,BufWrite,Filetype * lua require'config.tmux'.build()
    autocmd FocusGained * lua require'config.tmux'.build(1)
    autocmd VimLeave,VimSuspend,FocusLost * lua require'config.tmux'.clear()
  augroup END
endif
