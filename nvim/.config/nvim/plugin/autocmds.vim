augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
augroup END

function! TransparentBg() abort
  if &bg ==# 'dark'
    hi Normal ctermbg=NONE guibg=NONE
  endif
endfunction

augroup tmux_bg
  autocmd!
  autocmd ColorScheme gruvbox8 call TransparentBg()
augroup END
