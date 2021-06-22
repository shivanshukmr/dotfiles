local M = {}

local fn = vim.fn
local loop = vim.loop

M.clear = function()
  fn.system('tmux set-option status-right ""')
end

M.build = function(delay)
  if fn.has('vim_starting') == 1 or vim.bo.buftype == 'nofile' then
    return
  end

  local filetype = vim.bo.filetype
  local filename = fn.expand('%:~:.')
  if filename ~= '' then
    filename = filename .. ' '
  end
  local tmux_args = {
    'set-option',
    'status-right',
    '#[fg=white,bold,italics]' .. filetype .. '#[default] ' .. filename,
  }

  if delay == 1 then -- delay on FocusGained event so another vim instance can clear the statusline
    vim.api.nvim_command('sleep 15m')
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  else
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  end
end

return M
