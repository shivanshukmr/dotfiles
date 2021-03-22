local M = {}

local api = vim.api
local loop = vim.loop
local lastlinepos = 1

M.clear = function()
  vim.fn.system('tmux set-option -g status-right ""')
end

M.build = function(source)
  if vim.fn.has('vim_starting') == 1 or api.nvim_buf_get_option(0, 'ft') == 'command-t' then
    return
  end
  local curlinepos = api.nvim_win_get_cursor(0)[1]
  local tmux_args = { 'set-option', '-g', 'status-right', vim.fn.expand('%:~:.') .. ' ' .. curlinepos .. 'L' }
  if source == 1 then  -- cursor move event
    if curlinepos ~= lastlinepos then
      loop.spawn('tmux', { args = tmux_args, }, function() end)
      lastlinepos = curlinepos
    end
  elseif source == 2 then  -- focus gained event
    -- delay on FocusGained event so another vim instance can clear the statusline
    api.nvim_command('sleep 15m')
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  else
    loop.spawn('tmux', { args = tmux_args, }, function() end)
  end
end

return M
