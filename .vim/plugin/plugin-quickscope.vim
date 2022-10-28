augroup qs_colors
  au!
  au ColorScheme * hi QuickScopePrimary term=underline cterm=undercurl ctermfg=147 gui=undercurl guifg=#90B1FD
augroup END

let g:qs_buftype_blacklist = ['terminal', 'help', 'nofile']
