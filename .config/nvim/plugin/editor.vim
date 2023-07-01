set nobackup
set noswapfile

set hidden
set mouse=a
set scrolloff=3

set breakindent
set expandtab
set smartindent
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set matchpairs=(:),「:」,『:』
set helplang=ja,en

set number
set virtualedit=onemore,block
set diffopt=vertical,algorithm:histogram
set signcolumn=yes
set listchars=precedes:^,trail:-

silent! nohlsearch
set incsearch
set ignorecase
set tagcase=followscs
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect

if has('nvim')
  autocmd TermOpen * startinsert
  set laststatus=3
  set pumblend=15
  set winblend=15
else
  set laststatus=2
  set wildmenu
  set noundofile
  set history=10000
  set hls
  set ic
  set autoread
  set belloff=all
  set ttimeoutlen=50
  set showcmd
  set previewpopup=height:10,width:60
endif

"--------- mapings ---------

nn <silent> <leader>w :update<CR>
nn <leader>p "+p

nn j gj
nn k gk
nn gj j
nn gk k

nn <Esc><Esc> <cmd>nohlsearch<CR><Esc>
nn <silent> [oq <cmd>copen<CR><Esc>
nn <silent> ]oq <cmd>cclose<CR><Esc>
nn <silent> [Q <cmd>colder<CR><Esc>
nn <silent> ]Q <cmd>cnewer<CR><Esc>

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

nn gV `[v`]
nn Y y$
"search in visualmode
vmap # y/<C-R>"<CR>

cabbrev rr source %
command! StripWhiteSpace keeppatterns %s/\s\+$//e

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
