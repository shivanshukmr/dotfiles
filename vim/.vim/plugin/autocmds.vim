augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
  autocmd FileType man setlocal nonumber
  autocmd FileType html,css,javascript setlocal tabstop=4 expandtab
augroup END

if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd VimEnter,VimResume,BufEnter,BufWrite,Filetype * call config#tmux#build(v:false)
    autocmd FocusGained * call config#tmux#build(v:true)
    autocmd VimLeave,VimSuspend,FocusLost * call config#tmux#clear()
  augroup END
endif
