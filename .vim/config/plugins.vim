call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'skanehira/gh.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'thinca/vim-quickrun'
Plug 'thinca/vim-ref'
Plug 'ujihisa/ref-hoogle'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'guns/xterm-color-table.vim'
Plug 'hachy/eva01.vim'
Plug 'joshdick/onedark.vim'

Plug 'vim-jp/vimdoc-ja'

Plug 'deris/vim-duzzle'

call plug#end()

packadd! matchit
