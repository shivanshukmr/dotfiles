local loaded, mini = pcall(require, 'mini.completion')

if not loaded then
  return
end

mini.setup({
  lsp_completion = {
    source_func = 'omnifunc',
    -- process_items = function(items, base)
    --   return mini.default_process_items(items, base, {})
    -- end,
  },
})

vim.api.nvim_set_hl(0, 'MiniCompletionInfoBorderOutdated', { link = 'FloatBorder' })

-- Manual completion
vim.api.nvim_clear_autocmds({
  event = {'CursorMovedI', 'InsertCharPre'},
  pattern = '*',
  group = 'MiniCompletion',
})
