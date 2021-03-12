set runtimepath+=~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/nvim/dein')
  call dein#begin('~/.local/share/nvim/dein')

  call dein#add('~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('vim-scripts/ReplaceWithRegister', {
        \ 'lazy': 1,
        \ 'on_map': 'gr',
        \ })
  call dein#add('neovim/nvim-lspconfig')
  call dein#add('tpope/vim-commentary', {
        \ 'lazy': 1,
        \ 'on_map': 'gc',
        \ })
  call dein#add('tpope/vim-surround', {
        \ 'lazy': 1,
        \ 'on_map': { 'n': ['cs', 'ds', 'ys'], 'x': 'S' },
        \ })
  call dein#add('wincent/command-t', {
        \ 'lazy': 1,
        \ 'on_map': { 'n': '<C-p>' },
        \ 'on_cmd': 'CommandT',
        \ 'hook_post_source': 'nmap <silent> <C-P> <Plug>(CommandT)',
        \ 'build': 'sh -c "cd ruby/command-t/ext/command-t && ruby extconf.rb && make"',
        \ })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax on
source $XDG_DATA_HOME/nvim/local.vim
