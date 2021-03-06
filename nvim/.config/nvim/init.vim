set runtimepath+=~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/nvim/dein')
  call dein#begin('~/.local/share/nvim/dein')

  call dein#add('~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('vim-scripts/ReplaceWithRegister', {
        \ 'lazy': 1,
        \ 'on_map': 'gr',
        \ })
  call dein#add('tpope/vim-commentary', {
        \ 'lazy': 1,
        \ 'on_map': 'gc',
        \ })
  call dein#add('tpope/vim-surround', {
        \ 'lazy': 1,
        \ 'on_map': { 'n': ['cs', 'ds', 'ys'], 'x': 'S' },
        \ })
  call dein#add('rstacruz/vim-closer', {
        \ 'lazy': 1,
        \ 'on_map': { 'i': '<CR>' },
        \ })
  call dein#add('wincent/command-t', {
        \ 'lazy': 1,
        \ 'on_map': { 'n': '<Space>t' },
        \ 'on_cmd': ['CommandT'],
        \ 'build': 'sh -c "cd ruby/command-t/ext/command-t && ruby extconf.rb && make"',
        \ })
  call dein#add('neovim/nvim-lspconfig', {
        \ 'lazy': 1,
        \ 'hook_post_source': 'lua require"config.lsp".init()',
        \ })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
source $XDG_DATA_HOME/nvim/local.vim
