return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<Space>aa",
      function()
        local aerial = require "aerial"
        aerial.toggle { focus = false }
      end,
    },
    {
      "gO",
      function()
        local aerial = require "aerial"
        aerial.open { focus = false }
        aerial.focus()
      end,
    },
  },
  opts = {
    backends = { "treesitter", "markdown", "man" },
    layout = {
      max_width = { 60, 0.5 },
      width = nil,
      min_width = 20,
      win_opts = {
        winblend = 30,
      },
      default_direction = "float",
      placement = "window",
      resize_to_content = true,
      preserve_equality = false,
    },
    attach_mode = "window",
    close_automatic_events = {},
    disable_max_lines = 10000,
    disable_max_size = 2000000,
    filter_kind = {
      "Class",
      "Constructor",
      "Enum",
      "Function",
      "Interface",
      "Module",
      "Method",
      "Struct",
    },
    highlight_mode = "last",
    highlight_closest = true,
    highlight_on_hover = false,
    highlight_on_jump = 300,
    autojump = false,
    manage_folds = false,
    link_folds_to_tree = false,
    link_tree_to_folds = true,
    nerd_font = "auto",
    open_automatic = false,
    post_jump_cmd = "normal! zz",
    close_on_select = false,
    update_events = "TextChanged,InsertLeave",
    show_guides = false,
    float = {
      border = "rounded",
      relative = "win",
      max_height = 0.9,
      height = nil,
      min_height = { 8, 0.1 },
      override = function(conf, source_winid)
        conf.anchor = "NE"
        conf.col = vim.fn.winwidth(source_winid)
        conf.row = 0
        return conf
      end,
    },
    nav = {
      border = "rounded",
      max_height = 0.9,
      min_height = { 10, 0.1 },
      max_width = 0.5,
      min_width = { 0.2, 20 },
      win_opts = {
        cursorline = true,
        winblend = 10,
      },
      autojump = false,
      preview = false,
      keymaps = {
        ["<CR>"] = "actions.jump",
        ["<2-LeftMouse>"] = "actions.jump",
        ["<C-v>"] = "actions.jump_vsplit",
        ["<C-s>"] = "actions.jump_split",
        ["h"] = "actions.left",
        ["l"] = "actions.right",
        ["<C-c>"] = "actions.close",
      },
    },
  }
}
