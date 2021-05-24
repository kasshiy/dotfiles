syntax enable

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

au ColorScheme * hi Comment cterm=italic gui=italic
au ColorScheme * hi Normal ctermbg=NONE guibg=NONE
au ColorScheme * hi NonText ctermbg=NONE guibg=NONE
au ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
au ColorScheme * hi Folded ctermbg=NONE guibg=NONE
au ColorScheme * hi EndOfBuffer ctermbg=NONE guibg=NONE

au ColorScheme * hi MatchParen cterm=bold ctermfg=214 ctermbg=black gui=bold guifg=#262626 guibg=#ABB2FB
au ColorScheme * hi Visual term=reverse cterm=bold ctermfg=119 ctermbg=241 gui=bold guifg=#76FF03 guibg=#606060
au ColorScheme * hi IncSearch term=reverse cterm=bold ctermfg=16 ctermbg=119 gui=bold guifg=#000000 guibg=#E5C07B
