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
