function! config#background#change_background() abort
  if &bg == 'dark'
    set bg=light
  else
    set bg=dark
  endif
  call writefile(['set bg=' . &bg], stdpath('config') . '/plugin/background.vim')
endfunction
