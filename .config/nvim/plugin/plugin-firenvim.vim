"let fc['.*'] =  {'cmdline' : 'firenvim' }

let g:firenvim_config = {
\ "globalSettings": {
\   "server": "persistent"
\  }
\}

"au TextChanged * ++nested write
"au TextChangedI * ++nested write

augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_excluded_filetypes = ['fern', 'tagbar']
let g:scrollbar_shape = {
\ 'head': '▖',
\ 'body': '▌',
\ 'tail': '▘',
\ }
