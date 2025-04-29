-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jsonls", "gopls", "clangd", "rust_analyzer", "jdtls", "bashls", "pyright" }

local ts_ls = os.getenv "TS_LS"

if ts_ls == "denols" then
  table.insert(servers, "denols")
else
  table.insert(servers, "ts_ls")
end

vim.lsp.enable(servers)
