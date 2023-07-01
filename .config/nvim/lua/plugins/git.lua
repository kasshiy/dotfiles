return {
  "lewis6991/gitsigns.nvim",
  event = "BufNewFile, BufRead",
  opts = {
    signs = {
      add          = { text = '│' },
      change       = { text = '│' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '│' },
      untracked    = { text = '┆' },
    },
    numhl = false,
    linehl = false,
    on_attach = function(bufnr)
      -- Setup keymaps
      local function map(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      map('n', ']c', { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" })
      map('n', 'map(c', { expr = true, "&diff ? 'map(c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" })

      map('n', '<leader>hs', '<cmd>lua require"gitsigns".stage_hunk()<CR>')
      map('v', '<leader>hs', '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>')
      map('n', '<leader>hu', '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>')
      map('n', '<leader>hr', '<cmd>lua require"gitsigns".reset_hunk()<CR>')
      map('v', '<leader>hr', '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>')
      map('n', '<leader>hR', '<cmd>lua require"gitsigns".reset_buffer()<CR>')
      map('n', '<leader>hp', '<cmd>lua require"gitsigns".preview_hunk()<CR>')
      map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line(true)<CR>')

      map('o', 'ih', ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>')
      map('x', 'ih', ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>')
    end,

    watch_gitdir = {
      interval = 1000,
      follow_files = true
    },
    current_line_blame = false,
    sign_priority = 6,
    update_debounce = 100,
    max_file_length = 20000, -- Disable if file is longer than this (in lines)
    status_formatter = nil,  -- Use default
    word_diff = false,
  },

  {
    "lambdalisue/gina.vim",
    cmd = {
      "Gina",
      "GinaBrowseYank",
    },
    vim.api.nvim_create_user_command("GinaBrowseYank", function(meta)
      vim.cmd(([[%d,%dGina browse --exact --yank :]]):format(meta.line1, meta.line2))
      vim.cmd [[
        let @+ = @"
        echo @+
      ]]
    end, { range = "%" })
  },

  { "rhysd/committia.vim", ft = "gitcommit" },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<Leader>gg", "<Cmd>LazyGit<CR>", mode = "n", silent = true }
    },
    config = function()
      vim.g.lazygit_floating_window_winblend = 15
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_floating_window_use_plenary = 1
    end
  },
  "pwntester/octo.nvim",
}
