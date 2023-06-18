call ddc#custom#patch_global('ui', 'pum')
call ddc#custom#patch_global('sources', ['around', 'skkeleton'])
call ddc#custom#patch_global('sourceOptions', {
\   'around': {'mark': 'A'},
\   '_': {
\     'matchers': ['matcher_fuzzy'],
\     'sorters': ['sorter_fuzzy'],
\     'converters': ['converter_fuzzy'],
\   },
\ })

call ddc#custom#patch_global('sources', ['nvim-lsp'])
call ddc#custom#patch_global('sourceOptions', #{
      \   nvim-lsp: #{
      \     mark: 'lsp',
      \     forceCompletionPattern: '\.\w*|:\w*|->\w*' },
      \ })

" Use Customized labels
call ddc#custom#patch_global('sourceParams', #{
      \   nvim-lsp: #{ kindLabels: #{ Class: 'c' } },
      \ })

call pum#set_option('reversed', v:false)
inoremap <silent><expr> <TAB>
      \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
      \ '<TAB>' : ddc#map#manual_complete()
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-n>   <Cmd>call pum#map#select_relative(+1)<CR>
inoremap <C-p>   <Cmd>call pum#map#select_relative(-1)<CR>
inoremap <silent><expr> <Space>
      \ pum#visible() ? '<Cmd>call pum#map#confirm()<CR>' : '<Space>'
inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>

"ddc#custom#patch_global('autoCompleteEvents', [
"  'InsertEnter', 'TextChangedI', 'TextChangedP',
"  'CmdlineEnter', 'CmdlineChanged',
"])
"
"nnoremap : <Cmd>call <SID>CommandlinePre()<CR>:
"
"function! CommandlinePre() abort
"  # Note: It disables default command line completion!
"  cnoremap <expr> <Tab>
"  \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
"  \ ddc#map#manual_complete()
"  cnoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
"  cnoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
"  cnoremap <C-e>   <Cmd>call pum#map#cancel()<CR>
"
"  # Overwrite sources
"  if !exists('b:prev_buffer_config')
"    b:prev_buffer_config = ddc#custom#get_buffer()
"  endif
"  ddc#custom#patch_buffer('sources', ['cmdline', 'cmdline-history', 'around'])
"
"  autocmd User DDCCmdlineLeave ++once call CommandlinePost()
"  autocmd InsertEnter <buffer> ++once call CommandlinePost()
"
"  # Enable command line completion
"  ddc#enable_cmdline_completion()
"endfunction
"function! CommandlinePost() abort
"  silent! cunmap <Tab>
"  silent! cunmap <S-Tab>
"  silent! cunmap <C-y>
"  silent! cunmap <C-e>
"
"  # Restore sources
"  if exists('b:prev_buffer_config')
"    ddc#custom#set_buffer(b:prev_buffer_config)
"    unlet b:prev_buffer_config
"  else
"    ddc#custom#set_buffer({})
"  endif
"endfunction

" skkeleton
call ddc#custom#patch_global('sourceOptions', {
\   'skkeleton': {
\     'mark': 'skk',
\     'matchers': ['skkeleton'],
\     'sorters': [],
\     'minAutoCompleteLength': 2,
\     'isVolatile': v:true,
\   },
\ })

function! s:skkeleton_init() abort
 call skkeleton#config({
 \    'eggLikeNewline': v:true,
 \    'keepState': v:true,
 \    'globalDictionaries': [["~/.skk/SKK-JISYO.L", "euc-jp"]],
 \    'completionRankFile': '~/.skkeleton/rank.json',
 \  })
 call skkeleton#register_kanatable('rom', {
 \    'jj': 'escape',
 \    "z\<Space>": ["\u3000", ''],
 \  })
endfunction

imap <silent> <C-j> <Plug>(skkeleton-toggle)
cmap <silent> <C-j> <Plug>(skkeleton-toggle)

function! s:skkeleton_pre() abort
  " Overwrite sources
  let s:prev_buffer_config = ddc#custom#get_buffer()
  call ddc#custom#patch_buffer('sources', ['skkeleton'])
endfunction
function! s:skkeleton_post() abort
  " Restore sources
  call ddc#custom#set_buffer(s:prev_buffer_config)
endfunction

augroup skkeleton-config
  autocmd!
  autocmd User skkeleton-initialize-pre call s:skkeleton_init()
  autocmd User skkeleton-enable-pre call s:skkeleton_pre()
  autocmd User skkeleton-disable-pre call s:skkeleton_post()
augroup END

call ddc#enable()
call signature_help#enable()
