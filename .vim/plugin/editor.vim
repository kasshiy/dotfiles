set nobackup
Jetpack noswapfile

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

set number
set virtualedit=onemore
set signcolumn=yes

silent! nohlsearch
set is
set ignorecase
set tagcase=followscs
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect

if exists('g:started_by_firenvim')
  set laststatus=0
else
  set laststatus=2
endif

if has('nvim')
  autocmd TermOpen * startinsert
else
  set wildmenu
  set wildoptions=pum
  set undofile
  set undodir=~/.vim/undo
  set history=10000
  set hls
  set ic
  set listchars=precedes:^
  set encoding=utf-8
  set autoread
  set belloff=all
  set ttimeoutlen=50
  set showcmd
endif
"--------- mapings ---------

let loaded_matchit = 1
let mapleader = " "

nmap j gj
nmap k gk

nn <Esc><Esc> <cmd>nohlsearch<CR><cmd>QfhlClearall<Esc>

"subsititure mappings
nn ,s :%s///g<left><left>
vn ,s :s///g<left><left>
cnoremap <expr> s getcmdtype() == ':' && getcmdline() == 's' ? '<BS>%s/' : 's'
nn Y y$

"search in visualmode
vmap # y/<C-R>"<CR>

command! Reload source %
command! StripWhiteSpace %s/\s\+$//e
command! Term call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0)*4/5, minheight: &lines*4/5 })

au BufWritePost $MYVIMRC source $MYVIMRC
