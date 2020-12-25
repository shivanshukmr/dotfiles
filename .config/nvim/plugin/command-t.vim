let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<Esc>']
let g:CommandTBackspaceMap=['<C-h>', '<BS>']
let g:CommandTCursorLeftMap=['<Left>']

augroup commandt_highlight
  autocmd!
  autocmd ColorScheme * hi User1 ctermfg=235 ctermbg=39 guifg=#282C34 guibg=#61AFEF
augroup END
let g:CommandTHighlightColor='User1'

autocmd! User CommandTWillShowMatchListing
autocmd User CommandTWillShowMatchListing set noruler laststatus=0
autocmd! User CommandTDidHideMatchListing
autocmd User CommandTDidHideMatchListing set ruler laststatus=2

nmap <silent><C-p> <Plug>(CommandT)
nmap <silent><C-h> <Plug>(CommandTHelp)
