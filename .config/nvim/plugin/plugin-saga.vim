lua << EOF
require('lspsaga').init_lsp_saga()
require('lspkind').init()
EOF
nnoremap <silent><leader>cf :Lspsaga lsp_finder<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent><leader>csh :Lspsaga signature_help<CR>
nnoremap <silent><leader>cr :Lspsaga rename<CR>
nnoremap <silent><leader>cp :Lspsaga preview_definition<CR>
nnoremap <silent><leader>cd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent>[g :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>]g :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent>[ot :Lspsaga open_floaterm<CR>
tnoremap <silent>]ot <C-\><C-n>:Lspsaga close_floaterm<CR>
nnoremap <silent><leader>cla <cmd>lua vim.lsp.codelens.refresh();vim.lsp.codelens.run()<CR>

autocmd BufEnter <buffer> lua vim.lsp.codelens.refresh()
