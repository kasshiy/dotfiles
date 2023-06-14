let g:fzf_layout = { 'tmux': '-p90%,75%' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

nmap <Leader>f <Plug>(my-fzf-prefix)

nn <silent> <F1> <Cmd>Helptags<CR>
nn <silent> <Plug>(my-fzf-prefix)b <Cmd>Buffers<cr>
nn <silent> <Plug>(my-fzf-prefix)c <Cmd>Commands<cr>
nn <silent> <Plug>(my-fzf-prefix)f <Cmd>Files<CR>
nn <silent> <Plug>(my-fzf-prefix)g <Cmd>Rg<cr>
nn <silent> <Plug>(my-fzf-prefix)h <Cmd>History<cr>
nn <silent> <Plug>(my-fzf-prefix)m <Cmd>Maps<CR>
nn <silent> <Plug>(my-fzf-prefix)q <Cmd>Ghq<CR>
nn <silent> <Plug>(my-fzf-prefix)w <Cmd>Windows<CR>

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
\ 'ctrl-q': function('s:build_quickfix_list'),
\ 'ctrl-t': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }

command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\   'rg --column --line-number --no-heading --color=always --smart-case -- ' .. shellescape(<q-args>), 1,
\   fzf#vim#with_preview(), <bang>0)

command! -nargs=0 Ghq call fzf#run(fzf#wrap({ 'source': 'ghq list --full-path', 'sink': 'cd' }))

