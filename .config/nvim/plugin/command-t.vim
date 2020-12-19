let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<Esc>']
let g:CommandTBackspaceMap=['<C-h>', '<BS>']
let g:CommandTCursorLeftMap = ['<Left>']

autocmd! User CommandTWillShowMatchListing
autocmd User CommandTWillShowMatchListing set noruler laststatus=0
autocmd! User CommandTDidHideMatchListing
autocmd User CommandTDidHideMatchListing set ruler laststatus=2

nmap <silent><C-p> <Plug>(CommandT)
nmap <silent><C-h> <Plug>(CommandTHelp)
