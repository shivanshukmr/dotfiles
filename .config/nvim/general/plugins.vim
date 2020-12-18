call plug#begin($XDG_DATA_HOME . '/nvim/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Colorscheme(s)
    Plug 'joshdick/onedark.vim'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'justinmk/vim-sneak'
    " Fuzzy finder
    Plug 'wincent/command-t', {
        \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
        \ }
    Plug 'wincent/ferret'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    " Bufferline
    Plug 'ap/vim-buftabline'
    " Ctags-manager
    Plug 'ludovicchabant/vim-gutentags'
    " Linting & formatting
    Plug 'dense-analysis/ale'
    " Local rc
    Plug 'ii14/exrc.vim'

call plug#end()
