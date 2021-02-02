" Set leader key
let mapleader = " "

" Quit
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Move current window
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J
nnoremap <leader>K <C-w>K
nnoremap <leader>L <C-w>L

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
nnoremap <silent> <leader>x :lua require'custom.bufdel'()<CR>

" Switching buffers
nnoremap <leader>b :b<SPACE>

nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>

" Grep
nnoremap <leader>a :silent grep  \| cw<LEFT><LEFT><LEFT><LEFT><LEFT>

nnoremap <silent> <leader>t :terminal<CR>i
