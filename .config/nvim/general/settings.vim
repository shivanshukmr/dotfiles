syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,noinsert,noselect,preview
set nocompatible
set guicursor=
set path+=**                            " Recursively search inside files
set wildmenu
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set ruler              			        " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cindent
set laststatus=2                        " Don't show Statusline
set number                              " Line numbers
set relativenumber                      " Set relative numbering
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Don't show tabs 
set noswapfile                          " No Swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamedplus
set incsearch
set backspace=indent,eol,start
set noshowmode
set wildignore+=*/.git,*/__pycache__

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
function! Filetypename()
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

if has("termguicolors")
  set termguicolors
endif

" Providers
" Python
let g:python3_host_prog = "/bin/python3"
