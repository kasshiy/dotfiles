let g:fzf_layout = { 'tmux': '-p90%,75%' }

nmap <Leader>f <Plug>(my-fzf-switch)

nn <silent> <F1> :Helptags<CR>
nn <silent> <Plug>(my-fzf-switch)b :Buffers<cr>
nn <silent> <Plug>(my-fzf-switch)c :Commands<cr>
nn <silent> <Plug>(my-fzf-switch)g :Rg<cr>
nn <silent> <Plug>(my-fzf-switch)h :History<cr>
nn <silent> <Plug>(my-fzf-switch)m :Maps<CR>
nn <silent> <Plug>(my-fzf-switch)t :FZF<CR>
nn <silent> <Plug>(my-fzf-switch)w :Windows<CR>
