require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.mouse = ""
o.shiftwidth = 4
o.tabstop = 4
o.backup = false
o.swapfile = false

vim.cmd [[set guifont=SauceCodePro\ Nerd\ Font:h11]]
vim.cmd [[command -nargs=1 Sym Telescope lsp_workspace_symbols query=<args>]]

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.code_action { context = { only = { "source.organizeImports" } }, apply = true }
  end,
})
