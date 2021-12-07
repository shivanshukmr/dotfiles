function! config#background#change_background() abort
  if &bg == 'dark'
    set bg=light
  else
    set bg=dark
  endif
  let l:dir = substitute($MYVIMRC, '\/\a*\.*\a*$', '', '')
  call writefile(['set bg=' . &bg], l:dir . '/plugin/background.vim')
endfunction
