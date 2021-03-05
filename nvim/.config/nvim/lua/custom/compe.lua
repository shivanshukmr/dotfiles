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
vim.fn.nvim_buf_set_keymap(0, 'i', '<C-Space>', 'compe#complete()', {noremap = true, expr = true})
vim.fn.nvim_buf_set_keymap(0, 'i', '<C-Y>', 'compe#confirm()', {noremap = true, expr = true})
