nnoremap <silent> ,ff :Telescope git_files<CR>
nnoremap <silent> ,fg :Telescope live_grep<cr>
nnoremap <silent> ,fb :Telescope buffers<cr>
nnoremap <silent> ,fh :Telescope oldfiles<cr>
nnoremap <silent> ,fe :Telescope file_browser<cr>
nnoremap <silent> ,fp :Telescope project<CR>
nnoremap <silent> ,fr :Telescope frecency<CR>
nnoremap <silent> ,fy :Telescope symbols<CR>

nnoremap <silent> ,fa :lua require('telescope').extensions.arecibo.websearch()<CR>
nnoremap <silent> ,fd :lua require('config.telescope').search_dotfiles()<CR>
nnoremap <silent> ,fx :lua require('config.telescope').switch_projects()<CR>

