set guicursor=
set hidden nowrap
set list listchars=nbsp:_,tab:»·,trail:·,extends:>,precedes:<
set splitbelow splitright
set tabstop=4 softtabstop=-1 shiftwidth=0 smarttab
set smartindent autoindent cindent
set undofile undodir=/tmp
set relativenumber
set nobackup nowritebackup
set clipboard+=unnamedplus
set incsearch nohlsearch
set wildignorecase wildignore=*/.git/*,*/__pycache__/*,*/venv/*,*.o
set nojoinspaces noruler
set sidescrolloff=5
set ignorecase smartcase
set shortmess+=Ic
set laststatus=0
set foldmethod=indent foldlevelstart=99
set completeopt=menu
set virtualedit=block
set pumheight=13
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat^=%f:%l:%c:%m

let g:black_fast = 1
let g:black_quiet = 1

let g:netrw_banner=0
let g:loaded_python_provider=0
let g:python3_host_prog = '~/misc/neovim/pynvim/bin/python'

let g:gruvbox_filetype_hi_groups=1
set termguicolors
colorscheme gruvbox8_hard
