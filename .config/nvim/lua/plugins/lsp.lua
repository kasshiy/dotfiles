return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    keys = {
      { "<Leader>m", vim.diagnostic.open_float, mode = "n" },
      { "<Leader>q", vim.diagnostic.setloclist, mode = "n" },
    },
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
          prefix = "icons",
        },
        severity_sort = true,
      },
      -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
      -- Be aware that you also will need to properly configure your LSP server to
      -- provide the inlay hints.
      inlay_hints = { enabled = false },
      autoformat = true,
    },
    config = function()
      local nvim_lsp = require("lspconfig")

      local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
      for type, icon in pairs(signs) do
        local hl = "LspDiagnosticsSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<Leader>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts)
        end,
      })

      vim.api.nvim_create_autocmd("LspDetach", {
        callback = function(_)
          vim.cmd("setlocal tagfunc< omnifunc<")
        end,
      })

      local update_capabilities = function(capabilities)
        local completionItem = capabilities.textDocument.completion.completionItem

        completionItem.snippetSupport = true
        completionItem.preselectSupport = true
        completionItem.insertReplaceSupport = true
        completionItem.labelDetailsSupport = true
        completionItem.deprecatedSupport = true
        completionItem.commitCharactersSupport = true
        completionItem.tagSupport = { valueSet = { 1 } }
        completionItem.resolveSupport =
        { properties = { "documentation", "detail", "additionalTextEdits" } }

        return capabilities
      end

      -- mason
      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup_handlers({ function(server)
        local opts = {}
        -- (optional) Customize the options passed to the server
        opts.capabilities = update_capabilities(vim.lsp.protocol.make_client_capabilities())

        if server.name == "jsonls" then
          opts.commands = {
            Format = {
              function()
                vim.lsp.buf.range_format({}, { 0, 0 }, { vim.fn.line("$"), 0 })
              end
            }
          }
        end

        local function detected_root_dir(root_dir)
          return not (not (root_dir(vim.api.nvim_buf_get_name(0), vim.api.nvim_get_current_buf())))
        end
        if server.name == "tsserver" or server.name == "eslint" then
          local root_dir = nvim_lsp.util.root_pattern("package.json", "node_modules")
          opts.root_dir = root_dir
          opts.autostart = detected_root_dir(root_dir)
        elseif server.name == "denols" then
          local root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc", "deps.ts")
          opts.root_dir = root_dir
          opts.autostart = detected_root_dir(root_dir)
          opts.init_options = { lint = true, unstable = true, }
        end
        nvim_lsp[server].setup(opts)
      end })
    end
  },
  "jose-elias-alvarez/null-ls.nvim",
  "jay-babu/mason-null-ls.nvim",
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-treesitter/nvim-treesitter"
    },
    keys = {
      { "<leader>ca", "<cmd>Lspsaga code_action<CR>",          mode = { "n", "v" } },
      { "gd",         "<cmd>Lspsaga goto_definition<CR>",      mode = "n" },
      { "K",          "<cmd>Lspsaga hover_doc<CR>",            mode = "n" },
      { "[g",         "<cmd>Lspsaga diagnostic_jump_prev<CR>", mode = "n" },
      { "]g",         "<cmd>Lspsaga diagnostic_jump_next<CR>", mode = "n" },
      { "gr",         "<cmd>Lspsaga rename<CR>",               mode = "n" },
    },
    opts = {},
  },
  { "onsails/lspkind-nvim", },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
      { "<leader>xL", "<cmd>TroubleToggle loclist<cr>",               desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix List (Trouble)" },
      {
        "[q",
        function()
          if require("trouble").is_open() then
            require("trouble").previous({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Previous trouble/quickfix item",
      },
      {
        "]q",
        function()
          if require("trouble").is_open() then
            require("trouble").next({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cnext)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Next trouble/quickfix item",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-refactor",
      "nvim-treesitter/playground",
    },
    opts = {
      highlight = {
        enable = true,
        disable = {
          "haskell",
          "purescript"
        },
      },
      matchup = {
        enable = false,
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25,         -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        -- lint_events = {"BufWrite", "CursorHold"},
      },
      refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = true },
      },
    }
  },
}
