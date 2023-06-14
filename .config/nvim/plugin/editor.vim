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
set helplang=ja,en

set number
set virtualedit=onemore
set signcolumn=yes

silent! nohlsearch
set incsearch
set ignorecase
set tagcase=followscs
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect

if has('nvim')
  autocmd TermOpen * startinsert
  set laststatus=3
else
  set laststatus=2
  set wildmenu
  set noundofile
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

augroup vimrc
  autocmd!
  autocmd Filetype * call s:filetype(expand('<amatch>'))
augroup END

function! s:filetype(ftype) abort
  if !empty(a:ftype) && exists('*' . 's:filetype_' . a:ftype)
    execute 'call s:filetype_' . a:ftype . '()'
  endif
endfunction

function! s:filetype_help() abort
  wincmd H
  vertical resize 81

  setlocal signcolumn=no
  " カーソル下のタグへ飛ぶ
  nn <buffer>J <C-]>
  " 戻る
  nn <buffer>K <C-t>
  " リンクしている単語を選択する
  nn <buffer><silent><S-Tab> /\%(\_.\zs<Bar>[^ ]\+<Bar>\ze\_.\<Bar>CTRL-.\<Bar><[^ >]\+>\)<CR>
  " その他
  nn <buffer><silent>; :Helptags<CR>
  nn <buffer>u <cmd>call <SID>smooth_scroll('up')<CR>
  nn <buffer>d <cmd>call <SID>smooth_scroll('down')<CR>
  nn <buffer>q <Cmd>helpclose<CR>

  nnoremap <buffer> ? <Cmd>call searchx#start({ 'dir': 0 })<CR>
  nnoremap <buffer> / <Cmd>call searchx#start({ 'dir': 1 })<CR>
  xnoremap <buffer> ? <Cmd>call searchx#start({ 'dir': 0 })<CR>
  xnoremap <buffer> / <Cmd>call searchx#start({ 'dir': 1 })<CR>
  cnoremap <buffer> ; <Cmd>call searchx#select()<CR>

  " Move to next/prev match.
  nnoremap <buffer> N <Cmd>call searchx#prev_dir()<CR>
  nnoremap <buffer> n <Cmd>call searchx#next_dir()<CR>
  xnoremap <buffer> N <Cmd>call searchx#prev_dir()<CR>
  xnoremap <buffer> n <Cmd>call searchx#next_dir()<CR>
  nnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
  nnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>
  xnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
  xnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>
  cnoremap <buffer> <C-k> <Cmd>call searchx#prev()<CR>
  cnoremap <buffer> <C-j> <Cmd>call searchx#next()<CR>

  " Clear highlights
  nnoremap <buffer> <C-l> <Cmd>call searchx#clear()<CR>

  let g:searchx = {}

  " Auto jump if the recent input matches to any marker.
  let g:searchx.auto_accept = v:true

  " The scrolloff value for moving to next/prev.
  let g:searchx.scrolloff = &scrolloff

  " To enable auto nohlsearch after cursor is moved
  let g:searchx.nohlsearch = {}
  let g:searchx.nohlsearch.jump = v:true

  " Marker characters.
  let g:searchx.markers = split('ABCDEFGHIJKLMNOPQRSTUVWXYZ', '.\zs')

  " Convert search pattern.
  function g:searchx.convert(input) abort
    if a:input !~# '\k'
      return '\V' .. a:input
    endif
    return a:input[0] .. substitute(a:input[1:], '\\\@<! ', '.\\{-}', 'g')
  endfunction
endfunction
