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
   " NERDTree
   Plug 'preservim/nerdtree'
   " Telescope
   Plug 'nvim-lua/popup.nvim'
   Plug 'nvim-lua/plenary.nvim'
   Plug 'nvim-lua/telescope.nvim'
   " Vim Fugitive
   Plug 'tpope/vim-fugitive'
   " Bufferline
   Plug 'bling/vim-bufferline'
   " NeovimLSP
   Plug 'neovim/nvim-lspconfig'
   Plug 'nvim-lua/completion-nvim'

call plug#end()
