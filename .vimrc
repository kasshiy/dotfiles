nmap j gj
nmap k gk

runtime! config/*.vim

"au VimEnter * colorscheme onedark
au VimEnter * colorscheme eva01-LCL

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}'. "\uE0A3" . '%{col(".")}'])

" Use <c-space> to trigger completion.
imap <silent><expr> <c-space> coc#refresh()
