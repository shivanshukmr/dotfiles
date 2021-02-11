if &loadplugins
  if has('packages')
    packadd! ReplaceWithRegister
    packadd! nvim-compe
    packadd! nvim-lspconfig
    packadd! vim-commentary
    packadd! vim-surround
  endif
endif

filetype plugin indent on
syntax on
