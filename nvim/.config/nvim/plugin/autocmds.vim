augroup Generalautocmds
  autocmd!
  if exists('##TextYankPost') && has('nvim')
    autocmd TEXTYANKPOST * silent! lua require'vim.highlight'.on_yank({"IncSearch", 50})
  endif

  autocmd BUFENTER * redraw | file
augroup END
