syntax enable

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

au ColorScheme * hi Comment cterm=italic gui=italic
au ColorScheme * hi Normal ctermbg=NONE guibg=NONE
au ColorScheme * hi NonText ctermbg=NONE guibg=NONE
au ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
au ColorScheme * hi CursorLineNr ctermbg=NONE cterm=bold guibg=NONE guifg=#E07307 gui=bold
au ColorScheme * hi Folded ctermbg=NONE guibg=NONE
au ColorScheme * hi EndOfBuffer ctermbg=NONE guibg=NONE guifg=#765300
au ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
au ColorScheme * hi CursorLine ctermbg=NONE guibg=NONE
au ColorScheme * hi VertSplit ctermbg=NONE guibg=NONE

au ColorScheme eva01-LCL hi MatchParen gui=bold term=bold ctermbg=110 guifg=#84a0c6
au ColorScheme eva01-LCL hi QuickFixLine guifg=#84a0c6 guibg=NONE term=bold
au ColorScheme eva01-LCL hi Visual term=reverse cterm=bold ctermfg=119 ctermbg=241 gui=bold guifg=#30C250 guibg=#3C6514
au ColorScheme eva01-LCL hi IncSearch term=reverse cterm=bold ctermfg=16 ctermbg=119 gui=bold guifg=#101010 guibg=#D3B071
au ColorScheme eva01-LCL hi Search gui=bold guibg=#84a0c6 guifg=#101010
au ColorScheme eva01-LCL hi Pmenu guifg=#D7D1DC guibg=#101010

""""""""""""""""""""
"     haskell      "
""""""""""""""""""""
au ColorScheme * hi link haskellWhere Include
au ColorScheme * hi link haskellDeriveKeyword Include
au ColorScheme eva01-LCL hi haskellDecl guifg=#EBA500
au ColorScheme * hi link haskellDeclKeyword haskellDecl
au ColorScheme eva01-LCL hi haskellKeyword cterm=italic gui=italic guifg=#C993FF

au ColorScheme * hi link haskellNumber Normal
au ColorScheme * hi link haskellDelimiter Normal
au ColorScheme * hi link haskellPragma SpecialComment

colorscheme eva01-LCL
