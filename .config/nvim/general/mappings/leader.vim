" Set leader key
let mapleader = " "

" Quit
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <silent><leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

vnoremap <leader>h <C-w>h
vnoremap <leader>j <C-w>j
vnoremap <leader>k <C-w>k
vnoremap <leader>l <C-w>l

" Move current window
nnoremap <silent><leader>H :wincmd H<CR>
nnoremap <silent><leader>J :wincmd J<CR>
nnoremap <silent><leader>K :wincmd K<CR>
nnoremap <silent><leader>L :wincmd L<CR>

vnoremap <silent><leader>H :wincmd H<CR>
vnoremap <silent><leader>J :wincmd J<CR>
vnoremap <silent><leader>K :wincmd K<CR>
vnoremap <silent><leader>L :wincmd L<CR>

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

" Move between last 2 buffers
nnoremap <silent><leader><leader> <C-^>

nnoremap <silent><leader>ts :split<CR>:terminal<CR>i
nnoremap <silent><leader>tv :vsplit<CR>:terminal<CR>i
nnoremap <silent><leader>tt :terminal<CR>i
