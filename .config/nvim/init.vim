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
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
luafile ~/.config/nvim/lua/complete.lua

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

if !has('nvim')
    set ttymouse=xterm2
endif

set guicursor=
