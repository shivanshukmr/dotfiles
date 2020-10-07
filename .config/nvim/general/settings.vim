" set leader key
let mapleader = " "

syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set ruler              			        " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cindent
" set cursorline                          " Hightlight current line
set laststatus=0                        " Don't show Statusline
set number                              " Line numbers
set relativenumber                      " Set relative numbering
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Don't show tabs 
set noswapfile                          " No Swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch                           " Incremental search is good
set scrolloff=7

"  Get gitbranch
"function! GitBranch() abort
"    if fugitive#head()==''
"        return ''
"    else
"        return '['.fugitive#head().']'
"    endif
"endfunction
"
"" Set Statusline
"set statusline=
"set statusline+=\ 
"set statusline+=%#PmenuSel#
"set statusline+=%{GitBranch()}
"set statusline+=%#StatusLine#
"set statusline+=\ 
"set statusline+=%=
"set statusline+=\ %y
"set statusline+=\ %l:%c
"set statusline+=\ 
