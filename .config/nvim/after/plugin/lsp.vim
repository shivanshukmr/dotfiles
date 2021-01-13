lua require'custom.lsp'.init()

set completeopt=menuone,noinsert,noselect
set shortmess+=c

imap <silent> <C-space> <Plug>(completion_trigger)
