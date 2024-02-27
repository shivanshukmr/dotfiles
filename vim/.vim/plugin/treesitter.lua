local loaded, ts = pcall(require, 'nvim-treesitter.configs')

if not loaded then
  return
end

ts.setup {
  ensure_installed = { "javascript" , "java", "c", "cpp", "python" },
  highlight = { enable = true },
  indent = { enable = true },
}
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
