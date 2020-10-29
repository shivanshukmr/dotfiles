" PLUGINS
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

" SETTINGS
" set leader key
let mapleader = " "

syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set ruler              			        " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cindent
" set cursorline                          " Hightlight current line
set laststatus=0                        " Don't show Statusline
set number                              " Line numbers
set relativenumber                      " Set relative numbering
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Don't show tabs 
set noswapfile                          " No Swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamed,unnamedplus       " Copy paste between vim and everything else
set incsearch                           " Incremental search is good
set scrolloff=7

" MAPPINGS
" Use ctrl + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" TAB & SHIFT-TAB in general mode will move text buffer
nnoremap <silent><TAB> :bnext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>

" Move between last 2 buffers
nnoremap <silent><leader><space> :e #<CR>

" Better window navigation
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Move current window
nnoremap <silent> <leader>H :wincmd H<CR>
nnoremap <silent> <leader>J :wincmd J<CR>
nnoremap <silent> <leader>K :wincmd K<CR>
nnoremap <silent> <leader>L :wincmd L<CR>

" Save file
nnoremap <leader>e :w<CR>

" Quit
nnoremap <silent> <leader>q :q<CR>

" Close current buffer (not nvim)
nnoremap <silent> <leader>x :bdelete<CR>

" Splits
nnoremap <leader>v :vsplit<CR> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>s :split<CR> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>

" Unmark
nnoremap <silent> <leader>u :noh<CR>

" Source init.vim
nmap <Leader>i :source $HOME/.config/nvim/init.vim<CR>

" Close all buffers except the current one
nnoremap <Leader>wo :only<CR>

" All windows equal sizes 
nnoremap <Leader>w= <C-w>=

" Stuff with indentation block
onoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR><Esc>gv

function! s:IndTxtObj(inner)
    let curline = line(".")
    let lastline = line("$")
    let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
    let i = i < 0 ? 0 : i
    if getline(".") !~ "^\\s*$"
        let p = line(".") - 1
        let nextblank = getline(p) =~ "^\\s*$"
        while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || nextblank && !a:inner)))
            -
            let p = line(".") - 1
            let nextblank = getline(p) =~ "^\\s*$"
        endwhile
        normal! 0v
        call cursor(curline, 0)
        let p = line(".") + 1
        let nextblank = getline(p) =~ "^\\s*$"
        while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
            +
            let p = line(".") + 1
            let nextblank = getline(p) =~ "^\\s*$"
        endwhile
        normal! $
    endif
endfunction

vmap < <gv
vmap > >gv

" SIGNIFY
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" NERDTREE
" Shortcut
nmap <silent> <C-n> :NERDTreeToggle<CR>

" Close neovim when only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Changing ugly arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=20

" FUGITIVE
nnoremap <silent> <leader>gs :G<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gP :Gpull<CR>

" BUFFERLINE
" Don't show buffer number
let g:bufferline_show_bufnr = 0
" Format of filename
let g:bufferline_fname_mod = ':.'
" Shorter path for name
let g:bufferline_pathshorten = 1

" ONEDARK
" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    let s:pmenu = {"gui": "#21222C", "cterm": "235", "cterm16": "0" }
    autocmd ColorScheme * call onedark#set_highlight("Pmenu", {"bg": s:pmenu})
    autocmd ColorScheme * call onedark#set_highlight("PmenuSbar", {"bg": s:pmenu})
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:onedark_hide_endofbuffer=0

colorscheme onedark

" SNEAK
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


" LSP
lua require("lsp_config")

" Autocompletion settings
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Auto-format *.py files on save
autocmd BufWrite *.py lua vim.lsp.buf.formatting()

"map <c-space> to manually trigger completion
imap <silent> <c-space> <Plug>(completion_trigger)

" TELESCOPE
nnoremap <C-p> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
