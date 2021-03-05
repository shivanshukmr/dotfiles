local M = {}


local lspconfig = require'lspconfig'

local mapper = function(mode, lhs, rhs)
  vim.fn.nvim_buf_set_keymap(0, mode, lhs, rhs, {noremap = true, silent = true})
end

local custom_attach = function(client, bufnr)
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

M.init = function()
  -- define signs
  vim.fn.sign_define('LspDiagnosticsSignError', {text='>>', texthl='LspDiagnosticsSignError'})
  vim.fn.sign_define('LspDiagnosticsSignWarning', {text='--', texthl='LspDiagnosticsSignWarning'})
  vim.fn.sign_define('LspDiagnosticsSignInformation', {text='--', texthl='LspDiagnosticsSignInformation'})
  vim.fn.sign_define('LspDiagnosticsSignHint', {text='--', texthl='LspDiagnosticsSignHint'})

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
