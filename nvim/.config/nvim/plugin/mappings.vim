" vim: fdm=marker fdl=0
" LEADER {{{
let mapleader = " "

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

nnoremap <silent> <leader>x :silent confirm bd<CR>
nnoremap <leader>b :b <C-D>
nnoremap <leader><leader> <C-^>
nnoremap <leader>g :silent grep<Space>
" }}}
" NORMAL {{{
noremap Y y$
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

nnoremap <silent> <C-K> :cprevious<CR>
nnoremap <silent> <C-J> :cnext<CR>
" }}}
" INSERT {{{
inoremap <C-C> <Esc>
" }}}
" CMDLINE {{{
" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> pumvisible() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> pumvisible() ? "\<C-N>" : "\<Down>"

cnoremap <expr> / luaeval('require"custom.verymagic"()')
" }}}
