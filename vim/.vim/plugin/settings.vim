set guicursor=
set hidden nowrap
set list listchars=nbsp:_,tab:»\ ,trail:·,extends:>,precedes:<
set softtabstop=-1 shiftwidth=0
set autoindent cindent
set undofile undodir=$XDG_RUNTIME_DIR,.
set directory=$XDG_RUNTIME_DIR,/tmp,.
set number
set showcmd
set cursorline cursorlineopt=number
set nobackup nowritebackup
set incsearch hlsearch
set wildignorecase wildignore=*/.git/*,*/__pycache__/*,*/venv/*,*.o
set nojoinspaces noruler
set sidescrolloff=5
set ignorecase smartcase
set shortmess-=S
set fillchars=eob:\ ,vert:\│,fold:\·,
set foldmethod=syntax foldlevelstart=99
set lazyredraw
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat^=%f:%l:%c:%m
set completeopt=menu pumheight=13
set virtualedit=block
set diffopt+=context:3,indent-heuristic,algorithm:patience
set statusline=%=%#Todo#%{&ft}%*\ %f\  laststatus=2
set wildmenu wildoptions=
set ttimeoutlen=50
set history=10000
set keywordprg=:Man
set mouse=a

if !has('nvim')
  set ttymouse=sgr
  set viminfofile=~/.cache/viminfo
endif

if has('nvim')
  set undodir=/tmp,.
endif

if exists('$TMUX')
  set laststatus=0  " statusline configured in tmux
endif

if &diff
  syntax off
  set nolist
endif

" bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\<Esc>[200~"
let &t_PE = "\<Esc>[201~"

" focus events
let &t_fe = "\<Esc>[?1004h"
let &t_fd = "\<Esc>[?1004l"

" colorscheme
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups=1
set termguicolors
colorscheme gruvbox8

let g:netrw_banner=0
let g:loaded_python_provider=0
let g:loaded_python3_provider=0
