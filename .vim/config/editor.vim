let &termencoding = &encoding
set encoding=utf-8

set nobackup
set noswapfile
set belloff=all
set autoread
set hidden
set showcmd
set mouse=a
set scrolloff=3
set ttimeoutlen=50
set lz

set expandtab
set tabstop=2
set softtabstop=2
set smartindent
set bri
set shiftwidth=2
set matchtime=2
set matchpairs+=":",':'
set listchars=precedes:^

set number
set cursorline
set virtualedit=onemore

set wildmenu
set history=10000
set undofile
set undodir=~/.vim/undo

set showmatch
set signcolumn=yes
set laststatus=2

set ic
set sc
set is
set hls
set tagcase=followscs
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect

"--------- mapings ---------

let mapleader = " "

nn <Esc><Esc> :nohlsearch<CR><Esc>
nn <silent> bd :bwipeout<CR><Esc>
nn <silent> tn :tabnew<CR><Esc>
nn <silent> [oq :copen<CR><Esc>
nn <silent> ]oq :cclose<CR><Esc>
nn <silent> [Q :colder<CR><Esc>
nn <silent> ]Q :cnewer<CR><Esc>

"search in visualmode
vmap # y/<C-R>"<CR>

command! Reload source %
