nn <silent> <F1> :Telescope help_tags<CR>
nn <silent> ,ff :Telescope find_files<CR>
nn <silent> ,fg :Telescope live_grep<cr>
nn <silent> ,fb :Telescope buffers<cr>
nn <silent> ,fh :Telescope oldfiles<cr>
nn <silent> ,fe :Telescope file_browser<cr>
nn <silent> ,ft :Telescope<CR>
nn <silent> ,fy :Telescope symbols<CR>

"nn <silent> ,fa :lua require('telescope').extensions.arecibo.websearch()<CR>
"nn <silent> ,fd :lua require('config.telescope').search_dotfiles()<CR>
"nn <silent> ,fx :lua require('config.telescope').switch_projects()<CR>

let g:dashboard_default_executive ='telescope'
let g:indentLine_fileTypeExclude = ['dashboard']

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
