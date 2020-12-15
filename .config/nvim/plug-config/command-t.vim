let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<Esc>']
let g:CommandTBackspaceMap=['<C-h>', '<BS>']
let g:CommandTCursorLeftMap = ['<Left>']

autocmd! User CommandTWillShowMatchListing
autocmd User CommandTWillShowMatchListing set laststatus=0
autocmd! User CommandTDidHideMatchListing
autocmd User CommandTDidHideMatchListing set laststatus=2

nnoremap <silent><C-p> :CommandT<CR>
