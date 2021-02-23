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

highlight Comment guifg=#5C6370 guibg=NONE guisp=NONE gui=italic " any comment
highlight Constant guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE " any constant
highlight String guifg=#98C379 guibg=NONE guisp=NONE gui=NONE " a string constant: "this is a string"
highlight Character guifg=#98C379 guibg=NONE guisp=NONE gui=NONE " a character constant: 'c', '\n'
highlight Number guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " a number constant: 234, 0xff
highlight Boolean guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " a boolean constant: TRUE, false
highlight Float guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " a floating point constant: 2.3e10
highlight Identifier guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE " any variable name
highlight Function guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE " function name (also: methods for classes)
highlight Statement guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " any statement
highlight Conditional guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " if, then, else, endif, switch, etc.
highlight Repeat guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " for, do, while, etc.
highlight Label guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " case, default, etc.
highlight Operator guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " sizeof", "+", "*", etc.
highlight Keyword guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE " any other keyword
highlight Exception guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " try, catch, throw
highlight PreProc guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " generic Preprocessor
highlight Include guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE " preprocessor #include
highlight Define guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " preprocessor #define
highlight Macro guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " same as Define
highlight PreCondit guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " preprocessor #if, #else, #endif, etc.
highlight Type guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " int, long, char, etc.
highlight StorageClass guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " static, register, volatile, etc.
highlight Structure guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " struct, union, enum, etc.
highlight Typedef guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " A typedef
highlight Special guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE " any special symbol
highlight SpecialChar guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " special character in a constant
highlight Tag guifg=NONE guibg=NONE guisp=NONE gui=NONE " you can use CTRL-] on this
highlight Delimiter guifg=NONE guibg=NONE guisp=NONE gui=NONE " character that needs attention
highlight SpecialComment guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE " special things inside a comment
highlight Debug guifg=NONE guibg=NONE guisp=NONE gui=NONE " debugging statements
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline " text that stands out, HTML links
highlight Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE " left blank, hidden
highlight Error guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE " any erroneous construct
highlight Todo guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" }}}

" Highlighting Groups (descriptions and ordering from `:h highlight-groups`) {{{
highlight ColorColumn guifg=NONE guibg=#2C323C guisp=NONE gui=NONE " used for the columns set with 'colorcolumn'
highlight Conceal guifg=NONE guibg=NONE guisp=NONE gui=NONE " placeholder characters substituted for concealed text (see 'conceallevel')
highlight Cursor guifg=#282C34 guibg=#61AFEF guisp=NONE gui=NONE " the character under the cursor
highlight CursorIM guifg=NONE guibg=NONE guisp=NONE gui=NONE " like Cursor, but used when in IME mode
highlight CursorColumn guifg=NONE guibg=#2C323C guisp=NONE gui=NONE " the screen column that the cursor is in when 'cursorcolumn' is set
if &diff
  " Don't change the background color in diff mode
  highlight CursorLine guifg=NONE guibg=NONE guisp=NONE gui=underline " the screen line that the cursor is in when 'cursorline' is set
else
  highlight CursorLine guifg=NONE guibg=#2C323C guisp=NONE gui=NONE " the screen line that the cursor is in when 'cursorline' is set
endif
highlight Directory guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE " directory names (and other special names in listings)
highlight DiffAdd guifg=#282C34 guibg=#98C379 guisp=NONE gui=NONE " diff mode: Added line
highlight DiffChange guifg=#E5C07B guibg=NONE guisp=NONE gui=underline " diff mode: Changed line
highlight DiffDelete guifg=#282C34 guibg=#E06C75 guisp=NONE gui=NONE " diff mode: Deleted line
highlight DiffText guifg=#282C34 guibg=#E5C07B guisp=NONE gui=NONE " diff mode: Changed text within a changed line
highlight ErrorMsg guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE " error messages on the command line
highlight VertSplit guifg=#181A1F guibg=NONE guisp=NONE gui=NONE " the column separating vertically split windows
highlight Folded guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE " line used for closed folds
highlight FoldColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE " 'foldcolumn'
highlight SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE " column where signs are displayed
highlight IncSearch guifg=#E5C07B guibg=#5C6370 guisp=NONE gui=NONE " 'incsearch' highlighting; also used for the text replaced with ":s///c"
highlight LineNr guifg=#4B5263 guibg=NONE guisp=NONE gui=NONE " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
highlight CursorLineNr guifg=NONE guibg=NONE guisp=NONE gui=NONE " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
highlight MatchParen guifg=#61AFEF guibg=NONE guisp=NONE gui=underline " The character under the cursor or just before it, if it is a paired bracket, and its match.
highlight ModeMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE " 'showmode' message (e.g., "-- INSERT --")
highlight MoreMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE " more-prompt
highlight NonText guifg=#3B4048 guibg=NONE guisp=NONE gui=NONE " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
highlight Normal guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE " normal text
highlight Pmenu guifg=NONE guibg=#21222C guisp=NONE gui=NONE " Popup menu: normal item.
highlight PmenuSel guifg=#282C34 guibg=#61AFEF guisp=NONE gui=NONE " Popup menu: selected item.
highlight PmenuSbar guifg=NONE guibg=#21222C guisp=NONE gui=NONE " Popup menu: scrollbar.
highlight PmenuThumb guifg=NONE guibg=#ABB2BF guisp=NONE gui=NONE " Popup menu: Thumb of the scrollbar.
highlight Question guifg=#C678DD guibg=NONE guisp=NONE gui=NONE " hit-enter prompt and yes/no questions
highlight QuickFixLine guifg=#282C34 guibg=#E5C07B guisp=NONE gui=NONE " Current quickfix item in the quickfix window.
highlight Search guifg=#282C34 guibg=#E5C07B guisp=NONE gui=NONE " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
highlight SpecialKey guifg=#3B4048 guibg=NONE guisp=NONE gui=NONE " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
highlight SpellBad guifg=#E06C75 guibg=NONE guisp=NONE gui=underline " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
highlight SpellCap guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " Word that should start with a capital. This will be combined with the highlighting used otherwise.
highlight SpellLocal guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
highlight SpellRare guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
highlight StatusLine guifg=#ABB2BF guibg=#2C323C guisp=NONE gui=NONE " status line of current window
highlight StatusLineNC guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
highlight StatusLineTerm guifg=#ABB2BF guibg=#2C323C guisp=NONE gui=NONE " status line of current :terminal window
highlight StatusLineTermNC guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE " status line of non-current :terminal window
highlight TabLine guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE " tab pages line, not active tab page label
highlight TabLineFill guifg=NONE guibg=NONE guisp=NONE gui=NONE " tab pages line, where there are no labels
highlight TabLineSel guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE " tab pages line, active tab page label
highlight Terminal guifg=#ABB2BF guibg=#282C34 guisp=NONE gui=NONE " terminal window (see terminal-size-color)
highlight Title guifg=#98C379 guibg=NONE guisp=NONE gui=NONE " titles for output from ":set all", ":autocmd" etc.
highlight Visual guifg=NONE guibg=#3E4452 guisp=NONE gui=NONE " Visual mode selection
highlight VisualNOS guifg=NONE guibg=#3E4452 guisp=NONE gui=NONE " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
highlight WarningMsg guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE " warning messages
highlight WildMenu guifg=#282C34 guibg=#61AFEF guisp=NONE gui=NONE " current match in 'wildmenu' completion

" }}}

" Termdebug highlighting for Vim 8.1+ {{{

" See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
highlight debugPC guifg=NONE guibg=#3B4048 guisp=NONE gui=NONE " the current position
highlight debugBreakpoint guifg=#282C34 guibg=#E06C75 guisp=NONE gui=NONE " a breakpoint

" }}}

" Language-Specific Highlighting {{{

" CSS
highlight cssAttrComma guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssAttributeSelector guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight cssBraces guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight cssClassName guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight cssClassNameDot guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight cssDefinition guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssFontAttr guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight cssFontDescriptor guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssFunctionName guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight cssIdentifier guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight cssImportant guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssInclude guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight cssIncludeKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssMediaType guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight cssProp guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight cssPseudoClassId guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight cssSelectorOp guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssSelectorOp2 guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight cssTagName guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE

" Fish Shell
highlight fishKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight fishConditional guifg=#C678DD guibg=NONE guisp=NONE gui=NONE

" Go
highlight goDeclaration guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight goBuiltins guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight goFunctionCall guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight goVarDefs guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight goVarAssign guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight goVar guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight goConst guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight goType guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight goTypeName guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight goDeclType guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight goTypeDecl guifg=#C678DD guibg=NONE guisp=NONE gui=NONE

" HTML (keep consistent with Markdown, below)
highlight htmlArg guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight htmlBold guifg=#D19A66 guibg=NONE guisp=NONE gui=bold
highlight htmlEndTag guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight htmlH1 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlH2 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlH3 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlH4 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlH5 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlH6 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlItalic guifg=#C678DD guibg=NONE guisp=NONE gui=italic
highlight htmlLink guifg=#56B6C2 guibg=NONE guisp=NONE gui=underline
highlight htmlSpecialChar guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight htmlSpecialTagName guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlTag guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight htmlTagN guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlTagName guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight htmlTitle guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE

" JavaScript
highlight javaScriptBraces guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight javaScriptFunction guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javaScriptIdentifier guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javaScriptNull guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight javaScriptNumber guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight javaScriptRequire guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight javaScriptReserved guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
" https://github.com/pangloss/vim-javascript
highlight jsArrowFunction guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsClassKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsClassMethodType guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsDocParam guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight jsDocTags guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsExport guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsExportDefault guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsExtendsKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsFrom guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsFuncCall guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight jsFunction guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsGenerator guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight jsGlobalObjects guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight jsImport guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsModuleAs guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsModuleWords guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsModules guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsNull guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight jsOperator guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsStorageClass guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight jsSuper guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight jsTemplateBraces guifg=#BE5046 guibg=NONE guisp=NONE gui=NONE
highlight jsTemplateVar guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight jsThis guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight jsUndefined guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
" https://github.com/othree/yajs.vim
highlight javascriptArrowFunc guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptClassExtends guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptClassKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptDocNotation guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptDocParamName guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight javascriptDocTags guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptEndColons guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight javascriptExport guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptFuncArg guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight javascriptFuncKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptIdentifier guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight javascriptImport guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight javascriptMethodName guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight javascriptObjectLabel guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight javascriptOpSymbol guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight javascriptOpSymbols guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight javascriptPropertyName guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight javascriptTemplateSB guifg=#BE5046 guibg=NONE guisp=NONE gui=NONE
highlight javascriptVariable guifg=#C678DD guibg=NONE guisp=NONE gui=NONE

" JSON
highlight jsonCommentError guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight jsonKeyword guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight jsonBoolean guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight jsonNumber guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight jsonQuote guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight jsonMissingCommaError guifg=#E06C75 guibg=NONE guisp=NONE gui=reverse
highlight jsonNoQuotesError guifg=#E06C75 guibg=NONE guisp=NONE gui=reverse
highlight jsonNumError guifg=#E06C75 guibg=NONE guisp=NONE gui=reverse
highlight jsonString guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight jsonStringSQError guifg=#E06C75 guibg=NONE guisp=NONE gui=reverse
highlight jsonSemicolonError guifg=#E06C75 guibg=NONE guisp=NONE gui=reverse

" LESS
highlight lessVariable guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight lessAmpersandChar guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight lessClass guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE

" Markdown (keep consistent with HTML, above)
highlight markdownBlockquote guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight markdownBold guifg=#D19A66 guibg=NONE guisp=NONE gui=bold
highlight markdownCode guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight markdownCodeBlock guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight markdownCodeDelimiter guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight markdownH1 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownH2 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownH3 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownH4 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownH5 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownH6 guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownHeadingDelimiter guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownHeadingRule guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight markdownId guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight markdownIdDeclaration guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight markdownIdDelimiter guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight markdownItalic guifg=#C678DD guibg=NONE guisp=NONE gui=italic
highlight markdownLinkDelimiter guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight markdownLinkText guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight markdownListMarker guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownOrderedListMarker guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight markdownRule guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight markdownUrl guifg=#56B6C2 guibg=NONE guisp=NONE gui=underline

" Perl
highlight perlFiledescRead guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight perlFunction guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight perlMatchStartEnd guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight perlMethod guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight perlPOD guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight perlSharpBang guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight perlSpecialString guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight perlStatementFiledesc guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight perlStatementFlow guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight perlStatementInclude guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight perlStatementScalar guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight perlStatementStorage guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight perlSubName guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight perlVarPlain guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE

" PHP
highlight phpVarSelector guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight phpOperator guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpParent guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpMemberSelector guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpType guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight phpKeyword guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight phpClass guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight phpUseClass guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpUseAlias guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpInclude guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight phpClassExtends guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight phpDocTags guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight phpFunction guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight phpFunctions guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight phpMethodsVar guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight phpMagicConstants guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight phpSuperglobals guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight phpConstants guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE

" Ruby
highlight rubyBlockParameter guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyBlockParameterList guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyClass guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight rubyConstant guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight rubyControl guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight rubyEscape guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyFunction guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight rubyGlobalVariable guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyInclude guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight rubyIncluderubyGlobalVariable guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyInstanceVariable guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyInterpolation guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight rubyInterpolationDelimiter guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyInterpolationDelimiter guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight rubyRegexp guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight rubyRegexpDelimiter guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight rubyStringDelimiter guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight rubySymbol guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE

" Sass
" https://github.com/tpope/vim-haml
highlight sassAmpersand guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight sassClass guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight sassControl guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassExtend guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassFor guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight sassFunction guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight sassId guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight sassInclude guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassMedia guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassMediaOperators guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight sassMixin guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassMixinName guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight sassMixing guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight sassVariable guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
" https://github.com/cakebaker/scss-syntax.vim
highlight scssExtend guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight scssImport guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight scssInclude guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight scssMixin guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight scssSelectorName guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight scssVariable guifg=#C678DD guibg=NONE guisp=NONE gui=NONE

" TeX
highlight texStatement guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight texSubscripts guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight texSuperscripts guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight texTodo guifg=#BE5046 guibg=NONE guisp=NONE gui=NONE
highlight texBeginEnd guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight texBeginEndName guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight texMathMatcher guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight texMathDelim guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight texDelimiter guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight texSpecialChar guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight texCite guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight texRefZone guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE

" TypeScript
highlight typescriptReserved guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight typescriptEndColons guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight typescriptBraces guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE

" XML
highlight xmlAttrib guifg=#D19A66 guibg=NONE guisp=NONE gui=NONE
highlight xmlEndTag guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight xmlTag guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight xmlTagName guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE

" }}}

" Plugin Highlighting {{{

" airblade/vim-gitgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete

" dense-analysis/ale
highlight ALEError guifg=#E06C75 guibg=NONE guisp=NONE gui=underline
highlight ALEWarning guifg=#E5C07B guibg=NONE guisp=NONE gui=underline
highlight ALEInfo guifg=NONE guibg=NONE guisp=NONE gui=underline

" easymotion/vim-easymotion
highlight EasyMotionTarget guifg=#E06C75 guibg=NONE guisp=NONE gui=bold
highlight EasyMotionTarget2First guifg=#E5C07B guibg=NONE guisp=NONE gui=bold
highlight EasyMotionTarget2Second guifg=#D19A66 guibg=NONE guisp=NONE gui=bold
highlight EasyMotionShade guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE

" mhinz/vim-signify
highlight SignifySignAdd guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight SignifySignChange guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight SignifySignDelete guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE

" neomake/neomake
highlight NeomakeWarningSign guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight NeomakeErrorSign guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight NeomakeInfoSign guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE

" plasticboy/vim-markdown (keep consistent with Markdown, above)
highlight mkdDelimiter guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight mkdHeading guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight mkdLink guifg=#61AFEF guibg=NONE guisp=NONE gui=NONE
highlight mkdURL guifg=#56B6C2 guibg=NONE guisp=NONE gui=underline

" tpope/vim-fugitive
highlight diffAdded guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight diffRemoved guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE

" ap/vim-buftabline
highlight link BufTabLineActive TabLine
highlight link BufTabLineModifiedHidden TabLine

" }}}

" Git Highlighting {{{

highlight gitcommitComment guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitUnmerged guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitOnBranch guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight gitcommitBranch guifg=#C678DD guibg=NONE guisp=NONE gui=NONE
highlight gitcommitDiscardedType guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitSelectedType guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitHeader guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight gitcommitUntrackedFile guifg=#56B6C2 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitDiscardedFile guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitSelectedFile guifg=#98C379 guibg=NONE guisp=NONE gui=NONE
highlight gitcommitUnmergedFile guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
highlight gitcommitFile guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight gitcommitSummary guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
highlight gitcommitOverflow guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
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
  " Neovim LSP colors {{{
  highlight LspDiagnosticsDefaultError guifg=#E06C75 guibg=NONE guisp=NONE gui=NONE
  highlight LspDiagnosticsDefaultWarning guifg=#E5C07B guibg=NONE guisp=NONE gui=NONE
  highlight LspDiagnosticsDefaultInformation guifg=#ABB2BF guibg=NONE guisp=NONE gui=NONE
  highlight LspDiagnosticsDefaultHint guifg=#5C6370 guibg=NONE guisp=NONE gui=NONE
  highlight LspDiagnosticsUnderlineError guifg=#E06C75 guibg=NONE guisp=NONE gui=underline
  highlight LspDiagnosticsUnderlineWarning guifg=#E5C07B guibg=NONE guisp=NONE gui=underline
  highlight LspDiagnosticsUnderlineInformation guifg=#ABB2BF guibg=NONE guisp=NONE gui=underline
  highlight LspDiagnosticsUnderlineHint guifg=#5C6370 guibg=NONE guisp=NONE gui=underline
  " }}}
endif

" }}}

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
