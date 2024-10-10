require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

--map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>fm", function()
    require("conform").format()
end, { desc = "File Format with conform" })

-- telescope keymap
map("n", "<C-p>", "<cmd> Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-d>", "<cmd> Telescope lsp_document_symbols<CR>", { desc = "Lsp document symbols" })

-- terminal keymap
map("t", "<Esc>", "<C-\\><C-n>", { desc = "escape terminal mode" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "window left" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "window right" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "window down" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "windows up" })
