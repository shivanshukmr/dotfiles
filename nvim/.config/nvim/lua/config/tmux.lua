local M = {}

local fn = vim.fn
local api = vim.api
local loop = vim.loop

M.clear = function()
  fn.system('tmux set-option -g status-right ""')
end

M.build = function(source)
  if fn.has('vim_starting') == 1 then
    return
  end

  local filetype = api.nvim_buf_get_option(0, 'ft')
  local filename = fn.expand('%:~:.')
  if filename ~= '' then
    filename = filename .. ' '
  end
  local tmux_args = {
    'set-option',
    '-g',
    'status-right',
    '#[fg=white,bold,italics]' .. filetype .. '#[default] ' .. filename,
  }

  if source == 1 then  -- focus gained event
    -- delay on FocusGained event so another vim instance can clear the statusline
    api.nvim_command('sleep 15m')
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  else
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  end
end

return M
