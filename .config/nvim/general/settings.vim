syntax on
filetype plugin indent on
set guicursor=
set nocompatible
set path+=**
set wildmenu
set hidden nowrap ruler
set list listchars=nbsp:_,tab:»·,trail:·,extends:>,precedes:<
set splitbelow splitright
set tabstop=2 shiftwidth=2 expandtab smarttab
set smartindent autoindent cindent
set undofile undodir=/tmp
set relativenumber
set showtabline=0
set noswapfile nobackup nowritebackup
set clipboard=unnamedplus
set incsearch
set backspace=indent,eol,start
set wildignore+=*/.git,*/__pycache__,*/venv
set nojoinspaces
set sidescrolloff=5
set ignorecase smartcase
set laststatus=0
set statusline=%<%=%-14.(%l,%c%V%)\ %P
set updatetime=50
set signcolumn=no

if has('termguicolors')
  set termguicolors
endif

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

" Not loading python(3) providers for faster startup time
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
