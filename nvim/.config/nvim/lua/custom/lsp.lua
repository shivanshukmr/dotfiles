local M = {}


local lspconfig = require'lspconfig'

local mapper = function(mode, lhs, rhs)
  vim.fn.nvim_buf_set_keymap(0, mode, lhs, rhs, {noremap = true, silent = true})
end

local custom_attach = function(client, bufnr)
  -- diagnostics
  vim.api.nvim_command [[ augroup LspDiagnostics ]]
  vim.api.nvim_command [[ autocmd! ]]
  vim.api.nvim_command [[ autocmd CURSORMOVED *.py lua require'custom.lsp'.show_diagnostics() ]]
  vim.api.nvim_command [[ autocmd INSERTLEAVE *.py lua require'custom.lsp'.show_diagnostics(1) ]]
  vim.api.nvim_command [[ augroup END ]]

  -- mappings
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

local print_line_diagnostics = function()
  local diagnostics = vim.lsp.diagnostic.get_line_diagnostics(0, vim.api.nvim_win_get_cursor(0)[1] - 1)[1]
  if diagnostics == nil then
    print('\n')
    return
  end
  local code_diagnostics = diagnostics['code']
  if code_diagnostics then
    print(code_diagnostics .. ': ' .. diagnostics['message'])
  else
    print(diagnostics['message'])
  end
end

M.show_diagnostics = function(source)
  if source == 1 then -- called by handler or insert leave event
    print_line_diagnostics()
  else -- cursor move event
    if previous_cursor_position ~= vim.api.nvim_win_get_cursor(0)[1] then
      print_line_diagnostics()
      previous_cursor_position = vim.api.nvim_win_get_cursor(0)[1]
    end
  end
end

M.init = function()
  local previous_cursor_position = 1
  -- Override publishDiagnostics handler
  vim.lsp.handlers['textDocument/publishDiagnostics'] = function(_, _, params, client_id, _, config)
    config = {
      virtual_text = false,
      signs = false,
    }
    vim.lsp.diagnostic.on_publish_diagnostics(_, _, params, client_id, _, config)
    M['show_diagnostics'](1)
  end

  -- Server setups
  -- lspconfig.pyright.setup{
  --   on_attach = custom_attach,
  -- }
  vim.api.nvim_command('e')
end

return M
