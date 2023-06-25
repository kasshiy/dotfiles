local nvim_lsp = require('lspconfig')
local mason = require('mason')
mason.setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})

-- lspconfig
local on_attach = function(bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, 'n', ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Mappings.
  local opts = { noremap=true, silent=true }
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('\\wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('\\wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('\\wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('<leader>de', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('[g', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap(']g', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

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
    { properties = { 'documentation', 'detail', 'additionalTextEdits' } }

  return capabilities
end

-- mason
local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup_handlers({ function(server)
  local opts = {on_attach = on_attach;}
  -- (optional) Customize the options passed to the server
  opts.capabilities = update_capabilities(vim.lsp.protocol.make_client_capabilities())

  if server.name == "jsonls" then
    opts.commands = {
      Format = {
      function()
        vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
      end
      }
    }
  end

  local function detected_root_dir(root_dir)
    return not(not(root_dir(vim.api.nvim_buf_get_name(0), vim.api.nvim_get_current_buf())))
  end
  if server.name == 'tsserver' or server.name == 'eslint' then
      local root_dir = nvim_lsp.util.root_pattern("package.json", "node_modules")
      opts.root_dir = root_dir
      opts.autostart = detected_root_dir(root_dir)
    elseif server.name == 'denols' then
      local root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc", "deps.ts")
      opts.root_dir = root_dir
      opts.autostart = detected_root_dir(root_dir)
      opts.init_options = { lint = true, unstable = true, }
    end
  nvim_lsp[server].setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end })

require('lspkind').init({
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',
})

--[[ cmp.setup({
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
		keyword_length = 2,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'treesitter' },
    { name = 'calc' },
  }
}) ]]
