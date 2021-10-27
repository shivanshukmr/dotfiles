local M = {}

local opt = vim.fn.stdpath('data')..'/site/pack/bundle/opt/'
local plugins = {}

for p in string.gmatch(vim.fn.glob(opt .. '*'), '([^\n]+)') do
  table.insert(plugins, p)
end

local get_package_name = function(dir)
  local sep_index = dir:find('/', opt:len())
  return dir:sub(sep_index + 1)
end

local git_pull = function(name, on_success)
  local dir = opt .. name
  local branch = vim.fn.system("git -C " .. dir .. " branch --show-current | tr -d '\n'")

  vim.loop.spawn('git', {
    args = { 'pull', 'origin', branch, '--update-shallow', '--ff-only', '--progress', '--rebase=false' },
    cwd = dir,
  },
  vim.schedule_wrap(
    function(code)
      if code == 0 then
        on_success(name)
      else
        vim.cmd('echohl ErrorMsg | echom "' .. name .. ' update unsuccessful" | echohl None')
      end
    end)
  )
end

M.package_update = function()
  local on_success = function(plugin)
    vim.cmd('packadd ' .. plugin)
    vim.cmd('echom "' .. plugin .. ' updated')
  end

  for _, data in ipairs(plugins) do
    git_pull(get_package_name(data), on_success)
  end
end

return M
