let &termencoding = &encoding
set encoding=utf-8
set fileencoding=utf-8

set nobackup
set noswapfile
set belloff=all
set autoread
set hidden
set showcmd
set mouse=a
set scrolloff=3
set ttimeoutlen=50
set ttyfast

set expandtab
set tabstop=2
set softtabstop=2
set smartindent
set bri
set shiftwidth=2
set matchtime=2
set matchpairs+=":",':'
set laststatus=2

set number
set cursorline
set virtualedit=onemore
set emoji

set wildmenu
set history=10000
set undofile
set undodir=~/.vim/undo
set cm=blowfish2

set showmatch
set laststatus=2
set iminsert=2

set ic
set sc
set is
set hls
set tagcase=followscs

"--------- mapings ---------

let mapleader = " "

nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <silent> \<space>t :tab terminal<CR>
nmap <silent> [b :bn<CR><Esc>
nmap <silent> ]b :bp<CR><Esc>
nmap <silent> [t :tabnext<CR><Esc>
nmap <silent> ]t :tabprevious<CR><Esc>
"search in visualmode
vmap # y/<C-R>"<CR>

command! Reload source ~/.vimrc
