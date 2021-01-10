" PACKAGES
if &loadplugins
  if has('packages')
    packadd! nvim-lspconfig
    packadd! completion-nvim
    packadd! vim-polyglot
    packadd! onedark.vim
    packadd! vim-fugitive
    packadd! vim-sneak
    packadd! command-t
    packadd! ferret
    packadd! vim-commentary
    packadd! vim-surround
    packadd! vim-buftabline
    packadd! ReplaceWithRegister
  endif
endif

" SETTINGS
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
set tabstop=4 shiftwidth=4 smarttab expandtab
set smartindent autoindent cindent
set undofile undodir=/tmp
set number relativenumber
set showtabline=0
set noswapfile nobackup nowritebackup
set clipboard+=unnamedplus
set incsearch
set backspace=indent,eol,start
set wildignore+=*/.git,*/__pycache__,*/venv
set nojoinspaces
set sidescrolloff=5
set ttimeoutlen=10
set updatetime=250
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

" STATUSLINE
set laststatus=2
set noshowmode

let g:currentmode={
      \ 'n'  : '<N> ',
      \ 'v'  : '<V> ',
      \ 'V'  : '<Vl> ',
      \ '' : '<Vb> ',
      \ 'i'  : '<I> ',
      \ 't'  : '<I> ',
      \ 'R'  : '<R> ',
      \ 'Rv' : '<VR> ',
      \ 'c'  : '<C> ',
      \ 's'  : '<S> ',
      \}

function! Filetypename() abort
  return toupper(&filetype[0]) . &filetype[1:]
endfunction

set statusline=
set statusline=\ %{g:currentmode[mode()]}
set statusline+=\ 
set statusline+=%{&modified?'*\ ':''}
set statusline+=%f
set statusline+=\ 
set statusline+=\ 
set statusline+=%l:%c
set statusline+=\ 
set statusline+=%P
set statusline+=%=
set statusline+=%{(fugitive#head()==''?'':'@').fugitive#head()}
set statusline+=\ 
set statusline+=%{Filetypename()}
set statusline+=\ 

" AUTOCMDS
augroup Generalautocmds
  autocmd!
  if exists('##TextYankPost') && has('nvim')
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({"IncSearch", 50})
  endif

  " Terminal
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" MAPPINGS/LEADER
" Set leader key
let mapleader = " "

" Quit
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <silent><leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

vnoremap <leader>h <C-w>h
vnoremap <leader>j <C-w>j
vnoremap <leader>k <C-w>k
vnoremap <leader>l <C-w>l

" Move current window
nnoremap <silent><leader>H <C-w>H
nnoremap <silent><leader>J <C-w>J
nnoremap <silent><leader>K <C-w>K
nnoremap <silent><leader>L <C-w>L

vnoremap <silent><leader>H <C-w>H
vnoremap <silent><leader>J <C-w>J
vnoremap <silent><leader>K <C-w>K
vnoremap <silent><leader>L <C-w>L

" Close all windows except the current one
nnoremap <leader>o :only<CR>

" All windows equal sizes
nnoremap <leader>= <C-w>=

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" No highlight
nnoremap <silent><leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent><leader>x :bdelete<CR>

nnoremap <silent><leader>ts :split<CR>:terminal<CR>i
nnoremap <silent><leader>tv :vsplit<CR>:terminal<CR>i
nnoremap <silent><leader>tt :terminal<CR>i

" MAPPINGS/NORMAL
" C-j and C-k in normal mode will move text buffer
nnoremap <silent><C-k> :bnext<CR>
nnoremap <silent><C-j> :bprevious<CR>

nnoremap Y y$

" Store relative line number jumps in the jumplist if they exceed a threshold
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Traverse quickfix list with arrow keys
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Traverse location list with shift+arrow keys
nnoremap <silent> <S-Up> :lprevious<CR>
nnoremap <silent> <S-Down> :lnext<CR>
nnoremap <silent> <S-Left> :lpfile<CR>
nnoremap <silent> <S-Right> :lnfile<CR>

" MAPPINGS/INSERT
inoremap jk <Esc>
inoremap kj <Esc>

" Readline binds
inoremap <C-a> <Home>
inoremap <C-e> <End>

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

inoremap <expr> ) matchstr(getline('.'), '\%' . col('.') . 'c.') == ')' ? '<Right>' : ')'
inoremap <expr> ] matchstr(getline('.'), '\%' . col('.') . 'c.') == ']' ? '<Right>' : ']'
inoremap <expr> } matchstr(getline('.'), '\%' . col('.') . 'c.') == '}' ? '<Right>' : '}'
inoremap <expr> " matchstr(getline('.'), '\%' . col('.') . 'c.') == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' matchstr(getline('.'), '\%' . col('.') . 'c.') == "'" ? '<Right>' : "''<Left>"
inoremap <expr> <CR> matchstr(getline('.'), '\%' . col('.') . 'c.') == '}' ? '<Space><BS><CR><Space><BS><CR><Esc>ka<Tab>' : '<Space><BS><CR>'

function! TabMapping()
  if pumvisible()
    return "\<C-n>"
  elseif getline('.')[col('.')-1] =~? '[]>)}''"`]'
    return "\<Right>"
  else
    return "\<TAB>"
  endif
endfunction

inoremap <expr> <Tab> TabMapping()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Easy esc
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

" MAPPINGS/COMMAND
" Readline like binds
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

cnoremap <C-l> <Right>
cnoremap <M-l> <C-Right>
cnoremap <C-h> <Left>
cnoremap <M-h> <C-Left>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<Up>"
cnoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Down>"

" NETRW
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

nnoremap <silent> - :Explore<CR>
