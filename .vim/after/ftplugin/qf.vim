vim9script

noremap <buffer> p <plug>(qf-preview-open)
b:qfpreview = {
    halfpagedown: 'd',
    halfpageup: 'u',
    fullpagedown: 'f',
    fullpageup: 'b',
    close: "\<Esc>",
    number: true,
    offset: 5,
    sign: {text: '>>', texthl: 'Todo'},
    height: 20
}

nn <buffer> H <Plug>(qf_older)
nn <buffer> L <Plug>(qf_newer)
nn <buffer> { <Plug>(qf_previous_file)
nn <buffer> } <Plug>(qf_next_file)

# loop scroll
noremap <silent> <buffer> <expr> j <SID>Jk(1)
noremap <silent> <buffer> <expr> k <SID>Jk(-1)

def Jk(motion: number): string
  var max = line('$')
  var list = getloclist(0)
  if empty(list) || len(list) != max
    list = getqflist()
  endif
  var cur = line('.') - 1
  var pos = float2nr(fmod(cur + motion, max))
  var m = 0 < motion ? 1 : -1
  while cur != pos && list[pos].bufnr == 0
    pos = float2nr(fmod(pos + m, max))
  endwhile
  return (pos + 1) .. 'G'
enddef
