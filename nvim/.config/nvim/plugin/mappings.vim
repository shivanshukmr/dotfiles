" vim: fdm=marker fdl=0
" LEADER {{{
let mapleader = " "

nnoremap <silent> <leader>w :update<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :qa!<CR>

nnoremap <silent> <leader>x :silent confirm bd<CR>
nnoremap <silent> <leader>X :bd!<CR>
nnoremap <leader>b :b <C-D>

command! -nargs=+ Grep lua require'config.grep'.grep(<q-args>)
nnoremap <leader>g :Grep<Space>
" }}}
" NORMAL {{{
" Store relative line number jumps in the jumplist if they exceed a threshold(5)
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

nnoremap / /\v
nnoremap ? ?\v

nnoremap Y y$
nnoremap c* *Ncgn
nnoremap <silent> - :Explore<CR>
nnoremap <silent> <C-K> :cprevious<CR>
nnoremap <silent> <C-J> :cnext<CR>

nnoremap <Tab> za
" Configured st to send F35(C-F11) when pressing <C-I>
nnoremap <F35> <C-I>
nnoremap [<F35> [<C-I>
nnoremap ]<F35> ]<C-I>
inoremap <C-X><F35> <C-X><C-I>
" }}}
" CMDLINE {{{
" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> pumvisible() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> pumvisible() ? "\<C-N>" : "\<Down>"

cnoremap <C-A> <Home>
cnoremap <expr> / luaeval('require"config.verymagic"()')
" }}}
