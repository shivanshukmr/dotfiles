" PLUGINS
call plug#begin('~/.local/share/nvim/plugged')
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " OneDark
    Plug 'joshdick/onedark.vim'
    " Git Integration
    Plug 'mhinz/vim-signify'
    " Vim Fugitive
    Plug 'tpope/vim-fugitive'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Auto Pairs
    Plug 'jiangmiao/auto-pairs'
    " NeovimLSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    " Command-T
    Plug 'wincent/command-t', {
        \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
        \ }
    " Commentary
    Plug 'tpope/vim-commentary'
    " Surround
    Plug 'tpope/vim-surround'

call plug#end()

" SETTINGS
syntax on
filetype plugin on
set nocompatible
set guicursor=
set path+=**                            " Recursively search inside files
set wildmenu
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set ruler              			        " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cindent
set laststatus=2                        " Don't show Statusline
set number                              " Line numbers
set relativenumber                      " Set relative numbering
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Don't show tabs 
set noswapfile                          " No Swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamedplus
set incsearch
"set scrolloff=7
set backspace=indent,eol,start
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
       \}
function! Filetypename()
    return toupper(&filetype[0]) . &filetype[1:]
endfunction

set statusline=
set statusline=\ %{g:currentmode[mode()]}
set statusline+=\ 
set statusline+=%{&modified?'*\ ':''}
set statusline+=%t
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

if has("termguicolors")
  set termguicolors
endif


if exists('##TextYankPost')
  autocmd TextYankPost * silent : lua require'vim.highlight'.on_yank({"IncSearch", 50})
endif

" NETRW
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

nnoremap <silent><C-n> :Vex<CR>

" MAPPINGS
" ======GENERAL======

" set leader key
let mapleader = " "

inoremap jk <Esc>
inoremap kj <Esc>

cnoremap jk <Esc>
cnoremap kj <Esc>

" C-j and C-k in normal mode will move text buffer
nnoremap <silent><C-k> :bnext<CR>
nnoremap <silent><C-j> :bprevious<CR>

" Quit
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

nnoremap Y y$

noremap ; :
noremap : ;

" ======WINDOWS======

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Better window navigation
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Move current window
nnoremap <silent><leader>H :wincmd H<CR>
nnoremap <silent><leader>J :wincmd J<CR>
nnoremap <silent><leader>K :wincmd K<CR>
nnoremap <silent><leader>L :wincmd L<CR>

" Splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" Close all windows except the current one
nnoremap <Leader>o :only<CR>

" All windows equal sizes 
nnoremap <Leader>= <C-w>=

" ======FILES/BUFFERS======

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" Nohighlight
nnoremap <silent><leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent><leader>x :bdelete<CR>

" Move between last 2 buffers
nnoremap <silent><leader><space> :e #<CR>

" ======TERMINAL======

" easy esc
tnoremap fd <C-\><C-n>
tnoremap df <C-\><C-n>
