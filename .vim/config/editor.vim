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
set laststatus=2

set number
set cursorline
set virtualedit=onemore

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

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent> \t :tab terminal<CR>
nnoremap <silent> [b :bn<CR><Esc>
nnoremap <silent> ]b :bp<CR><Esc>
nnoremap <silent> bd :bd<CR><Esc>
nnoremap <silent> [t :tabnext<CR><Esc>
nnoremap <silent> ]t :tabprevious<CR><Esc>
nnoremap <silent> tn :tabnew<CR><Esc>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> \lg :TermPop lazygit<CR><Esc>

"search in visualmode
vmap # y/<C-R>"<CR>

command! Rel source ~/.vimrc
command! -nargs=* TermPop term ++hidden ++close ++norestore ++shell tmux popup -E -w 170 -h 35 -d (pwd) <q-args>

au VimEnter * let g:popupdict_enabled=0
