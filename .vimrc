packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack', {'opt': 1}

Jetpack 'junegunn/goyo.vim'
Jetpack 'vim-jp/vimdoc-ja'

Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'

Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim'
Jetpack 'rust-lang/rust.vim', { 'do': 'let g:rustfmt_autosave = 1' }

Jetpack 'neoclide/coc.nvim', {'branch': 'release'}

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'
Jetpack 'tpope/vim-surround'
Jetpack 'tpope/vim-repeat'
Jetpack 'tpope/vim-fugitive'
Jetpack 'tpope/vim-unimpaired'

Jetpack 'skywind3000/asyncrun.vim'
Jetpack 'mhinz/vim-grepper'

call jetpack#end()
