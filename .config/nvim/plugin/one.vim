set background=dark
let g:one_allow_italics = 1
colorscheme one

if (!has("gui_running"))
    let s:bg = '12151a'
    call one#highlight('Normal', 'abb2bf', s:bg, 'none')
    call one#highlight('Pmenu', '', '21222c', 'none')
    call one#highlight('PmenuSbar', '', '21222c', 'none')
    call one#highlight('TabLine', '5c6370', s:bg, 'none')
    call one#highlight('TabLineFill', '', s:bg, 'none')
    call one#highlight('TabLineSel', 'abb2bf', s:bg, 'none')
    call one#highlight('CursorLineNr', 'abb2bf', s:bg, 'none')
    call one#highlight('SignColumn', '', s:bg, 'none')
    call one#highlight('MatchParen', '61afef', s:bg, 'underline')
    call one#highlight('SpellBad', 'e06c75', s:bg, 'underline')
    call one#highlight('ErrorMsg', 'e06c75', s:bg, 'none')
    call one#highlight('Error', 'e06c75', s:bg, 'underline')
    call one#highlight('SpellCap', 'd19a66', s:bg, 'underline')
    call one#highlight('StatusLineNC', '5c6370', s:bg, 'none')
endif
