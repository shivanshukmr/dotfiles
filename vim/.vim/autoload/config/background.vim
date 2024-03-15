function! config#background#change_background() abort
  if &bg == 'dark'
    set bg=light
  else
    set bg=dark
  endif
  call writefile(['set bg=' . &bg], expand('~/.vim/plugin/background.vim'))
  exec('source ' .. expand('~/.vim/plugin/gruvbox.lua'))
endfunction
