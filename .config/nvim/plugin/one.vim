set background=dark
let g:one_allow_italics = 1
colorscheme one

if (!has("gui_running"))
    call one#highlight('Normal', 'abb2bf', '12151a', 'none')
    call one#highlight('Pmenu', '', '21222c', 'none')
    call one#highlight('PmenuSbar', '', '21222c', 'none')
    call one#highlight('TabLine', '5c6370', '12151a', 'none')
    call one#highlight('TabLineFill', '', '12151a', 'none')
    call one#highlight('TabLineSel', 'abb2bf', '12151a', 'none')
    call one#highlight('CursorLineNr', 'abb2bf', '12151a', 'none')
    call one#highlight('SignColumn', '', '12151a', 'none')
    call one#highlight('MatchParen', '61afef', '12151a', 'underline')
    call one#highlight('SpellBad', 'e06c75', '12151a', 'underline')
endif
