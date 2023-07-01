return {
  "lambdalisue/fern.vim",
  event = "VeryLazy",
  dependencies = {
    "lambdalisue/fern-renderer-nerdfont.vim",
    "lambdalisue/fern-git-status.vim",
    "lambdalisue/fern-bookmark.vim",
    "lambdalisue/fern-hijack.vim",
    "lambdalisue/fern-mapping-quickfix.vim",
    "LumaKernel/fern-mapping-fzf.vim",
    "yuki-yano/fern-preview.vim",
    "lambdalisue/glyph-palette.vim",
    "lambdalisue/nerdfont.vim",
  },
  config = function()
    vim.cmd([[
        nn <silent><leader>e :Fern . -reveal=% -drawer -toggle -right -width=37<CR>

        let g:fern#renderer = "nerdfont"
        let g:fern#default_hidden = 1
        let g:fern#renderer#nerdfont#indent_markers = 1
        let g:fern#comparator = "lexical"

        augroup my-glyph-palette
          autocmd! *
          autocmd FileType fern call glyph_palette#apply()
          autocmd FileType nerdtree,startify call glyph_palette#apply()
        augroup END

        " fern settings
        function! s:init_fern() abort
          " Use "select" instead of "edit" for default "open" action
          nmap <silent> <buffer> q :bd<CR>
          nmap <silent> <buffer> d     <Plug>(fern-action-cd:cursor)
          nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
          nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
          nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
          nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
          nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
          setlocal signcolumn=no nonumber

          hi link FernIndentMarkers LineNr
        endfunction

        augroup fern-custom
          autocmd! *
          autocmd FileType fern call s:init_fern()
        augroup END
      ]])
  end,
}
