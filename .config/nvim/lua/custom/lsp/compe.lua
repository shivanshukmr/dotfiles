require'compe'.setup{
  enabled = true,
  debug = false,
  min_length = 2,
  preselect = 'disable',
  documentation = false,

  source = {
    nvim_lsp = true,
    nvim_lua = true,
  },
}

vim.api.nvim_command [[ inoremap <expr> <C-space> compe#complete() ]]
vim.api.nvim_command [[ inoremap <expr> <C-y> compe#confirm() ]]
