" SETTINGS
" set leader key
let mapleader = " "

syntax on                               " Enables syntax highlighing
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
set cursorline
set laststatus=0                        " Show Statusline
set number                              " Line numbers
set relativenumber                      " Set relative numbering
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Don't show tabs 
set noswapfile                          " No Swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamed                   " Copy paste between vim and everything else
set incsearch                           " Incremental search is good

" Set Statusline
" set statusline=
" set statusline+=\ 
" set statusline+=%#StatusLine#
" set statusline+=\f
" set statusline+=\ 
" set statusline+=%=
" set statusline+=\ %y
" set statusline+=\ %l:%c
" set statusline+=\ 


" MAPPINGS
" Use ctrl + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" TAB & SHIFT-TAB in general mode will move text buffer
nnoremap <silent><TAB> :bnext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>

" Better window navigation
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Move current window
nnoremap <silent> <leader>H :wincmd H<CR>
nnoremap <silent> <leader>J :wincmd J<CR>
nnoremap <silent> <leader>K :wincmd K<CR>
nnoremap <silent> <leader>L :wincmd L<CR>

" Save file
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Quit
nnoremap <silent> <leader>q :q<CR>

" Close current buffer (not nvim)
nnoremap <silent> <leader>x :bdelete<CR>

" Splits (requires FZF)
nnoremap <leader>v :vsplit<CR> :FZF<CR>
nnoremap <leader>s :split<CR> :FZF<CR>

" Unmark
nnoremap <silent> <leader>u :noh<CR>

" Source init.vim
nmap <Leader>i :source /home/shivanshukmr/.config/nvim/init.vim<CR>

" Close all buffers except the current one
nnoremap <Leader>wo :only<CR>

" All windows equal sizes 
nnoremap <Leader>w= <C-w>=


" SIGNIFY
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk
