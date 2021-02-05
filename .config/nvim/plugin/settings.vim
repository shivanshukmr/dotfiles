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
if has('win32')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
set incsearch
set backspace=indent,eol,start
set wildignore+=*/.git,*/__pycache__,*/venv,*.o
set nojoinspaces
set sidescrolloff=5
set ignorecase smartcase
set laststatus=0
set updatetime=300
set shortmess+=I
set pumheight=13
if executable('rg')
  set grepprg=rg\ --vimgrep\ --smart-case
  set grepformat^=%f:%l:%c:%m
endif

if has('termguicolors')
  set termguicolors
endif

let g:netrw_banner=0

" Not loading python(3) providers for faster startup time
let g:loaded_python_provider=0
let g:loaded_python3_provider=0

colorscheme onedark
