let g:lsp_diagnostics_signs_error = {'text': '🚨'}
let g:lsp_diagnostics_signs_warning = {'text': '🚧'}
let g:lsp_diagnostics_signs_information = {'text': '💬'}
let g:lsp_diagnostics_signs_hint = {'text': '💡'}
let g:lsp_document_code_action_signs_hint = {'text': '💡'}

let g:lsp_preview_float = 1
let g:lsp_diagnostics_echo_cursor = 0
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_format_sync_timeout = 1000
let g:lsp_documentation_float_docked = 1
let g:lsp_inlay_hints_enabled = 1
let g:lsp_semantic_enabled = 1
let g:lsp_code_actions_use_popup_menu = 1


hi! LspErrorHighlight guifg=#dc322f guibg=NONE guisp=#dc322f gui=undercurl cterm=undercurl
hi! LspInfoHighlight guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=undercurl
hi! LspWarningHighlight guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=undercurl

function! s:on_lsp_buffer_enabled() abort
  setlocal signcolumn=yes
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gs <plug>(lsp-document-symbol-search)
  nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> [g <plug>(lsp-previous-diagnostic)
  nmap <buffer> ]g <plug>(lsp-next-diagnostic)
  nmap <buffer> K <plug>(lsp-hover)
  nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
  nnoremap <buffer> <expr><c-b> lsp#scroll(-4)

  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> <leader>ca <plug>(lsp-code-action-float)
  nmap <buffer> <leader>cl <plug>(lsp-code-lens)

  let g:lsp_format_sync_timeout = 1000
  autocmd! BufWritePre *.rs,*.go,*.hs call execute('LspDocumentFormatSync')

endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

