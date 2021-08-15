call plug#begin()

Plug 'guns/xterm-color-table.vim'
Plug 'hachy/eva01.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'cocopon/iceberg.vim'
Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
Plug 'vim-airline/vim-airline'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'markonm/traces.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-unimpaired'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'andymass/vim-matchup'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }

Plug 'sheerun/vim-polyglot'
Plug 'neovimhaskell/haskell-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'honza/vim-snippets'

Plug 'vhdirk/vim-cmake'
Plug 'skywind3000/asyncrun.vim'
"Plug 'kasshiy/sprint',{ 'branch': 'dev' }
Plug 'ronakg/quickr-preview.vim'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-bookmark.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-mapping-quickfix.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'

Plug 'ueokande/popupdict.vim'
Plug 'vim-jp/vimdoc-ja'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'deris/vim-duzzle'

call plug#end()
