let g:CommandTMaxHeight = 10
"let g:CommandTHighlightColor = 'StatusLine'

autocmd! FileType "command-t" set laststatus=0
  \| autocmd BufLeave <buffer> set laststatus=2

nnoremap <silent><C-p> :CommandT<CR>
