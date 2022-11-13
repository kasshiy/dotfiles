if exists("b:did_ftplugin")
  finish
endif
b:did_ftplugin = 1

wincmd H
vertical resize 81

" カーソル下のタグへ飛ぶ
nnoremap <buffer>J <C-]>
" 戻る
nnoremap <buffer>K <C-t>
" リンクしている単語を選択する
nnoremap <buffer><silent><S-Tab> /\%(\_.\zs<Bar>[^ ]\+<Bar>\ze\_.\<Bar>CTRL-.\<Bar><[^ >]\+>\)<CR>
" その他
nnoremap <buffer>u <C-u>
nnoremap <buffer>d <C-d>
nnoremap <buffer>q :<C-u>q<CR>
