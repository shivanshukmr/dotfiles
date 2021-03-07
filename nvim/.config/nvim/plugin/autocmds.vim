augroup general
  autocmd!
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

augroup commandt
  autocmd!
  autocmd User CommandTWillShowMatchListing set noruler
  autocmd User CommandTDidHideMatchListing set ruler
augroup END
