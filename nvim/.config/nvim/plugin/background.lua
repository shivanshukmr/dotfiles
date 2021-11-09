-- TODO: find better way to change background
_G._background = {}

_G._background.change_background = function()
  local bg = vim.api.nvim_get_option('background')
  if bg == 'light' then
    bg = 'dark'
  else
    bg = 'light'
  end
  -- change background
  vim.api.nvim_set_option('background', bg)
  vim.fn.writefile(
    { 'set background=' .. bg },
    vim.fn.stdpath('config') .. '/plugin/background.vim'
  )
end

vim.api.nvim_set_keymap('n', '<F5>', '<cmd>lua _background.change_background()<CR>', { noremap = true })
