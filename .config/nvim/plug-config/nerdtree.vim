" Shortcut
nmap <silent> <C-n> :NERDTreeToggle<CR>

" Open NERDTree autokatically when opening any file in nvim
autocmd VIMENTER * NERDTree

" Close neovim when only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Changing ugly arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let NERDTreeMinimalUI = 1

let g:NERDTreeWinSize=20

"Highlight currently open file
" Check if NERDTree is open
function! IsNERDTreeOpen()
    return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
    endif
endfunction

autocmd BufEnter * call SyncTree()
