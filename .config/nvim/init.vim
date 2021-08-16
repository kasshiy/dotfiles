set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

if &compatible
  set nocompatible
endif

set runtimepath+=/home/kasshi_k/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/home/kasshi_k/.cache/dein')

  " Let dein manage dein
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

call dein#end()

let g:completion_enable_auto_popup = 1
luafile ~/.config/nvim/lua/complete.lua

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

if !has('nvim')
  set ttymouse=xterm2
endif

function! s:auto_update_colorscheme(...) abort
    if &ft !=# 'vim'
        echoerr 'Execute this command in colorscheme file buffer'
    endif
    setlocal autoread noswapfile
    let interval = a:0 > 0 ? a:1 : 3000
    let timer = timer_start(interval, {-> execute('checktime')}, {'repeat' : -1})
    autocmd! BufReadPost <buffer> source ~/.config/nvim/colors/cinon.vim
endfunction
command! -nargs=? AutoUpdateColorscheme call <SID>auto_update_colorscheme(<f-args>)

set guicursor=