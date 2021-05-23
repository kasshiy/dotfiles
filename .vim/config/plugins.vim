call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

Plug 'skanehira/gh.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-jp/vimdoc-ja'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'guns/xterm-color-table.vim'
Plug 'hachy/eva01.vim'

Plug 'deris/vim-duzzle'

call plug#end()

packadd! matchit
