nmap j gj
nmap k gk

runtime! config/*.vim

"colorscheme onedark
colorscheme eva01-LCL

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}'. "\uE0A3" . '%{col(".")}'])

" Async Run
let g:asyncrun_status = ''
let g:airline_section_error = g:airline#section#create_right(['%{g:asyncrun_status}'])

" Use <c-space> to trigger completion.
imap <silent><expr> <c-@> coc#refresh()
