set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

if &compatible
  set nocompatible
endif

set runtimepath+=/home/kasshi_k/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/home/kasshi_k/.cache/dein')

  " Let dein manage dein
  call dein#add('glacambre/firenvim', { 'hook_post_update': { -> firenvim#install(0) } })
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

call dein#end()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

let g:dein#auto_recache = v:true
" let g:dein#lazy_rplugins = v:true

if !has('nvim')
  set ttymouse=xterm2
endif
set pumblend=10

set guicursor=
