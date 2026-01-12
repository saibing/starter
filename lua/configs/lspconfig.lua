-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jsonls", "gopls", "clangd", "rust_analyzer", "jdtls", "bashls", "basedpyright" }
--local servers = { "html", "cssls", "jsonls", "gopls", "clangd", "jdtls", "bashls", "pyright" }

local ts_ls = os.getenv "TS_LS"

if ts_ls == "denols" then
  table.insert(servers, "denols")
else
  table.insert(servers, "ts_ls")
end

vim.lsp.enable(servers)

-- reference https://github.com/MysticalDevil/inlay-hints.nvim

--lua_ls settings
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      hint = { enable = true },
    },
  },
})

--basedpyright settings
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  },
})

--gopls settings
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      hints = {
        rangeVariableTypes = true,
        parameterNames = true,
        constantValues = true,
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        functionTypeParameters = true,
      },
    },
  },
})

--rust_analyzer settings
vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      inlayHints = {
        chainingHints = { enable = true },
        closingBraceHints = { enable = true, minLines = 25 },
        parameterHints = { enable = true },
        typeHints = { enable = true },
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

--denols settings
vim.lsp.config("denols", {
  settings = {
    deno = {
      inlayHints = {
        parameterNames = { enabled = "all", suppressWhenArgumentMatchesName = true },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true, suppressWhenTypeMatchesName = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enable = true },
        enumMemberValues = { enabled = true },
      },
    },
  },
})

--tsserver settings
vim.lsp.config("tsserver", {
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
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
          enabled = "all",
          exclusions = { "this" },
        },
      },
    },
  },
})
