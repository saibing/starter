require "nvchad.options"

-- add yours here!
vim.opt.mouse = ""
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.backup = false
vim.opt.swapfile = false

vim.cmd([[set guifont=SauceCodePro\ Nerd\ Font:h11]])
vim.cmd([[command -nargs=1 Sym Telescope lsp_workspace_symbols query=<args>]])

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
    end,
})
