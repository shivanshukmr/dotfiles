let g:ctrlp_show_hidden = 1
let g:ctrlp_line_prefix = '  '
let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob "!.git"'

let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")':   ['<C-n>'],
      \ 'PrtSelectMove("k")':   ['<C-p>'],
      \ 'PrtHistory(-1)':       [''],
      \ 'PrtHistory(1)':        [''],
      \ 'PrtClearCache()':      ['<C-f>'],
      \ 'ToggleType(1)':        ['<C-up>'],
      \ 'ToggleType(-1)':       ['<C-down>'],
      \ }
