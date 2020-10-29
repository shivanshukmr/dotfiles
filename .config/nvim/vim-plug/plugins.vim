call plug#begin('~/.local/share/nvim/plugged')
    
   " Better Syntax Support
   Plug 'sheerun/vim-polyglot'
   " Theme
   " OneDark
   Plug 'joshdick/onedark.vim'
   " Git Integration
   Plug 'mhinz/vim-signify'
   " Sneak
   Plug 'justinmk/vim-sneak'
   " Intellisense
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   " NERDTree
   Plug 'preservim/nerdtree'
   " FZF
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   Plug 'airblade/vim-rooter'
   " Vim Fugitive
   Plug 'tpope/vim-fugitive'
   " Bufferline
   Plug 'bling/vim-bufferline'

call plug#end()
