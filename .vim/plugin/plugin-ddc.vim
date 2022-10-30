vim9script

ddc#custom#patch_global('ui', 'native')
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

pum#set_option('reversed', true)
ddc#custom#patch_global('sources', ['around', 'vim-lsp'])
inoremap <silent><expr> <TAB>
      \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
      \ '<TAB>' : ddc#map#manual_complete()
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-n>   <Cmd>call pum#map#select_relative(+1)<CR>
inoremap <C-p>   <Cmd>call pum#map#select_relative(-1)<CR>
inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
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
skkeleton#config({ 'globalJisyo': '~/.skk/SKK-JISYO.L' })
ddc#custom#patch_global('sourceOptions', {
  'skkeleton': {
    'mark': 'skk',
    'matchers': ['skkeleton'],
    'sorters': [],
    'minAutoCompleteLength': 2,
    'isVolatile': v:true,
  },
})
skkeleton#config({'completionRankFile': '~/.skkeleton/rank.json'})

imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)

autocmd User skkeleton-enable-pre Skkeleton_pre()
def Skkeleton_pre()
  # Overwrite sources
  var prev_buffer_config = ddc#custom#get_buffer()
  ddc#custom#patch_buffer('sources', ['skkeleton'])
enddef
autocmd User skkeleton-disable-pre Skkeleton_post()
def Skkeleton_post()
  # Restore sources
  ddc#custom#set_buffer(prev_buffer_config)
enddef

ddc#enable()
