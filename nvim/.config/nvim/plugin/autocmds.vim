augroup deinhooks
  autocmd!
  autocmd VimEnter * call dein#call_hook('post_source')
augroup END

augroup commandt
  autocmd!
  autocmd User CommandTWillShowMatchListing set noruler
  autocmd User CommandTDidHideMatchListing set ruler
augroup END
