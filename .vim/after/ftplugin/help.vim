wincmd H
vertical resize 81

" カーソル下のタグへ飛ぶ
nn <buffer>J <C-]>
" 戻る
nn <buffer>K <C-t>
" リンクしている単語を選択する
nn <buffer><silent><S-Tab> /\%(\_.\zs<Bar>[^ ]\+<Bar>\ze\_.\<Bar>CTRL-.\<Bar><[^ >]\+>\)<CR>
" その他
nn <buffer><silent>; :Helptags<CR>
nn <buffer>u <Plug>(mini-scroll-up)
nn <buffer>d <Plug>(mini-scroll-down)
nn <buffer>q <Cmd>helpclose<CR>

nnoremap <buffer> ? <Cmd>call searchx#start({ 'dir': 0 })<CR>
nnoremap <buffer> / <Cmd>call searchx#start({ 'dir': 1 })<CR>
xnoremap <buffer> ? <Cmd>call searchx#start({ 'dir': 0 })<CR>
xnoremap <buffer> / <Cmd>call searchx#start({ 'dir': 1 })<CR>
cnoremap <buffer> ; <Cmd>call searchx#select()<CR>

" Move to next/prev match.
nnoremap <buffer> N <Cmd>call searchx#prev_dir()<CR>
nnoremap <buffer> n <Cmd>call searchx#next_dir()<CR>
xnoremap <buffer> N <Cmd>call searchx#prev_dir()<CR>
xnoremap <buffer> n <Cmd>call searchx#next_dir()<CR>
nnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
nnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>
xnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
xnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>
cnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
cnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>

" Clear highlights
nnoremap <buffer> <C-l> <Cmd>call searchx#clear()<CR>

let g:searchx = {}

" Auto jump if the recent input matches to any marker.
let g:searchx.auto_accept = v:true

" The scrolloff value for moving to next/prev.
let g:searchx.scrolloff = &scrolloff

" To enable auto nohlsearch after cursor is moved
let g:searchx.nohlsearch = {}
let g:searchx.nohlsearch.jump = v:true

" Marker characters.
let g:searchx.markers = split('ABCDEFGHIJKLMNOPQRSTUVWXYZ', '.\zs')

" Convert search pattern.
function g:searchx.convert(input) abort
  if a:input !~# '\k'
    return '\V' .. a:input
  endif
  return a:input[0] .. substitute(a:input[1:], '\\\@<! ', '.\\{-}', 'g')
endfunction
