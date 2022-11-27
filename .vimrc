if has('vim_starting')
  " Vim のエンコーディングを utf-8 に
  set encoding=utf-8
  scriptencoding utf-8
endif

let g:no_gvimrc_example=1
let g:no_vimrc_example=1
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:loaded_gzip               = 1
let g:loaded_zip                = 1
let g:loaded_zipPlugin          = 1
let g:loaded_man                = 1
let g:loaded_getscript          = 1
let g:loaded_getscriptPlugin    = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_vimball            = 1
let g:loaded_vimballPlugin      = 1
let g:loaded_netrw              = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_netrwSettings      = 1
let g:loaded_netrwFileHandlers  = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:skip_loading_mswin        = 1

packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack', {'opt': 1}
Jetpack 'vim-denops/denops.vim'

Jetpack 'chickbone/eva01.vim'

Jetpack 'itchyny/lightline.vim'
Jetpack 'halkn/lightline-lsp'

Jetpack 'ryanoasis/vim-devicons'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/nerdfont.vim'

Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'
Jetpack 'yuki-yano/fern-preview.vim'

Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim', {'for': 'haskell'}

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

Jetpack 'kana/vim-textobj-user'
Jetpack 'kana/vim-textobj-entire'
Jetpack 'osyo-manga/vim-textobj-multiblock'

Jetpack 'tpope/vim-repeat'
Jetpack 'tpope/vim-unimpaired'
Jetpack 'machakann/vim-sandwich'
Jetpack 'andymass/vim-matchup'
Jetpack 'cohama/lexima.vim'
Jetpack 'rhysd/clever-f.vim'
Jetpack 'unblevable/quick-scope'
Jetpack 'terryma/vim-expand-region', { 'on': '<Plug>(expand_region_' }
Jetpack 'utubo/vim-registers-lite'
Jetpack 'markonm/traces.vim'

Jetpack 'lambdalisue/gina.vim', { 'on': 'Gina' }
Jetpack 'airblade/vim-gitgutter'

Jetpack 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }
Jetpack 'mhinz/vim-grepper', { 'on': ['Grepper', '<Plug>(GrepperOperator)'] }

Jetpack 'romainl/vim-qf'
Jetpack 'itchyny/vim-qfedit', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }
Jetpack 'bfrg/vim-qf-diagnostics', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }
Jetpack 'bfrg/vim-qf-preview', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }
Jetpack 'bfrg/vim-qf-history', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }
Jetpack 'thinca/vim-qfreplace', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }
Jetpack 'thinca/vim-qfhl', { 'on':'QuickFixCmdPre', 'cmd': 'Grepper' }

Jetpack 'tyru/capture.vim', { 'on': 'Capture' }

Jetpack 'chickbone/mini-scroll.vim'

Jetpack 'vim-jp/vimdoc-ja'

call jetpack#end()
