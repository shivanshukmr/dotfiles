" github.com/wincent/loupe
function! config#verymagic#very_magic_slash() abort
  if getcmdtype() != ':'
    return '/'
  endif

  " For simplicity, only consider "/" typed at the end of the command-line.
  let l:pos=getcmdpos()
  let l:cmd=getcmdline()
  if len(l:cmd) + 1 != l:pos
    return '/'
  endif

  " Skip over ranges
  while 1
    let l:stripped=s:strip_ranges(l:cmd)
    if l:stripped ==# l:cmd
      break
    else
      let l:cmd=l:stripped
    endif
  endwhile

  if index(['g', 's', 'v'], l:cmd) != -1
    return '/' . '\v'
  endif

  return '/'
endfunction

function! s:strip_ranges(cmdline)
  let l:cmdline=a:cmdline

  " All the range tokens may be followed (several times) by '+' or '-' and an
  " optional number.
  let l:modifier='\([+-]\d*\)*'

  " Range tokens as specified in `:h cmdline-ranges`.
  let l:cmdline=substitute(l:cmdline, '^\d\+' . l:modifier, '', '') " line number
  let l:cmdline=substitute(l:cmdline, '^\.' . l:modifier, '', '') " current line
  let l:cmdline=substitute(l:cmdline, '^$' . l:modifier, '', '') " last line in file
  let l:cmdline=substitute(l:cmdline, '^%' . l:modifier, '', '') " entire file
  let l:cmdline=substitute(l:cmdline, "^'[a-z]\\c" . l:modifier, '', '') " mark t (or T)
  let l:cmdline=substitute(l:cmdline, "^'[<>]" . l:modifier, '', '') " visual selection marks
  let l:cmdline=substitute(l:cmdline, '^/[^/]\+/' . l:modifier, '', '') " /{pattern}/
  let l:cmdline=substitute(l:cmdline, '^?[^?]\+?' . l:modifier, '', '') " ?{pattern}?
  let l:cmdline=substitute(l:cmdline, '^\\/' . l:modifier, '', '') " \/ (next match of previous pattern)
  let l:cmdline=substitute(l:cmdline, '^\\?' . l:modifier, '', '') " \? (last match of previous pattern)
  let l:cmdline=substitute(l:cmdline, '^\\&' . l:modifier, '', '') " \& (last match of previous substitution)

  " Separators (see: `:h :,` and `:h :;`).
  let l:cmdline=substitute(l:cmdline, '^,', '', '') " , (separator)
  let l:cmdline=substitute(l:cmdline, '^;', '', '') " ; (separator)

  return l:cmdline
endfunction
