if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,75%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.75 } }
endif
