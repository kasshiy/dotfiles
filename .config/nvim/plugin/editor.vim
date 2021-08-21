set nobackup
set noswapfile
set undofile
set undodir=~/.vim/undo

set hidden
set mouse=a
set scrolloff=3
set lz

set bri
set expandtab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set matchtime=2
set matchpairs+=":",':'

set number
set virtualedit=onemore

set showmatch
set signcolumn=yes

set is
set ignorecase
set tagcase=followscs
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
else
    set wildmenu
    set history=10000
    set hls
    set ic
    set listchars=precedes:^
    set encoding=utf-8
    set autoread
    set belloff=all
    set ttimeoutlen=50
    set showcmd
    set laststatus=2
endif
"--------- mapings ---------

let loaded_matchit = 1
let mapleader = " "

nn <Esc><Esc> :nohlsearch<CR><Esc>
nn <silent> [oq :copen<CR><Esc>
nn <silent> ]oq :cclose<CR><Esc>
nn <silent> [Q :colder<CR><Esc>
nn <silent> ]Q :cnewer<CR><Esc>

"search in visualmode
vmap # y/<C-R>"<CR>

command! Reload source %
