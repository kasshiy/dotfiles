let g:qfhl_startup = 'enable'

let g:grepper = {}
let g:grepper.prompt_mapping_tool = '<leader>g'

nnoremap <leader>gs :Grepper -tool rg<CR>
nnoremap <leader>*  :Grepper -tool rg -cword<CR>
