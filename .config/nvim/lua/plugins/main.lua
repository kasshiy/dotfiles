return {
  { "vim-denops/denops.vim", lazy = false },

  { "chickbone/eva01.vim",   event = "VeryLazy" },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.o.termguicolors = true
      vim.cmd([[colorscheme nordfox]])
    end,
  },

  "romgrk/barbar.nvim",
  {
    "Xuyuanp/scrollbar.nvim",
    config = function()
      vim.g.scrollbar_highlight = {
        head = "LineNr",
        body = "LineNr",
        tail = "LineNr",
      }
    end,
  },

  { "nvim-lua/plenary.nvim",       lazy = true },
  { "nvim-lua/popup.nvim",         lazy = true },
  { "tami5/sql.nvim",              lazy = true },
  { "MunifTanjim/nui.nvim",        lazy = true },
  { "stevearc/dressing.nvim",      event = "VeryLazy" },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  "nathom/filetype.nvim",

  {
    "numToStr/Comment.nvim",
    event = "InsertEnter",
    config = function()
      require("Comment").setup()
    end
  },

  "antoinemadec/FixCursorHold.nvim",
  "max397574/better-escape.nvim",

  -- {
  --   "Shougo/ddc.vim",
  --   -- event = "InsertEnter, CmdlineEnter",
  --   dependencies = {
  --     "Shougo/pum.vim",
  --     "Shougo/ddc-source-nvim-lsp",
  --     "matsui54/denops-signature_help",
  --     "tani/ddc-fuzzy",
  --     "Shougo/ddc-ui-native",
  --     "Shougo/ddc-ui-pum",
  --     "Shougo/ddc-source-around",
  --     "Shougo/ddc-matcher_head",
  --     "Shougo/ddc-sorter_rank",
  --     "Shougo/ddc-source-cmdline",
  --     "Shougo/ddc-source-cmdline-history",
  --   },
  --   config = function()
  --   end
  -- },

  "vim-skk/skkeleton",
  "delphinus/skkeleton_indicator.nvim",

  {
    "junegunn/fzf.vim",
    dependencies = {
      { "junegunn/fzf", build = ":call fzf#install()" },
    },
    keys = {
      { "<Leader>f",    "<Plug>(fzf)",       mode = "n", silent = true },
      { "<F1>",         "<Cmd>Helptags<CR>", mode = "n", silent = true },
      { "<Plug>(fzf)b", "<Cmd>Buffers<CR>",  mode = "n", silent = true },
      { "<Plug>(fzf)c", "<Cmd>Commands<CR>", mode = "n", silent = true },
      { "<Plug>(fzf)f", "<Cmd>Files<CR>",    mode = "n", silent = true },
      { "<Plug>(fzf)g", "<Cmd>Rg<CR>",       mode = "n", silent = true },
      { "<Plug>(fzf)h", "<Cmd>History<CR>",  mode = "n", silent = true },
      { "<Plug>(fzf)m", "<Cmd>Maps<CR>",     mode = "n", silent = true },
      { "<Plug>(fzf)q", "<Cmd>Ghq<CR>",      mode = "n", silent = true },
      { "<Plug>(fzf)w", "<Cmd>Windows<CR>",  mode = "n", silent = true },
    },
    config = function()
      vim.g.fzf_layout = { tmux = "-p90%,75%" }
      vim.g.fzf_buffers_jump = 1
      vim.g.fzf_commands_expect = "alt-enter,ctrl-x"

      vim.cmd([[
        function! s:build_quickfix_list(lines)
          call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
          copen
          cc
        endfunction

        vim.g.fzf_action = {
        \ 'ctrl-q': function('s:build_quickfix_list'),
        \ 'ctrl-t': 'tab split',
        \ 'ctrl-x': 'split',
        \ 'ctrl-v': 'vsplit' }

        command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

        command! -bang -nargs=* Rg
        \ call fzf#vim#grep(
        \   'rg --column --line-number --no-heading --color=always --smart-case -- ' .. shellescape(<q-args>), 1,
        \   fzf#vim#with_preview(), <bang>0)

        command! -nargs=0 Ghq call fzf#run(fzf#wrap({ 'source': 'ghq list --full-path', 'sink': 'cd' }))
      ]])
    end
  },

  "glepnir/dashboard-nvim",

  {
    "osyo-manga/vim-textobj-multiblock",
    dependencies = {
      "kana/vim-textobj-user",
      "kana/vim-textobj-entire",
    },
    event = "BufRead, BufNewFile",
    keys = {
      { "ab", "<Plug>(textobj-multiblock-a)", mode = { "o", "v" } },
      { "ib", "<Plug>(textobj-multiblock-i)", mode = { "o", "v" } },
    },
  },

  { "tpope/vim-repeat",                    event = "BufRead, BufNewFile" },
  { "tpope/vim-unimpaired",                event = "BufRead, BufNewFile" },
  { "machakann/vim-sandwich",              event = "BufRead, BufNewFile" },
  { "machakann/vim-highlightedyank",       event = "BufRead, BufNewFile" },
  { "andymass/vim-matchup",                event = "BufRead, BufNewFile" },
  { "cohama/lexima.vim",                   event = "InsertEnter" },
  { "rhysd/clever-f.vim",                  event = "BufRead, BufNewFile" },
  { "unblevable/quick-scope",              event = "BufRead, BufNewFile" },
  { "lukas-reineke/indent-blankline.nvim", event = "BufRead, BufNewFile" },
  { "terryma/vim-expand-region",           event = "BufRead, BufNewFile" },
  { "tversteeg/registers.nvim",            event = "BufRead, BufNewFile" },
  { "markonm/traces.vim",                  event = "BufRead, BufNewFile" },
  { "hrsh7th/vim-searchx",                 event = "BufRead, BufNewFile" },
  { "skywind3000/asyncrun.vim",            cmd = "AsyncRun" },

  { "neovimhaskell/haskell-vim",           ft = "haskell" },
  { "simrat39/rust-tools.nvim",            ft = "rust" },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = ":call mkdp#util#install()",
  },
  { "vhdirk/vim-cmake",        cmd = "CMake" },

  { "ten3roberts/qf.nvim",     ft = "qf" },
  { "kevinhwang91/nvim-bqf",   ft = "qf" },
  { "stevearc/qf_helper.nvim", ft = "qf" },
  { "itchyny/vim-qfedit",      ft = "qf" },
  { "thinca/vim-qfreplace",    ft = "qf" },

  { "tyru/capture.vim",        cmd = "Capture" },
  { "sQVe/sort.nvim",          cmd = "Sort" },
  "yutkat/history-ignore.vim",
  { "tyru/open-browser.vim",      cmd = "OpenBrowser" },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  { "famiu/bufdelete.nvim",       event = "BufRead, BufNewFile" },
  { "stevearc/stickybuf.nvim",    event = "BufRead, BufNewFile" },
  { "kwkarlwang/bufresize.nvim",  event = "BufRead, BufNewFile" },

  { "vim-jp/vimdoc-ja",           ft = "help" },
  { "guns/xterm-color-table.vim", cmd = "XTermColorTable" },
  { "folke/zen-mode.nvim",        cmd = "ZenMode" },
}
