require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- add custom map
map("n", "<C-p>", "<cmd> Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-d>", "<cmd> Telescope lsp_document_symbols<CR>", { desc = "Lsp document symbols" })
