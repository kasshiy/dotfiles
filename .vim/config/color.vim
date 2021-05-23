syntax enable

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

au ColorScheme * hi Comment cterm=italic
au ColorScheme * hi Normal ctermbg=none
au ColorScheme * hi NonText ctermbg=none
au ColorScheme * hi LineNr ctermbg=none
au ColorScheme * hi Folded ctermbg=none
au ColorScheme * hi EndOfBuffer ctermbg=none
