require'compe'.setup{
  enabled = true,
  debug = false,
  min_length = 2,
  preselect = 'disable',

  source = {
    nvim_lsp = true,
  },
}

vim.api.nvim_command [[ inoremap <expr> <C-space> compe#complete() ]]
vim.api.nvim_command [[ inoremap <expr> <C-y> compe#confirm() ]]
