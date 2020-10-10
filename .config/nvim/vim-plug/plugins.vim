call plug#begin('~/.config/nvim/autoload/plugged')
    
   " Better Syntax Support
   Plug 'sheerun/vim-polyglot'
   " Theme
   " OneDark
   Plug 'joshdick/onedark.vim'
   " Git Integration
   Plug 'mhinz/vim-signify'
   " Sneak
   Plug 'justinmk/vim-sneak'
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
   " NeovimLSP
   Plug 'neovim/nvim-lspconfig'
   Plug 'nvim-lua/completion-nvim'

call plug#end()
