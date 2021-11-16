augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
augroup END

if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd BufEnter,BufWrite,Filetype,VimEnter * call config#tmux#build(v:false)
    autocmd FocusGained * call config#tmux#build(v:true)
    autocmd VimLeave,VimSuspend,FocusLost * call config#tmux#clear()
  augroup END

  augroup tmux_bg
    autocmd!
    autocmd ColorScheme gruvbox8 call TransparentBg()
  augroup END

  function! TransparentBg() abort
    if &bg ==# 'dark'
      hi Normal ctermbg=NONE guibg=NONE
    endif
  endfunction
endif
