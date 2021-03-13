nnoremap <buffer> <silent> gq :Black<CR>
set formatprg=black\ -q\ --fast\ -\ 2>/dev/null
let b:undo_ftplugin .= '|set makeprg< formatprg< | nunmap gq'
