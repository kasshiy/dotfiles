local cmp = require'cmp'
-- local cnf = require'lspconfig'
local lsp_installer = require'nvim-lsp-installer'
local npairs = require('nvim-autopairs')

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
  buf_set_keymap('\\D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('\\rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('\\ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('\\e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('[g', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap(']g', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('\\q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('\\f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- lsp_installer
lsp_installer.on_server_ready(function(server)
    local opts = {on_attach = on_attach; capabilities = capabilities;}
    -- (optional) Customize the options passed to the server
    if server.name == "jsonls" then
        opts.commands = {
          Format = {
            function()
              vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
            end
          }
        }
    end
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

cmp.setup({
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
		keyword_length = 2,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'vsnip' },
    { name = 'treesitter' },
    { name = 'calc' },
  }
})

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

require('nvim-treesitter.configs').setup {
    autopairs = {enable = true}
}
