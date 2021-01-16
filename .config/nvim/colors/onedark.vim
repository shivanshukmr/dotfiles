" vim:fdm=marker
" Vim Color File
" Name:       onedark.vim
" Maintainer: https://github.com/joshdick/onedark.vim/
" License:    The MIT License (MIT)
" Based On:   https://github.com/MaxSt/FlatColor/

" A companion [vim-airline](https://github.com/bling/vim-airline) theme is available at: https://github.com/joshdick/airline-onedark.vim

" Color Reference {{{

" The following colors were measured inside Atom using its built-in inspector.

" +---------------------------------------------+
" |  Color Name  |         RGB        |   Hex   |
" |--------------+--------------------+---------|
" | Black        | rgb(40, 44, 52)    | #282c34 |
" |--------------+--------------------+---------|
" | White        | rgb(171, 178, 191) | #abb2bf |
" |--------------+--------------------+---------|
" | Light Red    | rgb(224, 108, 117) | #e06c75 |
" |--------------+--------------------+---------|
" | Dark Red     | rgb(190, 80, 70)   | #be5046 |
" |--------------+--------------------+---------|
" | Green        | rgb(152, 195, 121) | #98c379 |
" |--------------+--------------------+---------|
" | Light Yellow | rgb(229, 192, 123) | #e5c07b |
" |--------------+--------------------+---------|
" | Dark Yellow  | rgb(209, 154, 102) | #d19a66 |
" |--------------+--------------------+---------|
" | Blue         | rgb(97, 175, 239)  | #61afef |
" |--------------+--------------------+---------|
" | Magenta      | rgb(198, 120, 221) | #c678dd |
" |--------------+--------------------+---------|
" | Cyan         | rgb(86, 182, 194)  | #56b6c2 |
" |--------------+--------------------+---------|
" | Gutter Grey  | rgb(76, 82, 99)    | #4b5263 |
" |--------------+--------------------+---------|
" | Comment Grey | rgb(92, 99, 112)   | #5c6370 |
" +---------------------------------------------+

" }}}

" Initialization {{{

highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

let g:colors_name="onedark"

" }}}

" Syntax Groups (descriptions and ordering from `:h w18`) {{{

highlight Comment guifg= #5C6370 guibg= NONE guisp= NONE gui= italic ctermfg=59 ctermbg=NONE cterm= italic " any comment
highlight Constant guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE " any constant
highlight String guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE " a string constant: "this is a string"
highlight Character guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE " a character constant: 'c', '\n'
highlight Number guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " a number constant: 234, 0xff
highlight Boolean guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " a boolean constant: TRUE, false
highlight Float guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " a floating point constant: 2.3e10
highlight Identifier guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE " any variable name
highlight Function guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE " function name (also: methods for classes)
highlight Statement guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " any statement
highlight Conditional guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " if, then, else, endif, switch, etc.
highlight Repeat guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " for, do, while, etc.
highlight Label guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " case, default, etc.
highlight Operator guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " sizeof", "+", "*", etc.
highlight Keyword guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE " any other keyword
highlight Exception guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " try, catch, throw
highlight PreProc guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " generic Preprocessor
highlight Include guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE " preprocessor #include
highlight Define guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " preprocessor #define
highlight Macro guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " same as Define
highlight PreCondit guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " preprocessor #if, #else, #endif, etc.
highlight Type guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " int, long, char, etc.
highlight StorageClass guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " static, register, volatile, etc.
highlight Structure guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " struct, union, enum, etc.
highlight Typedef guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " A typedef
highlight Special guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE " any special symbol
highlight SpecialChar guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " special character in a constant
highlight Tag guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " you can use CTRL-] on this
highlight Delimiter guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " character that needs attention
highlight SpecialComment guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " special things inside a comment
highlight Debug guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " debugging statements
highlight Underlined guifg= NONE guibg= NONE guisp= NONE gui= underline ctermfg=NONE ctermbg=NONE cterm= underline " text that stands out, HTML links
highlight Ignore guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " left blank, hidden
highlight Error guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE " any erroneous construct
highlight Todo guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" }}}

" Highlighting Groups (descriptions and ordering from `:h highlight-groups`) {{{
highlight ColorColumn guifg= NONE guibg= #2C323C guisp= NONE gui= NONE ctermfg=NONE ctermbg=236 cterm= NONE " used for the columns set with 'colorcolumn'
highlight Conceal guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " placeholder characters substituted for concealed text (see 'conceallevel')
highlight Cursor guifg= #282C34 guibg= #61AFEF guisp= NONE gui= NONE ctermfg=235 ctermbg=39 cterm= NONE " the character under the cursor
highlight CursorIM guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " like Cursor, but used when in IME mode
highlight CursorColumn guifg= NONE guibg= #2C323C guisp= NONE gui= NONE ctermfg=NONE ctermbg=236 cterm= NONE " the screen column that the cursor is in when 'cursorcolumn' is set
if &diff
  " Don't change the background color in diff mode
  highlight CursorLine guifg= NONE guibg= NONE guisp= NONE gui= underline ctermfg=NONE ctermbg=NONE cterm= NONE " the screen line that the cursor is in when 'cursorline' is set
else
  highlight CursorLine guifg= NONE guibg= #2C323C guisp= NONE gui= NONE ctermfg=NONE ctermbg=236 cterm= NONE " the screen line that the cursor is in when 'cursorline' is set
endif
highlight Directory guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE " directory names (and other special names in listings)
highlight DiffAdd guifg= #282C34 guibg= #98C379 guisp= NONE gui= NONE ctermfg=235 ctermbg=114 cterm= NONE " diff mode: Added line
highlight DiffChange guifg= #E5C07B guibg= NONE guisp= NONE gui= underline ctermfg=180 ctermbg=NONE cterm= underline " diff mode: Changed line
highlight DiffDelete guifg= #282C34 guibg= #E06C75 guisp= NONE gui= NONE ctermfg=235 ctermbg=204 cterm= NONE " diff mode: Deleted line
highlight DiffText guifg= #282C34 guibg= #E5C07B guisp= NONE gui= NONE ctermfg=235 ctermbg=180 cterm= NONE " diff mode: Changed text within a changed line
highlight ErrorMsg guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE " error messages on the command line
highlight VertSplit guifg= #181A1F guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " the column separating vertically split windows
highlight Folded guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " line used for closed folds
highlight FoldColumn guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " 'foldcolumn'
highlight SignColumn guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " column where signs are displayed
highlight IncSearch guifg= #E5C07B guibg= #5C6370 guisp= NONE gui= NONE ctermfg=180 ctermbg=59 cterm= NONE " 'incsearch' highlighting; also used for the text replaced with ":s///c"
highlight LineNr guifg= #4B5263 guibg= NONE guisp= NONE gui= NONE ctermfg=238 ctermbg=NONE cterm= NONE " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
highlight CursorLineNr guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
highlight MatchParen guifg= #61AFEF guibg= NONE guisp= NONE gui= underline ctermfg=39 ctermbg=NONE cterm= underline " The character under the cursor or just before it, if it is a paired bracket, and its match.
highlight ModeMsg guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " 'showmode' message (e.g., "-- INSERT --")
highlight MoreMsg guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " more-prompt
highlight NonText guifg= #3B4048 guibg= NONE guisp= NONE gui= NONE ctermfg=238 ctermbg=NONE cterm= NONE " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
highlight Normal guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE " normal text
highlight Pmenu guifg= NONE guibg= #21222C guisp= NONE gui= NONE ctermfg=NONE ctermbg=235 cterm= NONE " Popup menu: normal item.
highlight PmenuSel guifg= #282C34 guibg= #61AFEF guisp= NONE gui= NONE ctermfg=235 ctermbg=39 cterm= NONE " Popup menu: selected item.
highlight PmenuSbar guifg= NONE guibg= #21222C guisp= NONE gui= NONE ctermfg=NONE ctermbg=235 cterm= NONE " Popup menu: scrollbar.
highlight PmenuThumb guifg= NONE guibg= #ABB2BF guisp= NONE gui= NONE ctermfg=NONE ctermbg=145 cterm= NONE " Popup menu: Thumb of the scrollbar.
highlight Question guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE " hit-enter prompt and yes/no questions
highlight QuickFixLine guifg= #282C34 guibg= #E5C07B guisp= NONE gui= NONE ctermfg=235 ctermbg=180 cterm= NONE " Current quickfix item in the quickfix window.
highlight Search guifg= #282C34 guibg= #E5C07B guisp= NONE gui= NONE ctermfg=235 ctermbg=180 cterm= NONE " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
highlight SpecialKey guifg= #3B4048 guibg= NONE guisp= NONE gui= NONE ctermfg=238 ctermbg=NONE cterm= NONE " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
highlight SpellBad guifg= #E06C75 guibg= NONE guisp= NONE gui= underline ctermfg=204 ctermbg=NONE cterm= underline " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
highlight SpellCap guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " Word that should start with a capital. This will be combined with the highlighting used otherwise.
highlight SpellLocal guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
highlight SpellRare guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
highlight StatusLine guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " status line of current window
highlight StatusLineNC guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
highlight StatusLineTerm guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " status line of current :terminal window
highlight StatusLineTermNC guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " status line of non-current :terminal window
highlight TabLine guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE " tab pages line, not active tab page label
highlight TabLineFill guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE " tab pages line, where there are no labels
highlight TabLineSel guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE " tab pages line, active tab page label
highlight Terminal guifg= #ABB2BF guibg= #282C34 guisp= NONE gui= NONE ctermfg=145 ctermbg=235 cterm= NONE " terminal window (see terminal-size-color)
highlight Title guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE " titles for output from ":set all", ":autocmd" etc.
highlight Visual guifg= NONE guibg= #3E4452 guisp= NONE gui= NONE ctermfg=NONE ctermbg=237 cterm= NONE " Visual mode selection
highlight VisualNOS guifg= NONE guibg= #3E4452 guisp= NONE gui= NONE ctermfg=NONE ctermbg=237 cterm= NONE " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
highlight WarningMsg guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE " warning messages
highlight WildMenu guifg= #282C34 guibg= #61AFEF guisp= NONE gui= NONE ctermfg=235 ctermbg=39 cterm= NONE " current match in 'wildmenu' completion

" }}}

" Termdebug highlighting for Vim 8.1+ {{{

" See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
highlight debugPC guifg= NONE guibg= #3B4048 guisp= NONE gui= NONE ctermfg=NONE ctermbg=238 cterm= NONE " the current position
highlight debugBreakpoint guifg= #282C34 guibg= #E06C75 guisp= NONE gui= NONE ctermfg=235 ctermbg=204 cterm= NONE " a breakpoint

" }}}

" Language-Specific Highlighting {{{

" CSS
highlight cssAttrComma guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssAttributeSelector guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight cssBraces guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight cssClassName guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight cssClassNameDot guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight cssDefinition guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssFontAttr guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight cssFontDescriptor guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssFunctionName guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight cssIdentifier guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight cssImportant guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssInclude guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight cssIncludeKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssMediaType guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight cssProp guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight cssPseudoClassId guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight cssSelectorOp guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssSelectorOp2 guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight cssTagName guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE

" Fish Shell
highlight fishKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight fishConditional guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE

" Go
highlight goDeclaration guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight goBuiltins guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight goFunctionCall guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight goVarDefs guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight goVarAssign guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight goVar guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight goConst guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight goType guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight goTypeName guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight goDeclType guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight goTypeDecl guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE

" HTML (keep consistent with Markdown, below)
highlight htmlArg guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight htmlBold guifg= #D19A66 guibg= NONE guisp= NONE gui= bold ctermfg=173 ctermbg=NONE cterm= bold
highlight htmlEndTag guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight htmlH1 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlH2 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlH3 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlH4 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlH5 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlH6 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlItalic guifg= #C678DD guibg= NONE guisp= NONE gui= italic ctermfg=170 ctermbg=NONE cterm= italic
highlight htmlLink guifg= #56B6C2 guibg= NONE guisp= NONE gui= underline ctermfg=38 ctermbg=NONE cterm= underline
highlight htmlSpecialChar guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight htmlSpecialTagName guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlTag guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight htmlTagN guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlTagName guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight htmlTitle guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE

" JavaScript
highlight javaScriptBraces guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight javaScriptFunction guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javaScriptIdentifier guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javaScriptNull guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight javaScriptNumber guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight javaScriptRequire guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight javaScriptReserved guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
" https://github.com/pangloss/vim-javascript
highlight jsArrowFunction guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsClassKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsClassMethodType guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsDocParam guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight jsDocTags guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsExport guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsExportDefault guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsExtendsKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsFrom guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsFuncCall guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight jsFunction guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsGenerator guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight jsGlobalObjects guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight jsImport guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsModuleAs guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsModuleWords guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsModules guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsNull guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight jsOperator guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsStorageClass guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight jsSuper guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsTemplateBraces guifg= #BE5046 guibg= NONE guisp= NONE gui= NONE ctermfg=196 ctermbg=NONE cterm= NONE
highlight jsTemplateVar guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight jsThis guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsUndefined guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
" https://github.com/othree/yajs.vim
highlight javascriptArrowFunc guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptClassExtends guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptClassKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptDocNotation guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptDocParamName guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight javascriptDocTags guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptEndColons guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight javascriptExport guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptFuncArg guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight javascriptFuncKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptIdentifier guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight javascriptImport guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight javascriptMethodName guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight javascriptObjectLabel guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight javascriptOpSymbol guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight javascriptOpSymbols guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight javascriptPropertyName guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight javascriptTemplateSB guifg= #BE5046 guibg= NONE guisp= NONE gui= NONE ctermfg=196 ctermbg=NONE cterm= NONE
highlight javascriptVariable guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE

" JSON
highlight jsonCommentError guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight jsonKeyword guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsonBoolean guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight jsonNumber guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight jsonQuote guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight jsonMissingCommaError guifg= #E06C75 guibg= NONE guisp= NONE gui= reverse ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsonNoQuotesError guifg= #E06C75 guibg= NONE guisp= NONE gui= reverse ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsonNumError guifg= #E06C75 guibg= NONE guisp= NONE gui= reverse ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsonString guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight jsonStringSQError guifg= #E06C75 guibg= NONE guisp= NONE gui= reverse ctermfg=204 ctermbg=NONE cterm= NONE
highlight jsonSemicolonError guifg= #E06C75 guibg= NONE guisp= NONE gui= reverse ctermfg=204 ctermbg=NONE cterm= NONE

" LESS
highlight lessVariable guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight lessAmpersandChar guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight lessClass guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE

" Markdown (keep consistent with HTML, above)
highlight markdownBlockquote guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight markdownBold guifg= #D19A66 guibg= NONE guisp= NONE gui= bold ctermfg=173 ctermbg=NONE cterm= bold
highlight markdownCode guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight markdownCodeBlock guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight markdownCodeDelimiter guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight markdownH1 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownH2 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownH3 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownH4 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownH5 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownH6 guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownHeadingDelimiter guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownHeadingRule guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight markdownId guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight markdownIdDeclaration guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight markdownIdDelimiter guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight markdownItalic guifg= #C678DD guibg= NONE guisp= NONE gui= italic ctermfg=170 ctermbg=NONE cterm= italic
highlight markdownLinkDelimiter guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight markdownLinkText guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight markdownListMarker guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownOrderedListMarker guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight markdownRule guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight markdownUrl guifg= #56B6C2 guibg= NONE guisp= NONE gui= underline ctermfg=38 ctermbg=NONE cterm= underline

" Perl
highlight perlFiledescRead guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight perlFunction guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight perlMatchStartEnd guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight perlMethod guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight perlPOD guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight perlSharpBang guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight perlSpecialString guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight perlStatementFiledesc guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight perlStatementFlow guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight perlStatementInclude guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight perlStatementScalar guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight perlStatementStorage guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight perlSubName guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight perlVarPlain guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE

" PHP
highlight phpVarSelector guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight phpOperator guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpParent guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpMemberSelector guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpType guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight phpKeyword guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight phpClass guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight phpUseClass guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpUseAlias guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpInclude guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight phpClassExtends guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight phpDocTags guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight phpFunction guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight phpFunctions guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight phpMethodsVar guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight phpMagicConstants guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight phpSuperglobals guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight phpConstants guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE

" Ruby
highlight rubyBlockParameter guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyBlockParameterList guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyClass guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight rubyConstant guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight rubyControl guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight rubyEscape guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyFunction guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight rubyGlobalVariable guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyInclude guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight rubyIncluderubyGlobalVariable guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyInstanceVariable guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyInterpolation guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight rubyInterpolationDelimiter guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyInterpolationDelimiter guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight rubyRegexp guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight rubyRegexpDelimiter guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight rubyStringDelimiter guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight rubySymbol guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE

" Sass
" https://github.com/tpope/vim-haml
highlight sassAmpersand guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight sassClass guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight sassControl guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassExtend guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassFor guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight sassFunction guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight sassId guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight sassInclude guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassMedia guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassMediaOperators guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight sassMixin guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassMixinName guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight sassMixing guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight sassVariable guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
" https://github.com/cakebaker/scss-syntax.vim
highlight scssExtend guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight scssImport guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight scssInclude guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight scssMixin guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight scssSelectorName guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight scssVariable guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE

" TeX
highlight texStatement guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight texSubscripts guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight texSuperscripts guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight texTodo guifg= #BE5046 guibg= NONE guisp= NONE gui= NONE ctermfg=196 ctermbg=NONE cterm= NONE
highlight texBeginEnd guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight texBeginEndName guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight texMathMatcher guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight texMathDelim guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight texDelimiter guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight texSpecialChar guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight texCite guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight texRefZone guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE

" TypeScript
highlight typescriptReserved guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight typescriptEndColons guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight typescriptBraces guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE

" XML
highlight xmlAttrib guifg= #D19A66 guibg= NONE guisp= NONE gui= NONE ctermfg=173 ctermbg=NONE cterm= NONE
highlight xmlEndTag guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight xmlTag guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight xmlTagName guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE

" }}}

" Plugin Highlighting {{{

" airblade/vim-gitgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete

" dense-analysis/ale
highlight ALEError guifg= #E06C75 guibg= NONE guisp= NONE gui= underline ctermfg=204 ctermbg=NONE cterm= underline
highlight ALEWarning guifg= #E5C07B guibg= NONE guisp= NONE gui= underline ctermfg=180 ctermbg=NONE cterm= underline
highlight ALEInfo guifg= NONE guibg= NONE guisp= NONE gui= underline ctermfg=NONE ctermbg=NONE cterm= underline

" easymotion/vim-easymotion
highlight EasyMotionTarget guifg= #E06C75 guibg= NONE guisp= NONE gui= bold ctermfg=204 ctermbg=NONE cterm= bold
highlight EasyMotionTarget2First guifg= #E5C07B guibg= NONE guisp= NONE gui= bold ctermfg=180 ctermbg=NONE cterm= bold
highlight EasyMotionTarget2Second guifg= #D19A66 guibg= NONE guisp= NONE gui= bold ctermfg=173 ctermbg=NONE cterm= bold
highlight EasyMotionShade guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE

" mhinz/vim-signify
highlight SignifySignAdd guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight SignifySignChange guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight SignifySignDelete guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE

" neomake/neomake
highlight NeomakeWarningSign guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight NeomakeErrorSign guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight NeomakeInfoSign guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE

" plasticboy/vim-markdown (keep consistent with Markdown, above)
highlight mkdDelimiter guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight mkdHeading guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight mkdLink guifg= #61AFEF guibg= NONE guisp= NONE gui= NONE ctermfg=39 ctermbg=NONE cterm= NONE
highlight mkdURL guifg= #56B6C2 guibg= NONE guisp= NONE gui= underline ctermfg=38 ctermbg=NONE cterm= underline

" tpope/vim-fugitive
highlight diffAdded guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight diffRemoved guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE

" }}}

" Git Highlighting {{{

highlight gitcommitComment guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
highlight gitcommitUnmerged guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight gitcommitOnBranch guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE
highlight gitcommitBranch guifg= #C678DD guibg= NONE guisp= NONE gui= NONE ctermfg=170 ctermbg=NONE cterm= NONE
highlight gitcommitDiscardedType guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight gitcommitSelectedType guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight gitcommitHeader guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE
highlight gitcommitUntrackedFile guifg= #56B6C2 guibg= NONE guisp= NONE gui= NONE ctermfg=38 ctermbg=NONE cterm= NONE
highlight gitcommitDiscardedFile guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
highlight gitcommitSelectedFile guifg= #98C379 guibg= NONE guisp= NONE gui= NONE ctermfg=114 ctermbg=NONE cterm= NONE
highlight gitcommitUnmergedFile guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
highlight gitcommitFile guifg= NONE guibg= NONE guisp= NONE gui= NONE ctermfg=NONE ctermbg=NONE cterm= NONE
highlight gitcommitSummary guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
highlight gitcommitOverflow guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" }}}

" Neovim-Specific Highlighting {{{

if has('nvim')
  " Neovim terminal colors {{{
  let g:terminal_color_0  = '#282C34'
  let g:terminal_color_1  = '#E06C75'
  let g:terminal_color_2  = '#98C379'
  let g:terminal_color_3  = '#E5C07B'
  let g:terminal_color_4  = '#61AFEF'
  let g:terminal_color_5  = '#C678DD'
  let g:terminal_color_6  = '#56B6C2'
  let g:terminal_color_7  = '#ABB2BF'
  let g:terminal_color_8  = '#3E4452'
  let g:terminal_color_9  = '#BE5046'
  let g:terminal_color_10 = '#98C379'
  let g:terminal_color_11 = '#D19A66'
  let g:terminal_color_12 = '#61AFEF'
  let g:terminal_color_13 = '#C678DD'
  let g:terminal_color_14 = '#56B6C2'
  let g:terminal_color_15 = '#5C6370'
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
  " }}}
  " Neovim LSP colors {{{
  highlight LspDiagnosticsDefaultError guifg= #E06C75 guibg= NONE guisp= NONE gui= NONE ctermfg=204 ctermbg=NONE cterm= NONE
  highlight LspDiagnosticsDefaultWarning guifg= #E5C07B guibg= NONE guisp= NONE gui= NONE ctermfg=180 ctermbg=NONE cterm= NONE
  highlight LspDiagnosticsDefaultInformation guifg= #ABB2BF guibg= NONE guisp= NONE gui= NONE ctermfg=145 ctermbg=NONE cterm= NONE
  highlight LspDiagnosticsDefaultHint guifg= #5C6370 guibg= NONE guisp= NONE gui= NONE ctermfg=59 ctermbg=NONE cterm= NONE
  highlight LspDiagnosticsUnderlineError guifg= #E06C75 guibg= NONE guisp= NONE gui= underline ctermfg=204 ctermbg=NONE cterm= underline
  highlight LspDiagnosticsUnderlineWarning guifg= #E5C07B guibg= NONE guisp= NONE gui= underline ctermfg=180 ctermbg=NONE cterm= underline
  highlight LspDiagnosticsUnderlineInformation guifg= #ABB2BF guibg= NONE guisp= NONE gui= underline ctermfg=145 ctermbg=NONE cterm= underline
  highlight LspDiagnosticsUnderlineHint guifg= #5C6370 guibg= NONE guisp= NONE gui= underline ctermfg=59 ctermbg=NONE cterm= underline
  " }}}
endif

" }}}

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
