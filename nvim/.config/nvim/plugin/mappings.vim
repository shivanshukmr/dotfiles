" LEADER
let mapleader = " "

nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>n :noh<CR>

nnoremap <silent> <leader>x :silent confirm bd<CR>
nnoremap <leader>b :b<SPACE><C-D>

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

nnoremap <silent> <C-K> :cprevious<CR>
nnoremap <silent> <C-J> :cnext<CR>
nnoremap <silent> <C-H> :cpfile<CR>
nnoremap <silent> <C-L> :cnfile<CR>

" Fzf
nnoremap <C-P> :call fzf#run({'sink': 'e', 'down': '30%'})<CR>

" INSERT
inoremap <C-C> <Esc>

" COMMAND
cnoremap <C-A> <Home>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> pumvisible() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> pumvisible() ? "\<C-N>" : "\<Down>"

cnoremap <expr> / custom#verymagic#very_magic_slash()
