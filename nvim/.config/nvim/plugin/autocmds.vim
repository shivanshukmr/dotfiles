augroup tmuxstatus
  autocmd!
  autocmd BufEnter * lua require'custom.tmuxstatus'.build()
  autocmd CursorMoved,CursorMovedI * lua require'custom.tmuxstatus'.build(1)
  autocmd FocusGained * lua require'custom.tmuxstatus'.build(2)
  autocmd VimLeave,FocusLost * lua require'custom.tmuxstatus'.clear()
augroup END
