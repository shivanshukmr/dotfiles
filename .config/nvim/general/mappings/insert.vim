inoremap jk <Esc>
inoremap kj <Esc>

" Readline binds
inoremap <C-a> <Home>
inoremap <C-e> <End>

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
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Easy esc
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>
