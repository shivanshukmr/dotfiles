if &loadplugins
  if has('packages')
    packadd! ReplaceWithRegister
    packadd! command-t
    packadd! nvim-compe
    packadd! nvim-lspconfig
    packadd! vim-buftabline
    packadd! vim-commentary
    packadd! vim-fugitive
    packadd! vim-surround
  endif
endif

filetype plugin indent on
syntax on
