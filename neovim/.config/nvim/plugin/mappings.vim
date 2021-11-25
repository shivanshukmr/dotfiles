" vim: fdm=marker
" LEADER {{{
let mapleader = " "

nnoremap <silent> <leader>w :update<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :qa!<CR>

nnoremap <silent> <leader>x :silent confirm bd<CR>
nnoremap <silent> <leader>X :bd!<CR>
nmap <leader>b :b <C-d>
" }}}

" NORMAL {{{
nnoremap / /\v
nnoremap ? ?\v

nnoremap <silent> <C-J> :cnext<CR>
nnoremap <silent> <C-K> :cprevious<CR>

nnoremap Y y$
nnoremap c* *Ncgn
nnoremap <expr> <F5> config#background#change_background()
nnoremap <silent> - :Explore<CR>
nnoremap <silent> <Esc> :noh<CR>

nnoremap <Tab> za
" Configured st to send F35(C-F11) when pressing <C-I>
nnoremap <F35> <C-I>
nnoremap [<F35> [<C-I>
nnoremap ]<F35> ]<C-I>
inoremap <C-X><F35> <C-X><C-I>
" }}}

" CMDLINE {{{
" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<Down>"

cnoremap <C-A> <Home>
cnoremap <expr> / config#verymagic#very_magic_slash()
" }}}
