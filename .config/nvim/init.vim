"set runtimepath^=~/.vim
set runtimepath^=~/.local/share/nvim/site/pack/jetpack
let &packpath = &runtimepath

source ~/.config/nvim/plugin.vim

if &compatible
  set nocompatible
endif

if get(s:, 'jetpack_sync', 0)
  call jetpack#sync()
endif

if !has('nvim')
  set ttymouse=xterm2
endif
set pumblend=10

set guicursor=
