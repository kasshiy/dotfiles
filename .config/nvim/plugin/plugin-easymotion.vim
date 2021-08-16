map <Leader> <Plug>(easymotion-prefix)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  [n <Plug>(easymotion-prev)
map  ]n <Plug>(easymotion-next)

let g:EasyMotion_keys = 'asdfghjkl;qwertyuiopzxcvbnm'

let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_smartsign_jp = 1  "にほんご layout
let g:EasyMotion_use_migemo = 1

let g:EasyMotion_force_csapprox = 1

EMCommandLineNoreMap ; <CR>
EMCommandLineNoreMap <C-j> ;
EMCommandLineNoreMap <C-d> <Over>(buffer-complete)

au ColorScheme * hi link EasyMotionMoveHL EndOfBuffer
au ColorScheme * hi link EasyMotionIncSearch EndOfBuffer
