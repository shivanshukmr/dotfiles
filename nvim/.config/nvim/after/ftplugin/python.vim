nnoremap <buffer> <silent> gq :Black<CR>
set omnifunc=v:lua.vim.lsp.omnifunc
set formatprg=black\ -q\ --fast\ -\ 2>/dev/null
let b:undo_ftplugin .= '|set omnifunc< formatprg< | nunmap gq'
