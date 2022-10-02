let s:plugpath = expand("~/.local/share/nvim/site/jetpack")

packadd vim-jetpack
call jetpack#begin(s:plugpath)

Jetpack 'tani/vim-jetpack', {'opt': 1}

Jetpack 'guns/xterm-color-table.vim'
Jetpack 'chickbone/eva01.vim'
Jetpack 'machakann/vim-highlightedyank'

Jetpack 'romgrk/barbar.nvim'
Jetpack 'Xuyuanp/scrollbar.nvim'

Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'nvim-lua/popup.nvim'
Jetpack 'tami5/sql.nvim'

Jetpack 'andymass/vim-matchup'
Jetpack 'williamboman/nvim-lsp-installer'
Jetpack 'nvim-treesitter/nvim-treesitter'
Jetpack 'nvim-treesitter/nvim-treesitter-textobjects'
Jetpack 'nvim-treesitter/playground'
Jetpack 'nvim-treesitter/nvim-treesitter-refactor'
Jetpack 'windwp/nvim-autopairs'
Jetpack 'glepnir/lspsaga.nvim'
Jetpack 'ray-x/lsp_signature.nvim'
Jetpack 'folke/trouble.nvim'
Jetpack 'b3nj5m1n/kommentary'

Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'
Jetpack 'antoinemadec/FixCursorHold.nvim'

Jetpack 'tpope/vim-surround'
Jetpack 'tpope/vim-repeat'
Jetpack 'kevinhwang91/nvim-hlslens'
Jetpack 'max397574/better-escape.nvim'

Jetpack 'tpope/vim-fugitive'
Jetpack 'tpope/vim-unimpaired'
Jetpack 'lewis6991/gitsigns.nvim'
Jetpack 'kdheepak/lazygit.nvim'
Jetpack 'pwntester/octo.nvim'

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'
Jetpack 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Jetpack 'nvim-telescope/telescope.nvim'
Jetpack 'nvim-telescope/telescope-frecency.nvim'
Jetpack 'nvim-telescope/telescope-symbols.nvim'
Jetpack 'nvim-telescope/telescope-hop.nvim'
Jetpack 'nvim-telescope/telescope-github.nvim'
Jetpack 'nvim-telescope/telescope-ghq.nvim'
Jetpack 'glepnir/dashboard-nvim'

Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim'
Jetpack 'rust-lang/rust.vim', { 'do': 'let g:rustfmt_autosave = 1' }
Jetpack 'simrat39/rust-tools.nvim'
Jetpack 'iamcco/markdown-preview.nvim', { 'do': 'call mkdp#util#install()' }
Jetpack 'vhdirk/vim-cmake'
Jetpack 'skywind3000/asyncrun.vim'
Jetpack 'mhinz/vim-grepper'

Jetpack 'kevinhwang91/nvim-bqf'
Jetpack 'stevearc/qf_helper.nvim'

Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/glyph-palette.vim'

Jetpack 'vim-jp/vimdoc-ja'

Jetpack 'junegunn/goyo.vim'
Jetpack 'junegunn/limelight.vim'

Jetpack 'deris/vim-duzzle'

Jetpack 'hrsh7th/nvim-cmp'
Jetpack 'hrsh7th/cmp-nvim-lsp'
Jetpack 'hrsh7th/cmp-buffer'
Jetpack 'ray-x/cmp-treesitter'
Jetpack 'rsh7th/cmp-calc'
Jetpack 'hrsh7th/cmp-vsnip'

call jetpack#end()
