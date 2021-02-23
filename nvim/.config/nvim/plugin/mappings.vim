" LEADER
let mapleader = " "

nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>n :noh<CR>

nnoremap <silent> <leader>x :lua require'custom.bufdel'()<CR>
nnoremap <leader>b :b<SPACE><C-d>

nnoremap <leader>r :Rg<SPACE>

" NORMAL
nnoremap Y y$
nnoremap <silent> - :Explore<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold(5)
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

nnoremap / /\v
nnoremap ? ?\v
vnoremap / /\V
vnoremap ? ?\V
onoremap / /\V
onoremap ? ?\V

nnoremap <M-j> :resize -3<CR>
nnoremap <M-k> :resize +3<CR>
nnoremap <M-h> :vertical resize -3<CR>
nnoremap <M-l> :vertical resize +3<CR>

nnoremap <silent> <C-k> :cprevious<CR>
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-h> :cpfile<CR>
nnoremap <silent> <C-l> :cnfile<CR>

" INSERT
inoremap <C-c> <ESC>

" COMMAND
cnoremap <C-a> <Home>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<Up>"
cnoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Down>"

cnoremap <expr> / custom#verymagic#very_magic_slash()
