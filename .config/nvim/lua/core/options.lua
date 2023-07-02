local opts = {
  backup = false,
  swapfile = false,

  hidden = true,
  mouse = "a",
  scrolloff = 3,

  breakindent = true,
  expandtab = true,
  smartindent = true,
  backspace = "indent,eol,start",
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  matchpairs = "(:),「:」,『:』",
  helplang = "ja,en",

  number = true,
  virtualedit = "onemore,block",
  diffopt = "vertical,algorithm:histogram,",
  signcolumn = "yes",
  listchars = "precedes:^,trail:-,",

  incsearch = true,
  ignorecase = true,
  tagcase = "followscs",
  clipboard = "unnamed",
  completeopt = "menuone,noinsert,noselect",

  laststatus = 3,
  pumblend = 15,
  winblend = 15,
}

-- Set options from table
for opt, val in pairs(opts) do
  vim.o[opt] = val
end

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
