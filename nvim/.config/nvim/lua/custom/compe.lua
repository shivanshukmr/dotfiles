require'compe'.setup{
  enabled = true,
  debug = false,
  preselect = 'disable',
  documentation = false,

  source = {
    nvim_lsp = true,
    nvim_lua = true,
  },
}

vim.o.completeopt = 'menu,menuone,noselect'
vim.api.nvim_command [[ inoremap <expr> <C-space> compe#complete() ]]
vim.api.nvim_command [[ inoremap <expr> <C-y> compe#confirm() ]]