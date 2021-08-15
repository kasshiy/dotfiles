syntax enable

colorscheme eva01-LCL

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

hi Comment cterm=italic gui=italic
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE cterm=italic guibg=NONE gui=italic
hi CursorLineNr ctermbg=NONE cterm=italic guibg=NONE guifg=#E07307 gui=italic
hi Folded ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermbg=NONE guibg=NONE guifg=#765300
hi SignColumn ctermbg=NONE guibg=NONE
hi CursorLine ctermbg=NONE guibg=NONE

hi MatchParen gui=bold term=bold ctermbg=110 guifg=#84a0c6
hi QuickFixLine guifg=#84a0c6 guibg=NONE term=bold
hi Visual term=reverse cterm=bold ctermfg=119 ctermbg=241 gui=bold guifg=#30C250 guibg=#3C6514
hi IncSearch term=reverse cterm=bold ctermfg=16 ctermbg=119 gui=bold guifg=#101010 guibg=#D3B071
hi Search gui=bold guibg=#84a0c6 guifg=#101010
