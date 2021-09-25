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
  tnoremap <Esc> <C-\><C-n>
  set undofile
  set undodir=~/.vim/undo
else
  set wildmenu
  set noundofile
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
autocmd TermOpen * startinsert

" smooth scroll
let s:stop_time = 10

function! s:down(timer) abort
  execute "normal! 3\<C-e>3j"
endfunction

function! s:up(timer) abort
  execute "normal! 3\<C-y>3k"
endfunction

function! s:smooth_scroll(fn) abort
  let working_timer = get(s:, 'smooth_scroll_timer', 0)
  if !empty(timer_info(working_timer))
    call timer_stop(working_timer)
  endif
  if (a:fn ==# 'down' && line('$') == line('w$')) ||
        \ (a:fn ==# 'up' && line('w0') == 1)
    return
  endif
  let s:smooth_scroll_timer = timer_start(s:stop_time, function('s:' . a:fn), {'repeat' : &scroll/3})
endfunction

nnoremap <silent> <C-u> <cmd>call <SID>smooth_scroll('up')<CR>
nnoremap <silent> <C-d> <cmd>call <SID>smooth_scroll('down')<CR>
vnoremap <silent> <C-u> <cmd>call <SID>smooth_scroll('up')<CR>
vnoremap <silent> <C-d> <cmd>call <SID>smooth_scroll('down')<CR>
