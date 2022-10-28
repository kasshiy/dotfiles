set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

au ColorScheme * hi Comment cterm=italic gui=italic
au ColorScheme * hi Normal ctermbg=NONE guibg=NONE
au ColorScheme * hi NormalNC ctermbg=NONE guibg=NONE
au ColorScheme * hi NonText ctermbg=NONE guibg=NONE
au ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
au ColorScheme * hi CursorLineNr ctermbg=NONE cterm=bold guibg=NONE guifg=#E07307 gui=bold
au ColorScheme * hi Folded ctermbg=NONE guibg=NONE
au ColorScheme * hi EndOfBuffer ctermbg=NONE guibg=NONE guifg=#765300
au ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
au ColorScheme * hi CursorLine ctermbg=NONE guibg=NONE
au ColorScheme * hi VertSplit ctermbg=NONE guibg=NONE

""""""""""""""""""""
"     haskell      "
""""""""""""""""""""
augroup hs_color
  au!
  au ColorScheme * hi link haskellTSConstMacro SpecialComment
  au ColorScheme * hi link haskellTSConstructor Type
  au ColorScheme * hi link haskellTSKeyword Statement
  au ColorScheme * hi haskellTSKeyword gui=italic
  au ColorScheme * hi link haskellTSType Identifier
  au ColorScheme * hi link haskellTSFunction Normal
  au ColorScheme * hi link TSPunctBracket Normal
  au ColorScheme * hi link haskellTSNamespace Number
  au ColorScheme * hi link haskellTSCharacter String

  au ColorScheme * hi link haskellWhere Include
  au ColorScheme * hi link haskellDeriveKeyword Include
  au ColorScheme * hi link haskellDecl Statement
  au ColorScheme * hi link haskellDeclKeyword haskellDecl
  au ColorScheme * hi link haskellKeyword Keyword
  au ColorScheme eva01-LCL hi haskellKeyword guifg=#C993FF

  au ColorScheme * hi link haskellNumber Normal
  au ColorScheme * hi link haskellDelimiter Normal
  au ColorScheme * hi link haskellPragma SpecialComment
augroup END

colorscheme eva01-LCL
