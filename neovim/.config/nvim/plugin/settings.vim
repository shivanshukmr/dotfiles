set guicursor=
set hidden nowrap
set list listchars=nbsp:_,tab:»\ ,trail:·,extends:>,precedes:<
set tabstop=4 softtabstop=-1 shiftwidth=0
set autoindent cindent
set undofile undodir=$XDG_RUNTIME_DIR,/tmp,.
set directory=$XDG_RUNTIME_DIR,/tmp,.
set number
set nobackup nowritebackup
set incsearch hlsearch
set wildignorecase wildignore=*/.git/*,*/__pycache__/*,*/venv/*,*.o
set nojoinspaces noruler
set sidescrolloff=5
set ignorecase smartcase
set shortmess+=I shortmess-=S
set fillchars=eob:\ ,vert:\│,fold:\·,
set foldmethod=indent foldlevelstart=99
set lazyredraw
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat^=%f:%l:%c:%m
set completeopt=menu pumheight=13
set virtualedit=block
set diffopt+=context:3,indent-heuristic,algorithm:patience
set statusline=%=%#Todo#%{&ft}%*\ %f\  laststatus=2
set mouse=a
set wildmenu wildoptions=
set ttimeoutlen=50
set history=10000
set keywordprg=:Man

if has('nvim')
  set inccommand=nosplit
endif

if exists('$TMUX')
  set laststatus=0  " statusline configured in tmux
endif

" focus events
let &t_fe = "\<Esc>[?1004h"
let &t_fd = "\<Esc>[?1004l"

" true color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups = 1
set termguicolors
colorscheme gruvbox8

if &diff
  syntax off
  set nolist
endif

let g:netrw_banner=0
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
