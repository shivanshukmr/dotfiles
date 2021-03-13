local M = {}

local lastlinepos = 1

M.clear = function()
  vim.fn.system('tmux set-option -g status-right ""')
end

M.build = function(source)
  if vim.fn.has('vim_starting') == 1 or vim.api.nvim_buf_get_option(0, 'ft') == 'command-t' then
    return
  end
  local curlinepos = vim.api.nvim_win_get_cursor(0)[1]
  local cmd = 'tmux set-option -g status-right "' .. vim.fn.expand('%:~:.') .. ' ' .. curlinepos .. 'L' .. ' "'
  if source == 1 then  -- cursor move event
    if curlinepos ~= lastlinepos then
      vim.fn.system(cmd)
      lastlinepos = curlinepos
    end
  elseif source == 2 then  -- focus gained event
    -- delay required on FocusGained event so another vim instance can clear the statusline
    vim.api.nvim_command('sleep 15m')
    vim.fn.system(cmd)
  else
    vim.fn.system(cmd)
  end
end

return M
