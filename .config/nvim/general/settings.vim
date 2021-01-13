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
set expandtab smarttab
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
set inccommand=nosplit
set ignorecase smartcase
set foldmethod=indent
set foldlevelstart=99
set laststatus=0
set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr:hor20  " so cursor doesn't change it's shape in operator pending mode(which gives weird flickering for 'x' command)
set statusline=%<%=%-14.(%l,%c%V%)\ %P

if has("termguicolors")
  set termguicolors
endif

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

" Not loading python(3) providers for faster startup time
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
