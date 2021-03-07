set guicursor=
set hidden nowrap
set list listchars=nbsp:_,tab:»·,trail:·,extends:>,precedes:<
set splitbelow splitright
set tabstop=4 shiftwidth=4 smarttab
set smartindent autoindent cindent
set undofile undodir=/tmp
set relativenumber
set nobackup nowritebackup
set clipboard+=unnamedplus
set incsearch nohlsearch
set wildignorecase wildignore=*/.git/*,*/__pycache__/*,*/venv/*,*.o
set nojoinspaces
set sidescrolloff=5
set ignorecase smartcase
set shortmess-=F shortmess+=Ic
set laststatus=0
set cursorline
set foldmethod=indent foldlevelstart=99
set completeopt=menu
set virtualedit=block
set pumheight=13
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat^=%f:%l:%c:%m
command -nargs=+ -complete=file -bar Rg silent! grep! <args>|cwindow|redraw!

let g:netrw_banner=0

" Not loading python(3) providers for faster startup time
let g:loaded_python_provider=0
let g:loaded_python3_provider=0

let g:gruvbox_filetype_hi_groups=1
set termguicolors
colorscheme gruvbox8_hard
