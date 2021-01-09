" Readline like binds
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

cnoremap <C-l> <Right>
cnoremap <M-l> <C-Right>
cnoremap <C-h> <Left>
cnoremap <M-h> <C-Left>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<Up>"
cnoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Down>"
