set laststatus=2
set noshowmode

let g:currentmode={
      \ 'n'  : '<N> ',
      \ 'v'  : '<V> ',
      \ 'V'  : '<Vl> ',
      \ '' : '<Vb> ',
      \ 'i'  : '<I> ',
      \ 't'  : '<I> ',
      \ 'R'  : '<R> ',
      \ 'Rv' : '<VR> ',
      \ 'c'  : '<C> ',
      \}
function! Filetypename() abort
  return toupper(&filetype[0]) . &filetype[1:]
endfunction

set statusline=
set statusline=\ %{g:currentmode[mode()]}
set statusline+=\ 
set statusline+=%{&modified?'*\ ':''}
set statusline+=%t
set statusline+=\ 
set statusline+=\ 
set statusline+=%l:%c
set statusline+=\ 
set statusline+=%P
set statusline+=%=
set statusline+=%{(fugitive#head()==''?'':'@').fugitive#head()}
set statusline+=\ 
set statusline+=%{Filetypename()}
set statusline+=\ 
