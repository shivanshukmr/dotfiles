set guicursor=
set hidden nowrap
set list listchars=nbsp:_,tab:»\ ,trail:·,extends:>,precedes:<
set splitbelow splitright
set tabstop=4 softtabstop=-1 shiftwidth=0
set autoindent cindent
set undofile undodir=/tmp
set number
set nobackup nowritebackup
set incsearch
set wildignorecase wildignore=*/.git/*,*/__pycache__/*,*/venv/*,*.o
set nojoinspaces noruler
set sidescrolloff=5
set ignorecase smartcase
set shortmess+=Ic
set signcolumn=number
set fillchars=eob:\ ,
set foldmethod=indent foldlevelstart=99
set lazyredraw
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat^=%f:%l:%c:%m
set completeopt=menu
set virtualedit=block
set pumheight=13
set diffopt+=context:3,indent-heuristic,algorithm:patience
set tabline=%!config#tabline#line()
set termguicolors
set statusline=%=%#Todo#%{&ft}%*\ %f\  laststatus=2
set inccommand=nosplit
set mouse=a

if exists('$TMUX')
  set laststatus=0  " statusline configured in tmux
endif

let g:gruvbox_filetype_hi_groups=1
colorscheme gruvbox8

if &diff
  syntax off
  set nolist
endif

let g:netrw_banner=0
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
