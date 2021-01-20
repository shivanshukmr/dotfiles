" DO - 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-c>', '<ESC>']
let g:CommandTScanDotDirectories=1

autocmd! User CommandTWillShowMatchListing
autocmd User CommandTWillShowMatchListing set noruler
autocmd! User CommandTDidHideMatchListing
autocmd User CommandTDidHideMatchListing set ruler

nmap <silent><C-p> <Plug>(CommandT)
nmap <silent><C-h> <Plug>(CommandTHelp)
