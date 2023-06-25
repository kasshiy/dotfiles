wincmd H
vertical resize 81

setlocal signcolumn=no
" カーソル下のタグへ飛ぶ
nn <buffer>J <C-]>
" 戻る
nn <buffer>K <C-t>
" リンクしている単語を選択する
nn <buffer><silent><S-Tab> /\%(\_.\zs<Bar>[^ ]\+<Bar>\ze\_.\<Bar>CTRL-.\<Bar><[^ >]\+>\)<CR>
" その他
nn <buffer><silent>; :Helptags<CR>
" nn <buffer>u <cmd>call <SID>smooth_scroll('up')<CR>
" nn <buffer>d <cmd>call <SID>smooth_scroll('down')<CR>
nn <buffer>q <Cmd>helpclose<CR>
