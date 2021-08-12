call plug#begin()

Plug 'guns/xterm-color-table.vim'
Plug 'hachy/eva01.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim',{ 'branch': 'main' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-unimpaired'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'
Plug 'neovimhaskell/haskell-vim'

Plug 'honza/vim-snippets'
Plug 'thinca/vim-ref'
Plug 'ujihisa/ref-hoogle'

Plug 'vhdirk/vim-cmake'
Plug 'skywind3000/asyncrun.vim'
"Plug 'kasshiy/sprint',{ 'branch': 'dev' }

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ueokande/popupdict.vim'

Plug 'vim-jp/vimdoc-ja'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'deris/vim-duzzle'

Plug 'kdheepak/lazygit.nvim'

call plug#end()

packadd! matchit
