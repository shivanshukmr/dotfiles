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

" Better window navigation
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Move current window
nnoremap <silent> <leader>H <C-w>H
nnoremap <silent> <leader>J <C-w>J
nnoremap <silent> <leader>K <C-w>K
nnoremap <silent> <leader>L <C-w>L

" Save file
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Quit
nnoremap <silent> <leader>q :q<CR>

" Close current buffer (not nvim)
nnoremap <silent> <leader>x :bdelete<CR>

" Splits
nnoremap <leader>vs :vsplit<CR> :FZF<CR>
nnoremap <leader>s :split<CR> :FZF<CR>

" Unmark
nnoremap <silent> <leader>u :noh<CR>

" Source init.vim
nmap <Leader>i :source /home/shivanshukmr/.config/nvim/init.vim<CR>

" Close all buffers except the current one
nnoremap <Leader>wo :only<CR>
