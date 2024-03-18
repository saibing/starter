local M = {}

-- Path to overriding theme and highlights files
local highlights = require("configs.highlights")

M.ui = {
    theme = "nord",

    hl_override = highlights.override,
    hl_add = highlights.add,
}

return M
