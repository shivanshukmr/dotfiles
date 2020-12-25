let s:bg = '12151a'
augroup on_change_colorscheme
  autocmd ColorScheme * highlight clear VertSplit
  autocmd ColorScheme * call one#highlight('Normal', 'abb2bf', '12151a', 'none')
  autocmd ColorScheme * call one#highlight('Pmenu', '', '21222c', 'none')
  autocmd ColorScheme * call one#highlight('PmenuSbar', '', '21222c', 'none')
  autocmd ColorScheme * call one#highlight('TabLine', '5c6370', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('TabLineFill', '', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('TabLineSel', 'abb2bf', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('CursorLineNr', 'abb2bf', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('SignColumn', '', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('MatchParen', '61afef', s:bg, 'underline')
  autocmd ColorScheme * call one#highlight('SpellBad', 'e06c75', s:bg, 'underline')
  autocmd ColorScheme * call one#highlight('ErrorMsg', 'e06c75', s:bg, 'none')
  autocmd ColorScheme * call one#highlight('Error', 'e06c75', s:bg, 'underline')
  autocmd ColorScheme * call one#highlight('SpellCap', 'd19a66', s:bg, 'underline')
  autocmd ColorScheme * call one#highlight('StatusLineNC', '5c6370', s:bg, 'none')
augroup END

set background=dark
let g:one_allow_italics = 1
colorscheme one
