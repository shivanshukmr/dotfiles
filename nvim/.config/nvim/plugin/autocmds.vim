augroup generalautocmds
  autocmd!
  if exists('##TextYankPost') && has('nvim')
    autocmd TEXTYANKPOST * silent! lua require'vim.highlight'.on_yank({"IncSearch", 50})
  endif

  autocmd BUFENTER * redraw | file
  autocmd CMDLINEENTER * augroup generalautocmds | autocmd! BUFENTER | augroup END
  autocmd CMDLINELEAVE * augroup generalautocmds | autocmd BUFENTER * redraw | file | augroup END
augroup END

augroup deinhooks
  autocmd!
  autocmd VimEnter * call dein#call_hook('post_source')
augroup END
