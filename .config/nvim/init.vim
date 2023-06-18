"set runtimepath^=~/.vim
set runtimepath^=~/.local/share/nvim/site/pack/jetpack
let &packpath = &runtimepath

" install jetpack.vim if it don`t exist
" let s:jetpackfile = stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
" let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
" if !filereadable(s:jetpackfile)
"   call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
" endif

let g:no_gvimrc_example         = 1
let g:no_vimrc_example          = 1
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:loaded_gzip               = 1
let g:loaded_zip                = 1
let g:loaded_zipPlugin          = 1
let g:loaded_man                = 1
let g:loaded_getscript          = 1
let g:loaded_getscriptPlugin    = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_vimball            = 1
let g:loaded_vimballPlugin      = 1
let g:loaded_netrw              = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_netrwSettings      = 1
let g:loaded_netrwFileHandlers  = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:skip_loading_mswin        = 1

source ~/.config/nvim/plugin.vim

if &compatible
  set nocompatible
endif

if !has('nvim')
  set ttymouse=xterm2
endif
set pumblend=10

set guicursor=
