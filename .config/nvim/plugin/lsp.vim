lua require'custom.lsp'.init()

set completeopt=menuone,noinsert,noselect
set shortmess+=c

imap <silent> <C-space> <Plug>(completion_trigger)

" ALE like diagnostics
sign define LspDiagnosticsSignError text=>>
sign define LspDiagnosticsSignWarning text=--
sign define LspDiagnosticsSignHint text=--
sign define LspDiagnosticsSignInformation text=--
hi link LspDiagnosticsSignWarning Todo
