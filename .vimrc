packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack', {'opt': 1}

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

Jetpack 'neoclide/coc.nvim', {'branch': 'release'}

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'

Jetpack 'machakann/vim-sandwich'
Jetpack 'tpope/vim-repeat'
Jetpack 'tpope/vim-unimpaired'
Jetpack 'cohama/lexima.vim'
Jetpack 'unblevable/quick-scope'
Jetpack 'utubo/vim-registers-lite'
Jetpack 'markonm/traces.vim'

Jetpack 'tpope/vim-fugitive'
Jetpack 'airblade/vim-gitgutter'

Jetpack 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }
Jetpack 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

Jetpack 'romainl/vim-qf'
Jetpack 'itchyny/vim-qfedit'
Jetpack 'bfrg/vim-qf-diagnostics'
Jetpack 'bfrg/vim-qf-preview'
Jetpack 'bfrg/vim-qf-history'
Jetpack 'rbtnn/vim-qfpopup'
Jetpack 'thinca/vim-qfreplace'
Jetpack 'thinca/vim-qfhl'

Jetpack 'junegunn/goyo.vim'
Jetpack 'vim-jp/vimdoc-ja'

call jetpack#end()
