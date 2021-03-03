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
  if client.resolved_capabilities.code_action then
    mapper('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  end
  if client.resolved_capabilities.goto_definition then
    mapper('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
  end
  if client.resolved_capabilities.find_references then
    mapper('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
  end
  if client.resolved_capabilities.hover then
    mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  end
  if client.resolved_capabilities.document_formatting then
    mapper('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  end
  if client.resolved_capabilities.rename then
    mapper('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
  end
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
  lspconfig.pyright.setup {
    on_attach = custom_attach,
  }

  lspconfig.efm.setup {
    on_attach = custom_attach,
    init_options = {documentFormatting = true},
    settings = {
      rootMarkers = {".git/"},
      languages = {
        python = {
          {
            formatCommand = "black -",
            formatStdin = true,
          },
          {
            formatCommand = "isort --stdout --profile black -",
            formatStdin = true,
          },
          {
            lintCommand = "flake8 --max-line-length 160 --stdin-display-name ${INPUT} -",
            lintStdin = true,
            lintIgnoreExitCode = true,
            lintFormats = {"%f=%l:%c: %m"},
          },
        },
      },
    },
  }

  vim.api.nvim_command('e')
end

return M
