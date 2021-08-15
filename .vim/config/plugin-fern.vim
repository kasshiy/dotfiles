nn <silent><C-e> :Fern . -reveal=% -drawer -toggle -right -width=37<CR>

" ['\.git$','\.stack-work$','\.spago$','\.vscode', '\~$','\.o','\.cache$']
let g:fern#renderer = 'nerdfont'

let g:fern#comparator = 'lexical'

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
  setlocal signcolumn=no
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
