syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set nocompatible
set path+=**
set wildmenu
set hidden
set nowrap
set ruler
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>,precedes:<
set splitbelow splitright
set tabstop=4 shiftwidth=4 smarttab expandtab
set smartindent autoindent cindent
set undofile undodir=/tmp
set number relativenumber
set showtabline=0
set noswapfile nobackup nowritebackup
set clipboard+=unnamedplus
set incsearch
set backspace=indent,eol,start
set wildignore+=*/.git,*/__pycache__
set nojoinspaces
set sidescrolloff=5
set ttimeoutlen=10
set updatetime=300

if has("termguicolors")
  set termguicolors
endif

" Providers
" Python
let g:python3_host_prog = "/bin/python3"
