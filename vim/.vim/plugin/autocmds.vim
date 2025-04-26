augroup filetypes
  autocmd!
  autocmd FileType vim,lua,html,css,javascript,typescript,typescriptreact setlocal ts=2 expandtab
  autocmd FileType man,qf setlocal nonumber
  autocmd FileType gitcommit setlocal spell nonumber
augroup END

if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd VimEnter,VimResume,BufEnter,BufWrite,Filetype * call config#tmux#build(v:false)
    autocmd FocusGained * call config#tmux#build(v:true)
    autocmd VimLeave,VimSuspend,FocusLost * call config#tmux#clear()
  augroup END
endif

" https://github.com/neovim/neovim/issues/9019
" FIXME: Fix hl-CursorLine priority issue (breaks diff)
function! s:CustomizeColors()
  if has('gui_running') || &termguicolors
    hi CursorLine ctermfg=white
  else
    hi CursorLine guifg=white
  endif
endfunction

augroup OnColorScheme
  autocmd!
  autocmd ColorScheme * call s:CustomizeColors()
augroup END
