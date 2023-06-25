nn <silent> [b <cmd>:bprevious<CR>
nn <silent> ]b <cmd>:bnext<CR>
nn <silent> [q <cmd>:cprevious<CR>
nn <silent> ]q <cmd>:cnext<CR>
nn <silent> [l <cmd>:lprevious<CR>
nn <silent> ]l <cmd>:lnext<CR>
nn <silent> [t gT
nn <silent> ]t gt

function! s:blank_above(type = '') abort
  if a:type == ''
    set operatorfunc=function('s:blank_above')
    return 'g@ '
  endif

  for i in range(v:count1)
    call append(line('.') - 1, '')
  endfor
endfunction

function! s:blank_below(type = '') abort
  if a:type == ''
    set operatorfunc=function('s:blank_below')
    return 'g@ '
  endif

  for i in range(v:count1)
    call append(line('.'), '')
  endfor
endfunction

nn [<Space> <SID>s:blank_above()
nn ]<Space> <SID>s:blank_below()

function! s:replace_above()
endfunction

function! s:replace_below()
endfunction

nn [<Space> <SID>s:replace_above()
nn ]<Space> <SID>s:replace_below()

