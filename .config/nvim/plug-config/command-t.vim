let g:CommandTMaxHeight = 10
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<Esc>']
let g:CommandTBackspaceMap=['<C-h>', '<BS>']
let g:CommandTCursorLeftMap = ['<Left>']

autocmd! FileType command-t setlocal laststatus=0

nnoremap <silent><C-p> :CommandT<CR>
