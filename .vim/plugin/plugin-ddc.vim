vim9script

ddc#custom#patch_global('ui', 'pum')
ddc#custom#patch_global('sources', ['around', 'vim-lsp', 'skkeleton'])
ddc#custom#patch_global('sourceOptions', {
  'around': {'mark': 'A'},
  'vim-lsp': {
    'mark': 'lsp',
  },
  '_': {
    'matchers': ['matcher_fuzzy'],
    'sorters': ['sorter_fuzzy'],
    'converters': ['converter_fuzzy'],
  },
})

pum#set_option('reversed', false)
ddc#custom#patch_global('sources', ['around', 'vim-lsp'])
inoremap <silent><expr> <TAB>
      \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
      \ '<TAB>' : ddc#map#manual_complete()
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-n>   <Cmd>call pum#map#select_relative(+1)<CR>
inoremap <C-p>   <Cmd>call pum#map#select_relative(-1)<CR>
inoremap <silent><expr> <Space>
      \ pum#visible() ? '<Cmd>call pum#map#confirm()<CR>' : '<Space>'
#inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>

#ddc#custom#patch_global('autoCompleteEvents', [
#  'InsertEnter', 'TextChangedI', 'TextChangedP',
#  'CmdlineEnter', 'CmdlineChanged',
#])
#
#nnoremap : <Cmd>call <SID>CommandlinePre()<CR>:
#
#def CommandlinePre()
#  # Note: It disables default command line completion!
#  cnoremap <expr> <Tab>
#  \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
#  \ ddc#map#manual_complete()
#  cnoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
#  cnoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
#  cnoremap <C-e>   <Cmd>call pum#map#cancel()<CR>
#
#  # Overwrite sources
#  if !exists('b:prev_buffer_config')
#    b:prev_buffer_config = ddc#custom#get_buffer()
#  endif
#  ddc#custom#patch_buffer('sources', ['cmdline', 'cmdline-history', 'around'])
#
#  autocmd User DDCCmdlineLeave ++once call CommandlinePost()
#  autocmd InsertEnter <buffer> ++once call CommandlinePost()
#
#  # Enable command line completion
#  ddc#enable_cmdline_completion()
#enddef
#def CommandlinePost()
#  silent! cunmap <Tab>
#  silent! cunmap <S-Tab>
#  silent! cunmap <C-y>
#  silent! cunmap <C-e>
#
#  # Restore sources
#  if exists('b:prev_buffer_config')
#    ddc#custom#set_buffer(b:prev_buffer_config)
#    unlet b:prev_buffer_config
#  else
#    ddc#custom#set_buffer({})
#  endif
#enddef

# skkeleton
ddc#custom#patch_global('sourceOptions', {
  'skkeleton': {
    'mark': 'skk',
    'matchers': ['skkeleton'],
    'sorters': [],
    'minAutoCompleteLength': 2,
    'isVolatile': true,
  },
})

def Skkeleton_init()
  skkeleton#config({
     'eggLikeNewline': true,
     'keepState': true,
     'globalDictionaries': [["~/.skk/SKK-JISYO.L", "euc-jp"]],
     'completionRankFile': '~/.skkeleton/rank.json',
   })
  skkeleton#register_kanatable('rom', {
     'jj': 'escape',
     "z\<Space>": ["\u3000", ''],
   })
enddef

imap <silent> <C-j> <Plug>(skkeleton-toggle)
cmap <silent> <C-j> <Plug>(skkeleton-toggle)

def Skkeleton_pre()
  # Overwrite sources
  var prev_buffer_config = ddc#custom#get_buffer()
  ddc#custom#patch_buffer('sources', ['skkeleton'])
enddef
def Skkeleton_post()
  # Restore sources
  ddc#custom#set_buffer(prev_buffer_config)
enddef

augroup skkeleton-config
  autocmd!
  autocmd User skkeleton-initialize-pre Skkeleton_init()
  autocmd User skkeleton-enable-pre Skkeleton_pre()
  autocmd User skkeleton-disable-pre Skkeleton_post()
augroup END

ddc#enable()
