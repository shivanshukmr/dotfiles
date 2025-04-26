let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '35%' }

let g:fzf_colors = {
      \ 'gutter':  ['bg', 'Normal'],
      \ 'fg+':     ['fg', 'PmenuSel'],
      \ 'bg+':     ['bg', 'PmenuSel'],
      \ 'hl':      ['fg', 'Normal'],
      \ 'hl+':     ['fg', 'PmenuSel'],
      \ 'prompt':  ['fg', 'Comment'],
      \ 'pointer': ['bg', 'Normal'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ }

nnoremap <silent> <C-P> <cmd>call fzf#run(fzf#wrap())<CR>
