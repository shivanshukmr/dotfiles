if not package.loaded['lspconfig'] then return end

local lspconfig = require'lspconfig'

local custom_attach = function(client, bufnr)

  local nnoremap = function(lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', lhs, rhs, { noremap = true, silent = true })
  end

  nnoremap('<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  nnoremap('<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
  nnoremap('<leader>fr', '<cmd>lua vim.lsp.buf.references()<CR>')
  nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  nnoremap('gq', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  nnoremap('<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
  nnoremap('gO', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
  nnoremap('<leader>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
  nnoremap('[d', '<cmd>lua vim.lsp.diagnostic.goto_prev({ enable_popup = false })<CR>')
  nnoremap(']d', '<cmd>lua vim.lsp.diagnostic.goto_next({ enable_popup = false })<CR>')

  vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
end

vim.fn.sign_define({
  {
    name = "DiagnosticSignError",
    text = " »",
    texthl = "DiagnosticSignError",
  },
  {
    name = "DiagnosticSignWarn",
    text = " ━",
    texthl = "DiagnosticSignWarn",
  },
  {
    name = "DiagnosticSignInfo",
    text = " ━",
    texthl = "DiagnosticSignInfo",
  },
  {
    name = "DiagnosticSignHint",
    text = " ━",
    texthl = "DiagnosticSignHint",
  },
})

-- server setup
lspconfig.clangd.setup {
  on_attach = custom_attach,
}

vim.diagnostic.config({
  underline = {
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
  },
  virtual_text = {
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
  },
})
