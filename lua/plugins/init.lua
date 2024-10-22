return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "folke/which-key.nvim",
    enabled = true,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        -- low level
        "c",
        "zig",
        "c",
        "cpp",
        "markdown",
        "markdown_inline",
        "go",
        "rust",
        "python",
        "java",

        "bash",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",
        "prettier",

        --cpp
        "clangd",

        -- rust dev
        "rust_analyzer",

        -- go dev
        "gopls",
        "gofumpt",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",
        "bash-debug-adapter",
      },
    },
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    --build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },

  { "kevinhwang91/nvim-bqf", lazy = false },
  { "sindrets/diffview.nvim", dependencies = { "nvim-lua/plenary.nvim" }, lazy = false },
  { "windwp/nvim-spectre", lazy = false },
  { "github/copilot.vim", lazy = false },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    lazy = false,
    -- See Commands section for default commands if you want to lazy load on them
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "kevinhwang91/nvim-hlslens",
    config = true,
    lazy = true,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  { "nvim-telescope/telescope-dap.nvim" },
  { "tpope/vim-surround" },
  { "tpope/vim-abolish" },
  { "chentoast/marks.nvim" },
  {
    "folke/todo-comments.nvim",
    config = true,
  },
  --{
  --	"akinsho/toggleterm.nvim",
  --	version = "*",
  --	config = true,
  --},
  {
    "simrat39/symbols-outline.nvim",
    config = true,
  },
  {
    "duane9/nvim-rg",
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    ft = { "rust" },
  },
  { "dhruvasagar/vim-table-mode" },
  { "junegunn/vim-easy-align" },
  {
    "rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
    config = function()
      vim.cmd.colorscheme "kanagawa"
    end,
  },
}
