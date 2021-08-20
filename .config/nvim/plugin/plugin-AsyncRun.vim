command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
command! -bang -nargs=* -complete=file Stack AsyncRun mold -run stack <args>
command! -bang -nargs=* -complete=file Cargo AsyncRun mold -run cargo <args>

au FileType haskell nn <silent> <F5> :<C-u>AsyncRun -mode=term mold -run stack run<CR>
au FileType rust nn <silent> <F5> :<C-u>AsyncRun -mode=term mold -run cargo run<CR>

" Fugitive Async Run
command! -bang -bar -nargs=* Gpush execute 'AsyncRun<bang> -cwd=' .
          \ fnameescape(FugitiveGitDir()) 'git push' <q-args>
command! -bang -bar -nargs=* Gfetch execute 'AsyncRun<bang> -cwd=' .
          \ fnameescape(FugitiveGitDir()) 'git fetch' <q-args>
command! -bang -bar -nargs=* Gpull execute 'AsyncRun<bang> -cwd=' .
          \ fnameescape(FugitiveGitDir()) 'git pull' <q-args>
