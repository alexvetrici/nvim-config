local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end

local  con_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not con_status_ok then
  return
end

local lsp_status_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_status_ok then
  return
end

local servers = {
  "lua_ls",
  "pyright",
  "jsonls",
}

mason.setup()
mason_lspconfig.setup({
  ensure_installed = servers
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.lua_ls.setup {
  capabilities = capabilities
}

