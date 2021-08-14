nmap j gj
nmap k gk

runtime! config/*.vim

"colorscheme onedark
"colorscheme iceberg
colorscheme eva01-LCL

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}'. "\uE0A3" . '%{col(".")}'])

" Use <c-space> to trigger completion.
imap <silent><expr> <c-@> coc#refresh()

silent! nohlsearch
