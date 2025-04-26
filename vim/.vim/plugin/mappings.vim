let mapleader = " "

nnoremap <leader>b :b <C-d>

nnoremap / /\v
nnoremap ? ?\v

nnoremap <silent> ]q <cmd>cnext<CR>
nnoremap <silent> [q <cmd>cprevious<CR>
nnoremap <silent> ]l <cmd>lnext<CR>
nnoremap <silent> [l <cmd>lprevious<CR>

nnoremap Y y$
nnoremap <expr> <F5> config#background#change_background()
nnoremap <silent> - <cmd>Explore<CR>
nnoremap <silent> <C-L> <cmd>nohlsearch <Bar> redraw! <CR>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<Down>"

cnoremap <C-A> <Home>
cnoremap <expr> / config#verymagic#very_magic_slash()
