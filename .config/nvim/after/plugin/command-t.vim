" DO - 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-C>', '<ESC>']
let g:CommandTScanDotDirectories=1

autocmd! User COMMANDTWILLSHOWMATCHLISTING
autocmd User COMMANDTWILLSHOWMATCHLISTING set noruler
autocmd! User COMMANDTDIDHIDEMATCHLISTING
autocmd User COMMANDTDIDHIDEMATCHLISTING set ruler

nmap <silent> <C-P> <Plug>(CommandT)
nmap <silent> <C-H> <Plug>(CommandTHelp)
