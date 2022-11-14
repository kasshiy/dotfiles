let g:qfhl_startup = 'enable'
let g:qf_auto_resize = 0

nn [q <Plug>(qf_qf_previous)
nn ]q <Plug>(qf_qf_next)
nn [l <Plug>(qf_loc_previous)
nn ]l <Plug>(qf_loc_next)
nn [oq <Plug>(qf_qf_toggle)
nn <silent> ]oq <Cmd>cclose<CR>
nn [ol <Plug>(qf_loc_toggle)
nn <silent> ]ol <Cmd>lclose<CR>
nn Q <Plug>(qf_qf_switch)

let g:grepper = {}
let g:grepper.prompt_mapping_tool = '<leader>g'

nnoremap <leader>gs :Grepper -tool rg<CR>
nnoremap <leader>*  :Grepper -tool rg -cword<CR>
