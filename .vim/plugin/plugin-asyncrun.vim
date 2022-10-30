command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
command! -bang -nargs=* -complete=file Stack AsyncRun mold -run stack <args>
command! -bang -nargs=* -complete=file Cargo AsyncRun mold -run cargo <args>

au FileType haskell nn <silent> <F5> :<C-u>AsyncRun -mode=term mold -run stack run<CR>
au FileType haskell nn <silent> <C-F5> :<C-u>AsyncRun -mode=term mold -run stack build<CR>
au FileType rust nn <silent> <F5> :<C-u>AsyncRun -mode=term mold -run cargo run<CR>
