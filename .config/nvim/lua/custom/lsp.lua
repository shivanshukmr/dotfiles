local M = {}


local lspconfig = require'lspconfig'
local lsp = require'vim.lsp'

local mapper = function(mode, lhs, rhs)
  vim.fn.nvim_buf_set_keymap(0, mode, lhs, rhs, {noremap = true, silent = true})
end

local custom_attach = function(client, bufnr)
  -- diagnostics
  vim.api.nvim_command [[ augroup Lsp ]]
  vim.api.nvim_command [[ autocmd! ]]
  vim.api.nvim_command [[ autocmd CursorMoved *.py,*.vim lua require'custom.lsp'.show_diagnostics() ]]
  vim.api.nvim_command [[ augroup END ]]

  -- completion
  vim.o.completeopt = 'menuone,noinsert,noselect'
  vim.o.shortmess = vim.o.shortmess .. 'c'
  require'completion'.on_attach({
    enable_auto_hover = 0,
    matching_strategy_list = {'exact', 'fuzzy'},
    trigger_on_delete = 1,
    confirm_key = '<C-y>',
  })

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

local print_diagnostics_in_commandline = function()
  local diagnostics = lsp.diagnostic.get_line_diagnostics(0, vim.api.nvim_win_get_cursor(0)[1] - 1)[1]
  if diagnostics == nil then
    print("\n")
    return
  end
  local code_diagnostics = diagnostics["code"]
  if code_diagnostics then
    print(code_diagnostics .. ": " .. diagnostics["message"])
  else
    print(diagnostics["message"])
  end
end

M.show_diagnostics = function(source)
  if source == 1 then -- called by handler
    print_diagnostics_in_commandline()
  else -- cursor move event
    if previous_cursor_position ~= vim.api.nvim_win_get_cursor(0)[1] then
      print_diagnostics_in_commandline()
      previous_cursor_position = vim.api.nvim_win_get_cursor(0)[1]
    end
  end
end

M.init = function()
  local previous_cursor_position = 1
  -- Override publishDiagnostics handler
  lsp.handlers['textDocument/publishDiagnostics'] = function(_, _, params, client_id, _, config)
    config = {
      virtual_text = false,
      signs = false,
      update_in_insert = true,
    }
    lsp.diagnostic.on_publish_diagnostics(_, _, params, client_id, _, config)
    M["show_diagnostics"](1)
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
