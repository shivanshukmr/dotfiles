lua require("lsp_configuration")

" Autocompletion settings
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Avoid showing message extra message when using completion
set shortmess+=c

" Disable auto popup
let g:completion_enable_auto_popup = 0

" Disable auto hover
let g:completion_enable_auto_hover = 0

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Auto-format *.py files on save
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting()

imap <silent> <C-space> <Plug>(completion_trigger)
