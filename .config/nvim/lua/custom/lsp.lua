local M = {}


local lspconfig = require'lspconfig'

local mapper = function(mode, key, value)
  vim.fn.nvim_buf_set_keymap(0, mode, key, value, {noremap = true, silent = true})
end

local custom_attach = function(client, bufnr)
  require'completion'.on_attach({
    enable_auto_hover = 0,
    matching_strategy_list = {'exact', 'fuzzy'},
    trigger_on_delete = 1,
    confirm_key = '<C-y>',
  })
  mapper('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
  mapper('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
  mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  if client.resolved_capabilities.document_formatting then
    mapper('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  end
  mapper('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
  mapper('n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
  mapper('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
  mapper('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>')
end

M.init = function()
  -- Override publishDiagnostics handler
  vim.lsp.handlers['textDocument/publishDiagnostics'] = function(_, _, params, client_id, _, config)
    config = {
      virtual_text = false,
      signs = false,
      update_in_insert = true,
    }
    vim.lsp.diagnostic.on_publish_diagnostics(_, _, params, client_id, _, config)
  end

  lspconfig.pyright.setup{
    on_attach = custom_attach,
    root_dir = function(fname)
      return lspconfig.util.find_git_ancestor(fname)
    end,
  }

  lspconfig.vimls.setup{
    on_attach = custom_attach,
  }
end

return M
