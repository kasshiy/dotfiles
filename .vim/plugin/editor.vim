set nobackup
set noswapfile

set hidden
set mouse=a
set scrolloff=3
set lz

set bri
set expandtab
set smartindent
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set helplang=ja,en

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
  set listchars=precedes:^,trail:-
  set autoread
  set belloff=all
  set ttimeoutlen=50
  set showcmd
  set previewpopup=height:10,width:60
endif

"--------- mapings ---------

noremap <Leader>      <Nop>
noremap <LocalLeader> <Nop>
let g:mapleader = "\<Space>"
let g:maplocalleader = '\'

nn <leader>w :update<CR>
nn <leader>p "+p

nmap j gj
nmap k gk

nn s <C-w>
nn <S-Left>  <C-w><<CR>
nn <S-Right> <C-w>><CR>
nn <S-Up>    <C-w>-<CR>
nn <S-Down>  <C-w>+<CR>
nn <Tab> <C-w>w

nn [t gT
nn ]t gt

nn <Space>l $

if executable('rg')
  set grepprg=rg\ --no-heading\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif

nn <Esc><Esc> <cmd>nohlsearch<CR><cmd>QfhlClearall<Esc>

"subsititute mappings
nn ,s :%s/\v//g<left><left>
vn ,s :s/\v//g<left><left>

cnoremap <expr> s getcmdtype() == ':' && getcmdline() == 's' ? '<BS>%s/\v' : 's'

nn Y y$
"search in visualmode
vmap # y/<C-R>"<CR>

cabbrev rr source %
command! StripWhiteSpace keeppatterns %s/\s\+$//e
command! Term call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0)*4/5, minheight: &lines*4/5 })
