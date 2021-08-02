autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

nmap <C-e> <plug>NERDTreeTabsToggle<CR>:setlocal signcolumn=no<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeStatusline="%{exists('b:NERDTree')?b:NERDTree.root.path.str():'NERDTree'}"
let g:NERDTreeIgnore = ['\.git$','\.stack-work$','\.spago$','\.vscode', '\~$','\.o','\.cache$']
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 37

let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 1

" let g:webdevicons_conceal_nerdtree_brackets = 1
