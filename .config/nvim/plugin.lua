require("lazy").setup(
{
  "folke/zen-mode.nvim",
  "vim-denops/denops.vim",

  "chickbone/eva01.vim",
  "EdenEast/nightfox.nvim",
  "guns/xterm-color-table.vim",
  "machakann/vim-highlightedyank",

  "romgrk/barbar.nvim",
  {
    "Xuyuanp/scrollbar.nvim",
    config = function()
      vim.g.scrollbar_highlight = {
        body = 'Number'
      }
    end,
    }
  },

  "nvim-tree/nvim-web-devicons",
  "lambdalisue/glyph-palette.vim",
  "lambdalisue/nerdfont.vim",

  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "tami5/sql.nvim",
  "MunifTanjim/nui.nvim",
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  "nathom/filetype.nvim",

  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "jay-babu/mason-null-ls.nvim",
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "nvim-treesitter/nvim-treesitter-refactor",
  "nvim-treesitter/playground",
  "glepnir/lspsaga.nvim",
  "onsails/lspkind-nvim",
  "folke/trouble.nvim",
  "b3nj5m1n/kommentary",

  {
    "lambdalisue/fern.vim",
    cmd = "Fern",
    dependencies = {
      "lambdalisue/fern-renderer-nerdfont.vim",
      "lambdalisue/fern-git-status.vim",
      "lambdalisue/fern-bookmark.vim",
      "lambdalisue/fern-hijack.vim",
      "lambdalisue/fern-mapping-quickfix.vim",
      "LumaKernel/fern-mapping-fzf.vim",
      "yuki-yano/fern-preview.vim",
    },
    config = function()
      vim.cmd([[

        nn <silent><leader>e :Fern . -reveal=% -drawer -toggle -right -width=37<CR>

        let g:fern#renderer = 'nerdfont'
        let g:fern#default_hidden = 1
        let g:fern#renderer#nerdfont#indent_markers = 1
        let g:fern#comparator = 'lexical'

        augroup my-glyph-palette
          autocmd! *
          autocmd FileType fern call glyph_palette#apply()
          autocmd FileType nerdtree,startify call glyph_palette#apply()
        augroup END

        " fern settings
        function! s:init_fern() abort
          " Use 'select' instead of 'edit' for default 'open' action
          nmap <silent> <buffer> q :bd<CR>
          nmap <silent> <buffer> d     <Plug>(fern-action-cd:cursor)
          nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
          nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
          nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
          nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
          nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
          setlocal signcolumn=no nonumber

          hi link FernIndentMarkers LineNr
        endfunction

        augroup fern-custom
          autocmd! *
          autocmd FileType fern call s:init_fern()
        augroup END
      ]])
    end,
  },
  "stevearc/aerial.nvim",

  "antoinemadec/FixCursorHold.nvim",
  "max397574/better-escape.nvim",
  "rcarriga/nvim-notify",
  "folke/noice.nvim",

  "Shougo/ddc.vim",
  "Shougo/pum.vim",
  "Shougo/ddc-source-nvim-lsp",
  "matsui54/denops-signature_help",
  "tani/ddc-fuzzy",
  "Shougo/ddc-ui-native",
  "Shougo/ddc-ui-pum",
  "Shougo/ddc-source-around",
  "Shougo/ddc-matcher_head",
  "Shougo/ddc-sorter_rank",
  "Shougo/ddc-source-cmdline",
  "Shougo/ddc-source-cmdline-history",
  "delphinus/skkeleton_indicator.nvim",
  "vim-skk/skkeleton",

  "junegunn/fzf",
  "junegunn/fzf.vim",

  "glepnir/dashboard-nvim",

  "kana/vim-textobj-user",
  "kana/vim-textobj-entire",
  "osyo-manga/vim-textobj-multiblock",

  "tpope/vim-repeat",
  "tpope/vim-unimpaired",
  "machakann/vim-sandwich",
  "andymass/vim-matchup",
  "cohama/lexima.vim",
  "rhysd/clever-f.vim",
  "unblevable/quick-scope",
  "lukas-reineke/indent-blankline.nvim",
  "terryma/vim-expand-region",
  "tversteeg/registers.nvim",
  "markonm/traces.vim",
  "hrsh7th/vim-searchx",

  { "lambdalisue/gina.vim", cmd = "Gina"},
  "rhysd/committia.vim",
  "lewis6991/gitsigns.nvim",
  { "kdheepak/lazygit.nvim", cmd = "LazyGit" },
  "pwntester/octo.nvim",

  "skywind3000/asyncrun.vim",
  "mhinz/vim-grepper",

  "neovimhaskell/haskell-vim",
  "simrat39/rust-tools.nvim",
  "iamcco/markdown-preview.nvim",
  "vhdirk/vim-cmake",

  { "Jten3roberts/qf.nvim", ft = "qf" },
  { "kevinhwang91/nvim-bqf", ft = "qf" },
  { "stevearc/qf_helper.nvim", ft = "qf" },
  { "itchyny/vim-qfedit", ft = "qf" },
  { "thinca/vim-qfreplace", ft = "qf" },

  { "tyru/capture.vim", cmd = "Capture" },
  "sQVe/sort.nvim",
  "jghauser/mkdir.nvim",
  "yutkat/history-ignore.vim",
  "tyru/open-browser.vim",
  "folke/which-key.nvim",

  "t9md/vim-choosewin",
  "famiu/bufdelete.nvim",
  "stevearc/stickybuf.nvim",
  "kwkarlwang/bufresize.nvim",

  "vim-jp/vimdoc-ja",

  "junegunn/goyo.vim",
  "junegunn/limelight.vim",
}
)
