" vim: fdm=marker
let mapleader = " "

nnoremap <leader>b :b <C-d>

nnoremap / /\v
nnoremap ? ?\v

nnoremap <silent> <C-J> :cnext<CR>
nnoremap <silent> <C-K> :cprevious<CR>

nnoremap Y y$
nnoremap c* *Ncgn
nnoremap <expr> <F5> config#background#change_background()
nnoremap <silent> - :Explore<CR>
nnoremap <silent> <C-L> :nohlsearch <Bar> redraw! <CR>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<Down>"

cnoremap <C-A> <Home>
cnoremap <expr> / config#verymagic#very_magic_slash()
