-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jsonls", "gopls", "clangd", "rust_analyzer", "jdtls", "bashls", "pyright" }

local ts_ls = os.getenv "TS_LS"

if ts_ls == "ts_ls" then
  table.insert(servers, "ts_ls")
else
  table.insert(servers, "denols")
end

vim.lsp.enable(servers)
