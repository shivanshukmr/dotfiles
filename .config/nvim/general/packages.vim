if &loadplugins
  if has('packages')
    packadd! ReplaceWithRegister
    packadd! command-t
    packadd! completion-nvim
    packadd! nvim-lspconfig
    packadd! vim-buftabline
    packadd! vim-commentary
    packadd! vim-fugitive
    packadd! vim-surround
  endif
endif
