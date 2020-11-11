lua require("lsp_config")

" Autocompletion settings
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Auto-format *.py files on save
autocmd BufWritePre *.py lua vim.lsp.buf.formatting()

"map <c-space> to manually trigger completion
imap <silent> <c-space> <Plug>(completion_trigger)
