lua << EOF
  require'hop'.setup()
EOF

nmap <leader>f <cmd>HopChar1AC<CR>
nmap <leader>t <cmd>HopChar1BC<CR>
nmap <leader>s <cmd>HopChar1<CR>

nmap <leader>j <cmd>HopLineStartAC<CR>
nmap <leader>k <cmd>HopLineStartBC<CR>
nmap <leader>m <cmd>HopLine<CR>

nmap <leader>w <cmd>HopWordAC<CR>
nmap <leader>b <cmd>HopWordBC<CR>
