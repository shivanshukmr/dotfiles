augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
  autocmd FileType man setlocal nonumber
augroup END

if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd BufEnter,BufWrite,Filetype,VimEnter * call config#tmux#build(v:false)
    autocmd FocusGained * call config#tmux#build(v:true)
    autocmd VimLeave,VimSuspend,FocusLost * call config#tmux#clear()
  augroup END
endif
