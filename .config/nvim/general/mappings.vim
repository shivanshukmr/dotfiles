" LEADER
" Set leader key
let mapleader = " "

" Quit
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <silent><leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Move current window
nnoremap <silent><leader>H <C-w>H
nnoremap <silent><leader>J <C-w>J
nnoremap <silent><leader>K <C-w>K
nnoremap <silent><leader>L <C-w>L

" Close all windows except the current one
nnoremap <leader>o :only<CR>

" All windows equal sizes
nnoremap <leader>= <C-w>=

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" No highlight
nnoremap <silent><leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent><leader>x :bdelete<CR>
nnoremap <silent><leader>X :bdelete!<CR>

" Switching buffers
nnoremap <leader>b :b 

" Grep
nnoremap <leader>a :silent grep  \| cw<LEFT><LEFT><LEFT><LEFT><LEFT>

nnoremap <silent><leader>t :terminal<CR>i

" NORMAL
" C-j and C-k in normal mode will move text buffer
nnoremap <silent><C-k> :bnext<CR>
nnoremap <silent><C-j> :bprevious<CR>

nnoremap Y y$
nnoremap <BS> <C-^>

" Store relative line number jumps in the jumplist if they exceed a threshold
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -3<CR>
nnoremap <M-k> :resize +3<CR>
nnoremap <M-h> :vertical resize -3<CR>
nnoremap <M-l> :vertical resize +3<CR>

" Traverse quickfix list with arrow keys
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Traverse location list with shift+arrow keys
nnoremap <silent> <S-Up> :lprevious<CR>
nnoremap <silent> <S-Down> :lnext<CR>
nnoremap <silent> <S-Left> :lpfile<CR>
nnoremap <silent> <S-Right> :lnfile<CR>

nnoremap <silent> <leader>e :Explore<CR>

" INSERT
" Readline binds
inoremap <C-a> <Home>
inoremap <C-e> <End>

" Only complete when there's nothing in front of the cursor
inoremap <expr> ( getline('.')[col('.')-1] !=# '' ? '(' : '()<Left>'
inoremap <expr> [ getline('.')[col('.')-1] !=# '' ? '(' : '[]<Left>'
inoremap <expr> { getline('.')[col('.')-1] !=# '' ? '(' : '{}<Left>'

inoremap <expr> ) getline('.')[col('.')-1] == ')' ? '<Right>' : ')'
inoremap <expr> ] getline('.')[col('.')-1] == ']' ? '<Right>' : ']'
inoremap <expr> } getline('.')[col('.')-1] == '}' ? '<Right>' : '}'
inoremap <expr> " getline('.')[col('.')-1] == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' getline('.')[col('.')-1] == "'" ? '<Right>' : "''<Left>"
inoremap <expr> <CR> getline('.')[col('.')-1] == '}' ? '<Space><BS><CR><Space><BS><CR><ESC>ka<Tab>' : '<Space><BS><CR>'

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
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <C-c> <ESC>

" COMMAND
" Readline like binds
cnoremap <C-a> <Home>
cnoremap <C-d> <Del>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<Up>"
cnoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Down>"
