local mapper = function(mode, key, value)
    vim.fn.nvim_buf_set_keymap(0, mode, key, value, {noremap = true, silent = true})
end

local custom_attach = function(client)
    print("LSP started")
    require'completion'.on_attach(client)
    mapper('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
    mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    mapper('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    mapper('n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    mapper('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
    mapper('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
    mapper('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>')
end

require'lspconfig'.pyls.setup{
    on_attach = custom_attach,
    settings = {
        pyls = {
            configurationSources = { "flake8" };
            plugins = { 
                jedi_completion = { fuzzy = true };
                pyls_black = { enabled = true };
                yapf = { enabled = false };
                pylint = { enabled = false };
                pydocstyle = { enabled = false };
            };
        };
    };
}
