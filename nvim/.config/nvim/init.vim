set runtimepath+=~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/nvim/dein')
  call dein#begin('~/.local/share/nvim/dein')

  call dein#add('~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('vim-scripts/ReplaceWithRegister', {
        \ 'lazy': 1,
        \ 'on_map': 'gr',
        \ })
  call dein#add('hrsh7th/nvim-compe', {
        \ 'lazy': 1,
        \ 'on_ft': ['lua', 'python'],
        \ 'hook_post_source': 'lua require"custom.compe"',
        \ })
  call dein#add('neovim/nvim-lspconfig', {
        \ 'lazy': 1,
        \ 'on_ft': ['python'],
        \ 'hook_post_source': 'lua require"custom.lsp".init()',
        \ })
  call dein#add('tpope/vim-commentary', {
        \ 'lazy': 1,
        \ 'on_map': 'gc',
        \ })
  call dein#add('tpope/vim-surround', {
        \ 'lazy': 1,
        \ 'on_map': {'n': ['cs', 'ds', 'ys'], 'x': 'S'}
        \ })
  call dein#add('junegunn/fzf', {
        \ 'lazy':1,
        \ 'hook_post_update': 'fzf#install()'
        \ })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
