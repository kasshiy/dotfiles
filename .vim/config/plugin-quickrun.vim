let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright",
\       "outputter/buffer/close_on_empty" : 1,
\       "outputter/quickfix/into" :1,
\       "outputter/quickfix" :1,
\       "runner/job" :1,
\   },
\   "stack" :{
\     "hook/time/enable" : 1,
\   },
\}
let g:quickrun_config.haskell = {'command' : 'stack','cmdopt': 'runhaskell'}

nnoremap <silent> <F5> :QuickRun -mode n<CR>
vnoremap <silent> <F5> :QuickRun -mode v<CR>
