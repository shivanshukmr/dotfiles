inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

inoremap <expr> ) getline('.')[col('.')-1] == ')' ? '<Right>' : ')'
inoremap <expr> ] getline('.')[col('.')-1] == ']' ? '<Right>' : ']'
inoremap <expr> } getline('.')[col('.')-1] == '}' ? '<Right>' : '}'
inoremap <expr> " getline('.')[col('.')-1] == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' getline('.')[col('.')-1] == "'" ? '<Right>' : "''<Left>"
inoremap <expr> <CR> getline('.')[col('.')-1] == '}' ? '<SPACE><BS><CR><SPACE><BS><CR><ESC>ka<TAB>' : '<SPACE><BS><CR>'

inoremap <expr> <Tab> getline('.')[col('.')-1] =~? '[]>)}''"`]' ? '<RIGHT>' : '<TAB>'

inoremap <C-c> <ESC>

" BUILT-IN TERMINAL
tnoremap <C-\> <C-\><C-n>
