local M = {}


local loop = vim.loop
local api = vim.api
local fn = vim.fn

local setQFlist = function(results)
  vim.schedule(function()
    fn.setqflist({}, 'a', { lines = results })
  end
  )
end

local onread = function(err, data)
  if err then
    return
  end
  if data then
    local results = {}
    for str in string.gmatch(data, '([^'..'\n'..']+)') do
      table.insert(results, str)
    end
    setQFlist(results)
  end
end

M.grep = function(regexp)
  local stdout = loop.new_pipe(false)
  local stderr = loop.new_pipe(false)
  handle = loop.spawn('rg', {
    args = { regexp, '--vimgrep', '--smart-case' },
    stdio = { stdout, stderr },
  },
  vim.schedule_wrap(function()
    stdout:read_stop()
    stderr:read_stop()
    stdout:close()
    stderr:close()
    handle:close()
    api.nvim_command('silent! cc')
  end
  )
  )
  -- clear qflist
  fn.setqflist({})
  stdout:read_start(onread)
  stderr:read_start(onread)
end

return M
