" github.com/wincent/loupe
function! custom#verymagic#very_magic_slash() abort
  if getcmdtype() != ':'
    return '/'
  endif

  " For simplicity, only consider "/" typed at the end of the command-line.
  let l:pos=getcmdpos()
  let l:cmd=getcmdline()
  if len(l:cmd) + 1 != l:pos
    return '/'
  endif

  if l:cmd[:4] ==# "'<,'>" " Visual selection
    let l:cmd = l:cmd[5:]
  elseif l:cmd[:0] ==# "%" " File
    let l:cmd = l:cmd[1:]
  endif

  if index(['g', 's', 'v', 'g!'], l:cmd) != -1
    return '/' . '\v'
  endif

  return '/'
endfunction
