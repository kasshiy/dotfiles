let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrw              = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1

packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack', {'opt': 1}
Jetpack 'vim-denops/denops.vim'

Jetpack 'chickbone/eva01.vim'
Jetpack 'itchyny/lightline.vim'

Jetpack 'ryanoasis/vim-devicons'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'
Jetpack 'yuki-yano/fern-preview.vim'

Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim'

Jetpack 'prabirshrestha/vim-lsp'
Jetpack 'mattn/vim-lsp-settings'

Jetpack 'Shougo/ddc.vim'
Jetpack 'Shougo/pum.vim'
Jetpack 'shun/ddc-vim-lsp'
Jetpack 'tani/ddc-fuzzy'
Jetpack 'Shougo/ddc-ui-native'
Jetpack 'Shougo/ddc-source-around'
Jetpack 'Shougo/ddc-matcher_head'
Jetpack 'Shougo/ddc-sorter_rank'
Jetpack 'Shougo/ddc-source-cmdline'
Jetpack 'Shougo/ddc-source-cmdline-history'

Jetpack 'vim-skk/skkeleton'

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'

Jetpack 'tpope/vim-repeat'
Jetpack 'tpope/vim-unimpaired'
Jetpack 'machakann/vim-sandwich'
Jetpack 'andymass/vim-matchup'
Jetpack 'cohama/lexima.vim'
Jetpack 'unblevable/quick-scope'
Jetpack 'terryma/vim-expand-region', { 'on': '<Plug>(expand_region_' }
Jetpack 'utubo/vim-registers-lite'
Jetpack 'markonm/traces.vim'

Jetpack 'lambdalisue/gina.vim', { 'on': 'Gina' }
Jetpack 'airblade/vim-gitgutter'

Jetpack 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }
Jetpack 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

Jetpack 'romainl/vim-qf'
Jetpack 'itchyny/vim-qfedit', { 'on':'QuickFixCmdPre' }
Jetpack 'bfrg/vim-qf-diagnostics', { 'on':'QuickFixCmdPre' }
Jetpack 'bfrg/vim-qf-preview', { 'on':'QuickFixCmdPre' }
Jetpack 'bfrg/vim-qf-history', { 'on':'QuickFixCmdPre' }
Jetpack 'chickbone/vim-qfpopup', { 'on':'QuickFixCmdPre' }
Jetpack 'thinca/vim-qfreplace', { 'on':'QuickFixCmdPre' }
Jetpack 'thinca/vim-qfhl', { 'on':'QuickFixCmdPre' }

Jetpack 'tyru/capture.vim', { 'on': 'Capture' }

Jetpack 'vim-jp/vimdoc-ja'

call jetpack#end()
