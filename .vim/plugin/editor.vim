set nobackup
set noswapfile

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
  set undofile
  autocmd TermOpen * startinsert
else
  set wildmenu
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

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

nmap j gj
nmap k gk

nn <Esc><Esc> <cmd>nohlsearch<CR><Esc>
nn <silent> [oq <cmd>copen<CR><Esc>
nn <silent> ]oq <cmd>cclose<CR><Esc>
nn <silent> [Q <cmd>colder<CR><Esc>
nn <silent> ]Q <cmd>cnewer<CR><Esc>

"subsititure mappings
nn ,s :%s///g<left><left>
vn ,s :s///g<left><left>
nn Y y$

"search in visualmode
vmap # y/<C-R>"<CR>

command! Reload source %
command! StripWhiteSpace %s/\s\+$//e
command! Term call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0)*4/5, minheight: &lines*4/5 })

function! s:init_help() abort
  wincmd H
  vertical resize 81
endfunction
autocmd FileType help call s:init_help()
