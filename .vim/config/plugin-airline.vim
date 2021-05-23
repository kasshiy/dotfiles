let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'onedark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = "\uE0C6"
let g:airline_left_alt_sep = "省"
let g:airline_right_sep = "\uE0BA"
let g:airline_right_alt_sep = ""
let g:airline_symbols_crypt = '🔒'
