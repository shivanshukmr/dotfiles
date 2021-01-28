" Set leader key
let mapleader = " "

" Quit
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

" Move current window
nnoremap <leader>H <C-W>H
nnoremap <leader>J <C-W>J
nnoremap <leader>K <C-W>K
nnoremap <leader>L <C-W>L

" Close all windows except the current one
nnoremap <leader>o :only<CR>

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" No highlight
nnoremap <silent> <leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent> <leader>x :bdelete<CR>
nnoremap <silent> <leader>X :bdelete!<CR>

" Switching buffers
nnoremap <leader>b :b<SPACE>

" Grep
nnoremap <leader>a :silent grep  \| cw<LEFT><LEFT><LEFT><LEFT><LEFT>

nnoremap <silent> <leader>t :terminal<CR>i
nnoremap <silent> - :Explore<CR>
