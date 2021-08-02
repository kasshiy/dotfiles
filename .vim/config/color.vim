syntax enable

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let &t_Cs = "\<Esc>[4:3m"
let &t_Ce = "\<Esc>[4:0m"

set background=dark

au ColorScheme * hi Comment cterm=italic gui=italic
au ColorScheme * hi Normal ctermbg=NONE guibg=NONE
au ColorScheme * hi NonText ctermbg=NONE guibg=NONE
au ColorScheme * hi LineNr ctermbg=NONE cterm=italic guibg=NONE gui=italic
au ColorScheme * hi CursorLineNr ctermbg=NONE cterm=italic guifg=#E07307 gui=italic
au ColorScheme * hi Folded ctermbg=NONE guibg=NONE
au ColorScheme * hi EndOfBuffer ctermbg=NONE guibg=NONE

au ColorScheme * hi MatchParen gui=bold term=bold ctermbg=110 guifg=#84a0c6
au ColorScheme * hi QuickFixLine guifg=#84a0c6 guibg=NONE term=bold
au ColorScheme * hi Visual term=reverse cterm=bold ctermfg=119 ctermbg=241 gui=bold guifg=#30C250 guibg=#3C6514
au ColorScheme * hi IncSearch term=reverse cterm=bold ctermfg=16 ctermbg=119 gui=bold guifg=#101010 guibg=#D3B071
au ColorScheme * hi Search gui=bold guibg=#84a0c6 guifg=#101010
