-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type HLTable
M.override = {
    CursorLine = {
        bg = "black2",
    },
    Todo = { bold = true, italic = true },
    ["@variable"] = { bold = true },      -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { bold = true },
    ["@boolean"] = { bold = true },       -- For booleans.
    ["@const.builtin"] = { bold = true }, -- For constant that are built in the language: `nil` in Lua.
    ["@const.macro"] = { bold = true },   -- For constants that are defined by macros: `NULL` in C.
    ["@title"] = { bold = true },         -- Text that is part of a title.

    ["@comment"] = { italic = true },
    ["@conditional"] = { italic = true }, -- For keywords related to conditionnals.
    ["@function"] = { italic = true },    -- For fuction (calls and definitions).
    ["@method"] = { italic = true },      -- For method calls and definitions.
    ["@func.builtin"] = { italic = true },
    ["@namespace"] = { italic = true },   -- For identifiers referring to modules and namespaces.
    ["@field"] = { italic = true },       -- For fields.
    ["@field.key"] = { italic = true },   -- For fields.
    ["@property"] = { italic = true },    -- Same as `["@field"]`, but when accessing, not declaring.
    ["@keyword"] = { italic = true },     -- For keywords that don't fall in other categories.
    ["@keyword.function"] = { italic = true },
    ["@keyword.return"] = { italic = true },
    ["@keyword.operator"] = { italic = true },
    ["@repeat"] = { italic = true },        -- For keywords related to loops.
    ["@string"] = { italic = true },        -- For strings.
    ["@string.regex"] = { italic = true },  -- For regexes.
    ["@string.escape"] = { italic = true }, -- For escape characters within a string.
    ["@character"] = { italic = true },     -- For characters.

    Comment = { italic = true },            -- italic for comment
    Conditional = { italic = true },        -- italic if, then, else, endif, switch, etc.
    Function = { italic = true },           -- italic funtion names
    Identifier = { italic = true },         -- any variable name
    Keyword = { italic = true },            -- italic for, do, while, etc.
    Repeat = { italic = true },             -- italic any other keyword
    String = { italic = true },             -- any string

    WildMenu = { fg = "#e39a83", bg = "NONE", bold = true },
    IncSearch = { fg = "#ECEFF4", bg = "#5E81AC" },
}

---@type HLTable
M.add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
