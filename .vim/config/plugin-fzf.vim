nn <silent> <F1> :Helptags<CR>
nn <silent> \ag :Ag<CR>
nn <silent> \fb :Buffers<CR>
nn <silent> \ff :Files<CR>
nn <silent> \fh :History<CR>
nn <silent> \fw :Windows<CR>

if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,75%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
endif
