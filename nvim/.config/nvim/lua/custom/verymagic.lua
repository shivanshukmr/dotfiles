-- github.com/wincent/loupe
return function()
  if vim.fn.getcmdtype() ~= ':' then
    return '/'
  end

  -- For simplicity, only consider "/" typed at the end of the command-line.
  local pos = vim.fn.getcmdpos()
  local cmd = vim.fn.getcmdline()
  if cmd:len() + 1 ~= pos then
    return '/'
  end

  if cmd:sub(1,1) == '%' then
    cmd = cmd:sub(2)
  elseif cmd:sub(1,5) == "'<,'>" then
    cmd = cmd:sub(6)
  end

  if cmd == 'g' or cmd == 's' or cmd == 'v' or cmd == 'g!' then
    return '/\\v'
  end
  return '/'
end
