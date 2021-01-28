nnoremap <silent> <C-K> :bnext<CR>
nnoremap <silent> <C-J> :bprevious<CR>

nnoremap Y y$
nnoremap <BS> <C-^>

" Store relative line number jumps in the jumplist if they exceed a threshold
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

nnoremap / /\v
nnoremap ? ?\v
vnoremap / /\v
vnoremap ? ?\v
onoremap / /\V
onoremap ? ?\V

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
