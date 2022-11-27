vim9script

def Get_syn_id(transparent: bool): number
  var synid = synID(line("."), col("."), 1)
  if transparent
    return synIDtrans(synid)
  else
    return synid
  endif
enddef

def Get_syn_attr(synid: number): dict<string>
  var name = synIDattr(synid, "name")
  var ctermfg = synIDattr(synid, "fg", "cterm")
  var ctermbg = synIDattr(synid, "bg", "cterm")
  var guifg = synIDattr(synid, "fg", "gui")
  var guibg = synIDattr(synid, "bg", "gui")
  return {
    "name": name,
    "ctermfg": ctermfg,
    "ctermbg": ctermbg,
    "guifg": guifg,
    "guibg": guibg
  }
enddef

def Get_syn_info()
  var baseSyn = Get_syn_attr(Get_syn_id(0))
  var linkedSyn = Get_syn_attr(Get_syn_id(1))
  for key in keys(baseSyn)
    echohl String
    echon key .. ': ' 
    echohl None
    echon baseSyn[key] .. ' '
  endfor
  echo "link to\n"
  for key in keys(linkedSyn)
    echohl String
    echon key .. ': ' 
    echohl None
    echon linkedSyn[key] .. ' '
  endfor
enddef

command! SyntaxInfo Get_syn_info()
