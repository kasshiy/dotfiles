packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack', {'opt': 1}

Jetpack 'chickbone/eva01.vim'
Jetpack 'itchyny/lightline.vim'

Jetpack 'junegunn/goyo.vim'
Jetpack 'vim-jp/vimdoc-ja'

Jetpack 'ryanoasis/vim-devicons'
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'
Jetpack 'yuki-yano/fern-preview.vim'

Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim'
Jetpack 'utubo/vim-registers-lite'
Jetpack 'rust-lang/rust.vim', { 'do': 'let g:rustfmt_autosave = 1' }

Jetpack 'neoclide/coc.nvim', {'branch': 'release'}

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'

Jetpack 'tpope/vim-surround'
Jetpack 'tpope/vim-repeat'
Jetpack 'tpope/vim-fugitive'
Jetpack 'tpope/vim-unimpaired'
Jetpack 'unblevable/quick-scope'
Jetpack 'cohama/lexima.vim'

Jetpack 'skywind3000/asyncrun.vim'
Jetpack 'romainl/vim-qf'
Jetpack 'bfrg/vim-qf-preview'
Jetpack 'thinca/vim-qfreplace'
Jetpack 'thinca/vim-qfhl'
Jetpack 'mhinz/vim-grepper'

call jetpack#end()
