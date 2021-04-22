-- https://teukka.tech/vimloop.html
local M = {}


local loop = vim.loop
local api = vim.api
local fn = vim.fn
local cc_cmd = true

local setQFlist = function(results)
  vim.schedule(function()
    fn.setqflist({}, 'a', { lines = results })
  end
  )
end

local str_split = function(str, delim)
  local result = {}
  for substr in string.gmatch(str, '([^' .. delim .. ']+)') do
    table.insert(result, substr)
  end
  return result
end

local onread = function(err, data)
  if err then
    return
  end
  if data then
    local results = str_split(data, '\n')
    setQFlist(results)
    if cc_cmd == true then
      vim.schedule(function()
        api.nvim_command('cc | redraw!')
      end
      )
      cc_cmd = false
    end
  end
end

local parse_args = function(args)
  local result = str_split(args, ' ')
  table.insert(result, '--vimgrep')
  table.insert(result, '--smart-case')
  return result
end

M.grep = function(...)
  local stdout = loop.new_pipe(false)
  local stderr = loop.new_pipe(false)
  handle = loop.spawn('rg', {
    args = parse_args(...),
    stdio = { stdout, stderr },
  },
  vim.schedule_wrap(function()
    stdout:read_stop()
    stderr:read_stop()
    stdout:close()
    stderr:close()
    handle:close()
  end
  )
  )
  -- clear qflist
  fn.setqflist({})
  stdout:read_start(onread)
  stderr:read_start(onread)
end

return M
