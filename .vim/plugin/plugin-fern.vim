nn <silent><C-e> :Fern . -reveal=% -drawer -toggle -right -width=37<CR>

" ['\.git$','\.stack-work$','\.spago$','\.vscode', '\~$','\.o','\.cache$']
let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden = 1
let g:fern#comparator = 'lexical'

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" fern settings
function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  nnoremap <buffer> <silent> q :bd<CR>
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
  setlocal signcolumn=no
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
