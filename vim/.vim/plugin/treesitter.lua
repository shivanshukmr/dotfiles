local loaded, tsconfig = pcall(require, 'nvim-treesitter.configs')

if not loaded then
  return
end

tsconfig.setup {
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'javascript', 'typescript', 'vim' },

  highlight = { enable = true },
  indent = { enable = true },
  textobjects = { enable = true },
}
