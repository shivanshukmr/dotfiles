let mapleader = " "

nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J
nnoremap <leader>K <C-w>K
nnoremap <leader>L <C-w>L

nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>

nnoremap <leader>o :only<CR>
nnoremap <silent> <leader>n :nohlsearch<CR>

nnoremap <silent> <leader>x :lua require'custom.bufdel'()<CR>
nnoremap <leader>b :ls<CR>:b<SPACE>
nnoremap <leader>p :find<SPACE>

nnoremap <leader>r :Rg<SPACE>
