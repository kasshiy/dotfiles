let &termencoding = &encoding
set encoding=utf-8

set nobackup
set noswapfile
set belloff=all
set autoread
set hidden
set showcmd
set mouse=a
set scrolloff=3
set ttimeoutlen=50
set ttyfast

set expandtab
set tabstop=2
set softtabstop=2
set smartindent
set bri
set shiftwidth=2
set matchtime=2
set matchpairs+=<:>

set number
set cursorline
set virtualedit=onemore
highlight Comment cterm=italic ctermfg=4 guifg=Blue
set emoji

set wildmenu
set history=10000
set undofile
set undodir=~/.vim/undo
set cm=blowfish2

set showmatch
set laststatus=2
set iminsert=2

syntax enable

set ic
set sc
set is
set hls
set tagcase=followscs
set pvp="a"

nmap j gj
nmap k gk

nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <silent> \<space>t :tab terminal<CR>
nmap <C-e> <plug>NERDTreeTabsToggle<CR>
"search in visualmode
vmap # y/<C-R>"<CR>

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

command! Reload source ~/.vimrc

setlocal formatexpr=format#Format()

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

Plug 'skanehira/gh.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-jp/vimdoc-ja'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dag/vim-fish'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

packadd! matchit

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'angr'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = "\uE0C6"
let g:airline_left_alt_sep = "省"
let g:airline_right_sep = "\uE0BA"
let g:airline_right_alt_sep = ""
let g:airline_symbols_crypt = '🔒'

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}'. "\uE0A3" . '%{col(".")}'])

let g:NERDTreeShowHidden = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeStatusline="%{exists('b:NERDTree')?b:NERDTree.root.path.str():'NERDTree'}"
let g:NERDTreeIgnore = ['\.git$','\.stack-work$','\.vscode', '\~$']
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 37

let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 1

"highlight CocUnderline ctermul=DarkRed cterm=underline gui=underline

" let g:webdevicons_conceal_nerdtree_brackets = 1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
imap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
imap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" imap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>F  <Plug>(coc-format)
nmap <leader>F  <Plug>(coc-format)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call   CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call   CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nmap <silent> \<space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nmap <silent> \<space>e  :<C-u>CocList extensions<cr>
" Show commands
nmap <silent> \<space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nmap <silent> \<space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nmap <silent> \<space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nmap <silent> \<space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nmap <silent> \<space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nmap <silent> \<space>p  :<C-u>CocListResume<CR>
