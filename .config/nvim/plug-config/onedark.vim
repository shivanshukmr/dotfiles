" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    let s:pmenu = {"gui": "#21222C", "cterm": "235", "cterm16": "0" }
    autocmd ColorScheme * call onedark#set_highlight("Pmenu", {"bg": s:pmenu})
    autocmd ColorScheme * call onedark#set_highlight("PmenuSbar", {"bg": s:pmenu})
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

colorscheme onedark
