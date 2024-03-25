local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

local servers = { "html", "cssls", "jsonls", "clangd", "rust_analyzer", "jdtls" }

local lsp_option = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(lsp_option)
end

local gopls_settings = {
    analyses = {
        unusedparams = true,
    },
    staticcheck = true,
    gofumpt = true,
}

gopls_settings["local"] = "huawei.com"

local gopls_option = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod" },
    settings = {
        gopls = gopls_settings,
    },
}
lspconfig.gopls.setup(gopls_option)

local denols_option = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}
--lspconfig.denols.setup(denols_option)

local tsserver_option = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}
lspconfig.tsserver.setup(tsserver_option)

local rt = require("rust-tools")
rt.setup({
    server = {
        capabilities = capabilities,
        on_init = on_init,
        on_attach = on_attach,
    },
})
