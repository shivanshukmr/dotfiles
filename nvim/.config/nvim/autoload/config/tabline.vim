function config#tabline#line() abort
  let l:line=''
  let l:current=tabpagenr()
  for l:i in range(1, tabpagenr('$'))
    if l:i == l:current
      let l:line.='%#TabLineSel#'
    else
      let l:line.='%#TabLine#'
    end
    let l:line.='%' . i . 'T' " Starts mouse click target region.
    let l:line.=' %{config#tabline#label(' . i . ')} '
  endfor
  let l:line.='%#TabLineFill#'
  let l:line.='%T' " Ends mouse click target region(s).
  return l:line
endfunction

function config#tabline#label(n) abort
  let l:buflist=tabpagebuflist(a:n)
  let l:winnr=tabpagewinnr(a:n)
  return pathshorten(fnamemodify(bufname(buflist[winnr - 1]), ':~:.'))
endfunction
