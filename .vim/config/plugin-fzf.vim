nnoremap <silent> <F1> :Helptags<CR>
nnoremap <silent> \ag :Ag<CR>
nnoremap <silent> \fb :Buffers<CR>
nnoremap <silent> \ff :Files<CR>
nnoremap <silent> \fg :FzfPreviewGitActionsRpc<CR>
nnoremap <silent> \fh :History<CR>
nnoremap <silent> \fw :Windows<CR>

"if exists('$TMUX')
"  let g:fzf_layout = { 'tmux': '-p90%,70%' }
"else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
"endif
