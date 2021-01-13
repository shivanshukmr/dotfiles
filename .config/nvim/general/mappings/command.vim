" Readline like binds
cnoremap <C-a> <Home>
cnoremap <C-d> <Del>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<Up>"
cnoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Down>"
