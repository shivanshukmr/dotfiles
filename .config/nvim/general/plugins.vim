call plug#begin('~/.local/share/nvim/plugged')
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " OneDark
    Plug 'joshdick/onedark.vim'
    " Git Integration
    Plug 'mhinz/vim-signify'
    " Vim Fugitive
    Plug 'tpope/vim-fugitive'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Auto Pairs
    Plug 'jiangmiao/auto-pairs'
    " NeovimLSP
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-lua/completion-nvim'
    " Command-T
    Plug 'wincent/command-t', {
        \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
        \ }
    " Commentary
    Plug 'tpope/vim-commentary'
    " Surround
    Plug 'tpope/vim-surround'
    " Bufferline
    Plug 'bling/vim-bufferline'
    " Ctags-manager
    Plug 'ludovicchabant/vim-gutentags'

call plug#end()
