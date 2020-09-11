" Shortcut
nmap <silent> <C-n> :NERDTreeToggle<CR>

" Close neovim when only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Changing ugly arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=20
