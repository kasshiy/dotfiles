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
nn <buffer>u <Plug>(smooth-scroll-up)
nn <buffer>d <Plug>(smooth-scroll-down)
nn <buffer>q :<C-u>q<CR>
