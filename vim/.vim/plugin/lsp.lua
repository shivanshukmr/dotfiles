local loaded, lspconfig = pcall(require, 'lspconfig')

if not loaded then
  return
end

local custom_attach = function(client, bufnr)
  -- if client:supports_method('textDocument/completion') then
  --   vim.lsp.completion.enable(true, client.id, bufnr)
  -- end

  local nnoremap = function(lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', lhs, rhs, { noremap = true, silent = true })
  end

  local inoremap = function(lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, 'i', lhs, rhs, { noremap = true, silent = true })
  end

  nnoremap('<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  nnoremap('<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
  nnoremap('<leader>i', '<cmd>lua vim.lsp.buf.implementation()<CR>')
  nnoremap('<leader>fr', '<cmd>lua vim.lsp.buf.references()<CR>')
  nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  nnoremap('gq', '<cmd>lua vim.lsp.buf.format()<CR>')
  nnoremap('<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
  nnoremap('gO', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
  nnoremap('<leader>d', '<cmd>lua vim.diagnostic.open_float(0)<CR>')
  nnoremap('[d', '<cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>')
  nnoremap(']d', '<cmd>lua vim.diagnostic.goto_next({ float = false })<CR>')
  inoremap('<C-K>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
end

vim.diagnostic.config({
  underline = true,
  -- virtual_text = {
  --   prefix = '■',
  -- },
  virtual_lines = {
    current_line = true,
  },
  signs = false,
  update_in_insert = false,
})

-- server setup
servers = {
  'gopls',
  'clangd',
  'ts_ls', -- typescript-language-server
  'emmet_ls', -- emmet-ls
  'tailwindcss', -- @tailwindcss/language-server
  -- 'texlab',
}

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = custom_attach,
  }
end

-- local jdtls_dir = vim.fn.expand('~/.local/share/jdtls/')
-- lspconfig.jdtls.setup {
--   cmd = {
--     jdtls_dir .. 'bin/jdtls',
--     '--jvm-arg=-javaagent:' .. jdtls_dir .. 'plugins/lombok.jar',
--   },
--   on_attach = custom_attach
-- }
