call plug#begin($XDG_DATA_HOME . '/nvim/plugged')
    
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
    " Fuzzy finder
    Plug 'wincent/command-t', {
        \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
        \ }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    " Bufferline
    Plug 'ap/vim-buftabline'
    " Ctags-manager
    Plug 'ludovicchabant/vim-gutentags'
    " Linting & formatting
    Plug 'dense-analysis/ale'

call plug#end()
