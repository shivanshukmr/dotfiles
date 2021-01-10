syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set nocompatible
set path+=**
set wildmenu
set hidden
set nowrap
set ruler
set list listchars=nbsp:␣,tab:»·,trail:·,extends:>,precedes:<
set splitbelow splitright
set smarttab
set smartindent autoindent cindent
set undofile undodir=/tmp
set relativenumber
set showtabline=0
set noswapfile nobackup nowritebackup
set clipboard+=unnamedplus
set incsearch
set backspace=indent,eol,start
set wildignore+=*/.git,*/__pycache__,*/venv
set nojoinspaces
set sidescrolloff=5
set ttimeoutlen=10
set inccommand=nosplit
set ignorecase smartcase
set foldmethod=indent
set foldlevelstart=99

if has("termguicolors")
  set termguicolors
endif

" Not loading python(3) providers for faster startup time
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
