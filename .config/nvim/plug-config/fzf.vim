let g:fzf_layout = {'down':'~30%'}

" Remove FZF statusline
augroup FZF
  autocmd!
  autocmd FileType fzf set laststatus=0 noshowmode noruler
        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

"GFiles or Files
nnoremap <silent> <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles')."\<cr>"
