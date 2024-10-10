-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "jsonls", "clangd", "rust_analyzer", "jdtls", "bashls", "pyright" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- gopls
local gopls_settings = {
  analyses = {
    unusedparams = true,
  },
  staticcheck = true,
  gofumpt = true,
}

gopls_settings["local"] = "huawei.com"

local gopls_option = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod" },
  settings = {
    gopls = gopls_settings,
  },
}
lspconfig.gopls.setup(gopls_option)

local ts_ls = os.getenv("TS_LS")

if ts_ls == "ts_ls" then
  lspconfig.ts_ls.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
else
  lspconfig.denols.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
