packadd vim-jetpack
call jetpack#begin()

Jetpack 'tani/vim-jetpack'
Jetpack 'vim-denops/denops.vim'

Jetpack 'guns/xterm-color-table.vim'
Jetpack 'chickbone/eva01.vim'
Jetpack 'EdenEast/nightfox.nvim'
Jetpack 'machakann/vim-highlightedyank'

Jetpack 'romgrk/barbar.nvim'
Jetpack 'Xuyuanp/scrollbar.nvim'

Jetpack 'nvim-tree/nvim-web-devicons'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'lambdalisue/nerdfont.vim'

Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'nvim-lua/popup.nvim'
Jetpack 'tami5/sql.nvim'
Jetpack 'MunifTanjim/nui.nvim'
Jetpack 'stevearc/dressing.nvim'
Jetpack 'nathom/filetype.nvim'

Jetpack 'neovim/nvim-lspconfig', { 'on': ['LspInfo', 'Lsplog', 'BufReadPre', 'BufNewFile'] }
Jetpack 'williamboman/mason.nvim', { 'on': ['Mason', 'MasonInstall', 'BufReadPre', 'BufNewFile'] }
Jetpack 'williamboman/mason-lspconfig.nvim', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'jose-elias-alvarez/null-ls.nvim', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'jay-babu/mason-null-ls.nvim', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'nvim-treesitter/nvim-treesitter'
Jetpack 'nvim-treesitter/nvim-treesitter-textobjects'
Jetpack 'nvim-treesitter/nvim-treesitter-refactor'
Jetpack 'nvim-treesitter/playground'
Jetpack 'glepnir/lspsaga.nvim'
Jetpack 'onsails/lspkind-nvim'
Jetpack 'folke/trouble.nvim'
Jetpack 'b3nj5m1n/kommentary'

" Jetpack 'hrsh7th/nvim-cmp'
" Jetpack 'hrsh7th/cmp-nvim-lsp'
" Jetpack 'hrsh7th/cmp-buffer'
" Jetpack 'ray-x/cmp-treesitter'
" Jetpack 'rsh7th/cmp-calc'
" Jetpack 'hrsh7th/cmp-vsnip'

Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/fern-bookmark.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-mapping-quickfix.vim'
Jetpack 'LumaKernel/fern-mapping-fzf.vim'
Jetpack 'yuki-yano/fern-preview.vim'
Jetpack 'stevearc/aerial.nvim'

Jetpack 'antoinemadec/FixCursorHold.nvim'
Jetpack 'max397574/better-escape.nvim'
Jetpack 'folke/noice.nvim'
Jetpack 'rcarriga/nvim-notify'

Jetpack 'Shougo/ddc.vim'
Jetpack 'Shougo/pum.vim'
Jetpack 'Shougo/ddc-source-nvim-lsp'
Jetpack 'matsui54/denops-signature_help'
Jetpack 'tani/ddc-fuzzy'
Jetpack 'Shougo/ddc-ui-native'
Jetpack 'Shougo/ddc-ui-pum'
Jetpack 'Shougo/ddc-source-around'
Jetpack 'Shougo/ddc-matcher_head'
Jetpack 'Shougo/ddc-sorter_rank'
Jetpack 'Shougo/ddc-source-cmdline'
Jetpack 'Shougo/ddc-source-cmdline-history'
Jetpack 'vim-skk/skkeleton'

Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'
"Jetpack 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Jetpack 'nvim-telescope/telescope.nvim'
"Jetpack 'nvim-telescope/telescope-frecency.nvim'
"Jetpack 'nvim-telescope/telescope-symbols.nvim'
"Jetpack 'nvim-telescope/telescope-hop.nvim'
"Jetpack 'nvim-telescope/telescope-github.nvim'
"Jetpack 'nvim-telescope/telescope-ghq.nvim'
Jetpack 'glepnir/dashboard-nvim'

Jetpack 'kana/vim-textobj-user', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'kana/vim-textobj-entire', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'osyo-manga/vim-textobj-multiblock', { 'on': ['BufReadPre', 'BufNewFile'] }

Jetpack 'tpope/vim-repeat', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'tpope/vim-unimpaired', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'machakann/vim-sandwich', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'andymass/vim-matchup', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'cohama/lexima.vim', { 'on': 'InsertEnter' }
Jetpack 'rhysd/clever-f.vim', { 'on': 'InsertEnter' }
Jetpack 'unblevable/quick-scope', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'lukas-reineke/indent-blankline.nvim', { 'on': ['BufReadPre', 'BufNewFile'] }
Jetpack 'terryma/vim-expand-region', { 'on': '<Plug>(expand_region_' }
Jetpack 'tversteeg/registers.nvim'
Jetpack 'markonm/traces.vim', { 'on': 'InsertEnter' }
Jetpack 'hrsh7th/vim-searchx'

Jetpack 'lambdalisue/gina.vim', { 'on': 'Gina' }
Jetpack 'rhysd/committia.vim'
Jetpack 'lewis6991/gitsigns.nvim'
Jetpack 'kdheepak/lazygit.nvim'
Jetpack 'pwntester/octo.nvim'

Jetpack 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }
Jetpack 'mhinz/vim-grepper', { 'on': ['Grepper', '<Plug>(GrepperOperator)'] }

" Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Jetpack 'simrat39/rust-tools.nvim', { 'for': 'rust' }
Jetpack 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'call mkdp#util#install()' }
Jetpack 'vhdirk/vim-cmake'

Jetpack 'kevinhwang91/nvim-bqf', { 'for': 'qf' }
Jetpack 'stevearc/qf_helper.nvim', { 'for': 'qf' }
Jetpack 'itchyny/vim-qfedit', { 'for': 'qf' }
Jetpack 'thinca/vim-qfreplace', { 'for': 'qf' }
" Jetpack 'thinca/vim-qfhl', { 'for': 'qf' }

Jetpack 'tyru/capture.vim', { 'on': 'Capture' }
Jetpack 'sQVe/sort.nvim'
Jetpack 'jghauser/mkdir.nvim'
Jetpack 'yutkat/history-ignore.vim'
Jetpack 'tyru/open-browser.vim'

Jetpack 't9md/vim-choosewin'
Jetpack 'famiu/bufdelete.nvim'
Jetpack 'stevearc/stickybuf.nvim'
Jetpack 'kwkarlwang/bufresize.nvim'

Jetpack 'vim-jp/vimdoc-ja'

Jetpack 'junegunn/goyo.vim', { 'on': 'Goyo' }
Jetpack 'junegunn/limelight.vim'

call jetpack#end()
