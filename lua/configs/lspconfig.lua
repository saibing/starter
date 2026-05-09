-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers =
  { "html", "cssls", "jsonls", "gopls", "clangd", "rust_analyzer", "jdtls", "bashls", "ty", "tsgo", "zls" }

vim.lsp.enable(servers)

-- reference https://github.com/MysticalDevil/inlay-hints.nvim

--lua_ls settings
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      hint = {
        enable = true, -- Enable inlay hints globally
        paramName = "All", -- Parameter name hints: "All" | "Literal" | "Disable"
        paramType = true, -- Function parameter type hints
        setType = true, -- Assignment type hints
        arrayIndex = "Auto", -- Array index hints: "Enable" | "Auto" | "Disable"
        await = true, -- Await hints
        semicolon = "All", -- Semicolon hints: "All" | "SameLine" | "Disable"
      },
    },
  },
})

--ty settings
vim.lsp.config("ty", {
  settings = {
    ty = {
      inlayHints = {
        variableTypes = true,
        callArgumentNames = true,
      },
    },
  },
})

--gopls settings
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      hints = {
        assignVariableTypes = true, -- Variable type hints in assignments
        compositeLiteralFields = true, -- Composite literal field name hints
        compositeLiteralTypes = true, -- Composite literal type hints
        constantValues = true, -- Constant value hints (iota)
        functionTypeParameters = true, -- Generic function type parameter hints
        ignoredError = true, -- Implicitly discarded error hints (experimental)
        parameterNames = true, -- Function call parameter name hints
        rangeVariableTypes = true, -- Range statement variable type hints
      },
    },
  },
})

--rust_analyzer settings
vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      inlayHints = {
        -- Type related
        typeHints = { enable = true }, -- Variable type hints
        chainingHints = { enable = true }, -- Method chain type hints
        closureReturnTypeHints = { enable = "never" }, -- "never" | "always"
        closureCaptureHints = { enable = false }, -- Closure capture hints
        -- Parameter related
        parameterHints = { enable = true }, -- Function parameter hints
        -- Brace related
        closingBraceHints = { enable = true, minLines = 25 }, -- Closing brace hints
        -- Other
        bindingModeHints = { enable = false }, -- Binding mode hints
        discriminantHints = { enable = "never" }, -- Enum discriminant hints
        expressionAdjustmentHints = { enable = "never" }, -- Type adjustment hints
        implicitDrops = { enable = false }, -- Implicit drop hints
        lifetimeElisionHints = { enable = "never" }, -- Lifetime elision hints
        genericParameterHints = {
          type = { enable = false },
          lifetime = { enable = false },
          const = { enable = false },
        },
      },
    },
  },
})

--clangd settings
vim.lsp.config("clangd", {
  settings = {
    clangd = {
      InlayHints = {
        Enabled = true,
        ParameterNames = true,
        DeducedTypes = true,
        Designators = true,
      },
      fallbackFlags = { "-std=c++20" },
    },
  },
})

--tsgo settings
vim.lsp.config("tsgo", {
  settings = {
    typescript = {
      inlayHints = {
        parameterNames = { enabled = "literals" },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        enumMemberValues = { enabled = true },
      },
    },
  },
})

--jdtls settings
vim.lsp.config("jdtls", {
  settings = {
    java = {
      inlayHints = {
        parameterNames = {
          enabled = "all", -- "none" | "literals" | "all"
          exclusions = { "this" },
        },
        variableTypes = { enabled = true }, -- Variable type hints
        parameterTypes = { enabled = true }, -- Parameter type hints
      },
    },
  },
})

--zls settings
vim.lsp.config("zls", {
  settings = {
    zls = {
      enable_inlay_hints = true, -- Global enable
      inlay_hints_show_builtin = true, -- Show builtin function hints
      inlay_hints_show_parameter_name = true, -- Show parameter name hints
      inlay_hints_show_variable_type_hints = true, -- Show variable type hints
      inlay_hints_show_struct_literal_field_type = true, -- Show struct literal field type hints
      inlay_hints_exclude_single_argument = true, -- Exclude single argument hints
      inlay_hints_hide_redundant_param_names = false, -- Hide redundant parameter names
      inlay_hints_hide_redundant_param_names_last_token = false, -- Hide redundant param names for last token
    },
  },
})
