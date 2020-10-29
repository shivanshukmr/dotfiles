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

