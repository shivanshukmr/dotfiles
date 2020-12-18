if exists('##TextYankPost')
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({"IncSearch", 50})
endif

" Terminal
autocmd TermOpen * setlocal nonumber norelativenumber
