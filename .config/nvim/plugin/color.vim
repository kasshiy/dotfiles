set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" wave line
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

set background=dark

function! Default_color()
  hi Comment cterm=italic gui=italic
  hi Normal ctermbg=NONE guibg=NONE
  hi NormalNC ctermbg=NONE guibg=NONE
  hi NonText ctermbg=NONE guibg=NONE
  hi LineNr ctermbg=NONE guibg=NONE
  hi CursorLineNr ctermbg=NONE cterm=bold guibg=NONE guifg=#E07307 gui=bold
  hi Folded ctermbg=NONE guibg=NONE
  hi EndOfBuffer ctermbg=NONE guibg=NONE guifg=#765300
  hi SignColumn ctermbg=NONE guibg=NONE
  hi CursorLine ctermbg=NONE guibg=NONE
  hi VertSplit ctermbg=NONE guibg=NONE

  hi link haskellTSConstMacro SpecialComment
  hi link haskellTSConstructor Type
  hi link haskellTSKeyword Statement
  hi haskellTSKeyword gui=italic
  hi link haskellTSType Identifier
  hi link haskellTSFunction Normal
  hi link TSPunctBracket Normal
  hi link haskellTSNamespace Number
  hi link haskellTSCharacter String

  hi link haskellWhere Include
  hi link haskellDeriveKeyword Include
  hi link haskellDecl Statement
  hi link haskellDeclKeyword haskellDecl
  hi link haskellKeyword Keyword

  hi link haskellNumber Normal
  hi link haskellDelimiter Normal
  hi link haskellPragma SpecialComment
endfunction

function! Eva_color()
  hi haskellKeyword guifg=#C993FF
endfunction

augroup mycolor
  au!
  au ColorScheme * call Default_color()
  au ColorScheme eva01-LCL call Eva_color()
augroup END

colorscheme eva01-LCL
