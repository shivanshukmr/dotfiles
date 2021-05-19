local M = {}


local lspconfig = require'lspconfig'

local mapper = function(mode, lhs, rhs)
  vim.api.nvim_buf_set_keymap(0, mode, lhs, rhs, { noremap = true, silent = true })
end

local custom_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- mappings
  if client.resolved_capabilities.code_action then
    mapper('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  end
  if client.resolved_capabilities.goto_definition then
    mapper('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
  end
  if client.resolved_capabilities.find_references then
    mapper('n', '<leader>fr', '<cmd>lua vim.lsp.buf.references()<CR>')
  end
  if client.resolved_capabilities.hover then
    mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  end
  if client.resolved_capabilities.document_formatting then
    mapper('n', 'gq', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  end
  if client.resolved_capabilities.rename then
    mapper('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
  end
  mapper('n', '<leader>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
  mapper('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev({enable_popup = false })<CR>')
  mapper('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next({enable_popup = false })<CR>')
end

M.init = function()
  -- define signs
  vim.fn.sign_define('LspDiagnosticsSignError', { text='>>' })
  vim.fn.sign_define('LspDiagnosticsSignWarning', { text='--' })
  vim.fn.sign_define('LspDiagnosticsSignInformation', { text='--' })
  vim.fn.sign_define('LspDiagnosticsSignHint', { text='--' })

  -- override diagnostics
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = {
        severity_limit = "Warning",
      },
      virtual_text = {
        severity_limit = "Warning",
      },
    }
  )

  -- Server setups

  -- lazy loading nvim-lspconfig doesn't trigger lsp on VimEnter
  vim.cmd('setfiletype ' .. vim.api.nvim_buf_get_option(0, 'ft'))
end

return M
