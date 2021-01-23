" LEADER
" Set leader key
let mapleader = " "

" Quit
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" Remove trailing whitespaces
nnoremap <leader>zz :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

" Move current window
nnoremap <leader>H <C-W>H
nnoremap <leader>J <C-W>J
nnoremap <leader>K <C-W>K
nnoremap <leader>L <C-W>L

" Close all windows except the current one
nnoremap <leader>o :only<CR>

" Save file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" Source init.vim
nnoremap <leader>i :source $HOME/.config/nvim/init.vim<CR>

" No highlight
nnoremap <silent> <leader>n :nohlsearch<CR>

" Buffer delete
nnoremap <silent> <leader>x :bdelete<CR>
nnoremap <silent> <leader>X :bdelete!<CR>

" Switching buffers
nnoremap <leader>b :b 

" Grep
nnoremap <leader>a :silent grep  \| cw<LEFT><LEFT><LEFT><LEFT><LEFT>

nnoremap <silent> <leader>t :terminal<CR>i
nnoremap <silent> - :Explore<CR>

" NORMAL
" C-j and C-k in normal mode will move text buffer
nnoremap <silent> <C-K> :bnext<CR>
nnoremap <silent> <C-J> :bprevious<CR>

nnoremap Y y$
nnoremap <BS> <C-^>

" Store relative line number jumps in the jumplist if they exceed a threshold
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" Using very-magic
nnoremap / /\v
nnoremap ? ?\v
vnoremap / /\v
vnoremap ? ?\v
onoremap / /\v
onoremap ? ?\v

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

" INSERT
" Readline binds
inoremap <C-A> <Home>
inoremap <C-E> <End>

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

inoremap <expr> ) getline('.')[col('.')-1] == ')' ? '<Right>' : ')'
inoremap <expr> ] getline('.')[col('.')-1] == ']' ? '<Right>' : ']'
inoremap <expr> } getline('.')[col('.')-1] == '}' ? '<Right>' : '}'
inoremap <expr> " getline('.')[col('.')-1] == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' getline('.')[col('.')-1] == "'" ? '<Right>' : "''<Left>"
inoremap <expr> <CR> getline('.')[col('.')-1] == '}' ? '<SPACE><BS><CR><SPACE><BS><CR><ESC>ka<TAB>' : '<SPACE><BS><CR>'

function! TabMapping()
  if pumvisible()
    return "\<C-N>"
  elseif getline('.')[col('.')-1] =~? '[]>)}''"`]'
    return "\<Right>"
  else
    return "\<TAB>"
  endif
endfunction

inoremap <expr> <Tab> TabMapping()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"

inoremap <C-C> <ESC>

" COMMAND
" Readline like binds
cnoremap <C-A> <Home>
cnoremap <C-D> <Del>

" CTRL-P/N acts like Up/Down in command mode, see :h c_<Up>
cnoremap <expr> <C-P> pumvisible() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-N> pumvisible() ? "\<C-N>" : "\<Down>"
