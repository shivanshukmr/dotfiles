augroup deinhooks
  autocmd!
  autocmd VimEnter * call dein#call_hook('post_source')
augroup END

augroup filetypes
  autocmd!
  autocmd FileType vim,lua setlocal tabstop=2 expandtab
augroup END
