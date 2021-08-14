nn <C-e> :Fern . -reveal=% -drawer -toggle -right -width=37<CR>

" ['\.git$','\.stack-work$','\.spago$','\.vscode', '\~$','\.o','\.cache$']
autocmd FileType fern setlocal signcolumn=no
let g:fern#renderer = 'nerdfont'

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
