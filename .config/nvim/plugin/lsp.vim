lua require('lsp')

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_enable_auto_hover = 0
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_trigger_on_delete = 1

" ALE like diagnostics
sign define LspDiagnosticsSignError text=>>
sign define LspDiagnosticsSignWarning text=--

hi link LspDiagnosticsSignWarning Todo
