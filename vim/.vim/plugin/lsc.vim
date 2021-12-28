let g:lsc_server_commands = {
      \ 'c': 'clangd --log=error',
      \ 'cpp': 'clangd --log=error',
      \ }

let g:lsc_auto_map = {
      \ 'GoToDefinition': '<C-]>',
      \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
      \ 'FindReferences': '<leader>fr',
      \ 'Rename': '<leader>r',
      \ 'FindImplementations': 'gI',
      \ 'FindCodeActions': '<leader>a',
      \ 'ShowHover': v:true,
      \ 'DocumentSymbol': 'gO',
      \ 'WorkspaceSymbol': 'gS',
      \ 'Completion': 'omnifunc',
      \}

let g:lsc_enable_autocomplete = v:false

hi link lscDiagnosticError SpellBad
