_G._tmux = {}

local fn = vim.fn
local loop = vim.loop

_G._tmux.clear = function()
  fn.system('tmux set-option status-right ""')
end

_G._tmux.build = function(delay)
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

vim.api.nvim_exec([[
if exists('$TMUX')
  augroup tmuxstatus
    autocmd!
    autocmd BufEnter,BufWrite,Filetype * lua _tmux.build()
    autocmd FocusGained * lua _tmux.build(1)
    autocmd VimLeave,VimSuspend,FocusLost * lua _tmux.clear()
  augroup END
endif
]], false)
