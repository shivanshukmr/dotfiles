" ======GENERAL======

" set leader key
let mapleader = " "

inoremap jk <Esc>
inoremap kj <Esc>

" C-j and C-k in normal mode will move text buffer
nnoremap <silent><C-k> :bnext<CR>
nnoremap <silent><C-j> :bprevious<CR>

" Quit
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :q!<CR>

nnoremap Y y$

" Readline binds
inoremap <C-a> <Home>
inoremap <C-e> <End>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

" Remove trailing whitespaces
nnoremap <silent><leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" ======WINDOWS======

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Move current window
nnoremap <silent><leader>H :wincmd H<CR>
nnoremap <silent><leader>J :wincmd J<CR>
nnoremap <silent><leader>K :wincmd K<CR>
nnoremap <silent><leader>L :wincmd L<CR>

" Splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" Close all windows except the current one
nnoremap <Leader>o :only<CR>

" All windows equal sizes 
nnoremap <Leader>= <C-w>=

" ======FILES/BUFFERS======

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" No highlight
nnoremap <silent><leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent><leader>x :bdelete<CR>

" Move between last 2 buffers
nnoremap <silent><leader><leader> <C-^>

" ======TERMINAL======

" Easy esc
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

nnoremap <silent><leader>ts :split<CR>:terminal<CR>i
nnoremap <silent><leader>tv :vsplit<CR>:terminal<CR>i
nnoremap <silent><leader>tt :terminal<CR>i

" ======COMPLETION======
inoremap <C-space> <C-x><C-o>
inoremap <C-]> <C-x><C-]>

" ======Custom auto-pairs======
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

inoremap <expr> ) matchstr(getline('.'), '\%' . col('.') . 'c.') == ')' ? '<Right>' : ')'
inoremap <expr> ] matchstr(getline('.'), '\%' . col('.') . 'c.') == ']' ? '<Right>' : ']'
inoremap <expr> } matchstr(getline('.'), '\%' . col('.') . 'c.') == '}' ? '<Right>' : '}'
inoremap <expr> " matchstr(getline('.'), '\%' . col('.') . 'c.') == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' matchstr(getline('.'), '\%' . col('.') . 'c.') == "'" ? '<Right>' : "''<Left>"
inoremap <expr> <CR> matchstr(getline('.'), '\%' . col('.') . 'c.') == '}' ? '<Space><BS><CR><Space><BS><CR><Esc>ka<Tab>' : '<Space><BS><CR>'

function! TabMapping()
    if pumvisible()
        return "\<C-n>"
    elseif getline('.')[col('.')-1] =~? '[]>)}''"`]'
        return "\<Right>"
    else
        return "\<TAB>"
    endif
endfunction

inoremap <expr> <Tab> TabMapping()
