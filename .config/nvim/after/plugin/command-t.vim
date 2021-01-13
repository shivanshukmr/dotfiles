" DO - 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-c>', '<Esc>']
let g:CommandTScanDotDirectories=1

nmap <silent><C-p> <Plug>(CommandT)
nmap <silent><C-h> <Plug>(CommandTHelp)
