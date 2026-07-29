return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
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
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

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
        "vim",
        "lua",
        "vimdoc",

        "bash",
        "diff",

        "c",
        "cpp",
        "rust",
        "zig",

        "go",
        "java",
        "python",
        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "markdown_inline",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",

        -- web
        "tsgo",
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "prettier",
        "prettierd",

        -- c/c++
        "clangd",
        "clang-format",

        -- rust
        "rust_analyzer",

        -- go
        "gopls",
        "gofumpt",

        -- python
        "ty",
        "ruff",

        -- java dev
        "jtdls",

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
  --{
  --    "CopilotC-Nvim/CopilotChat.nvim",
  --    branch = "main",
  --    dependencies = {
  --      { "github/copilot.vim" }, -- or github/copilot.vim
  --      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  --    },
  --    build = "make tiktoken", -- Only on MacOS or Linux
  --    opts = {
  --      debug = true, -- Enable debugging
  --      -- See Configuration section for rest
  --    },
  --    lazy = false,
  --    -- See Commands section for default commands if you want to lazy load on them
  --  },
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
    event = { "CmdlineEnter" },
  },
  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  },
  { "dhruvasagar/vim-table-mode" },
  { "junegunn/vim-easy-align" },
  {
    "rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
    config = function()
      vim.cmd.colorscheme "kanagawa"
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    ft = { "markdown" },
  },

  {
    "folke/sidekick.nvim",
    lazy = false,
    opts = {
      -- add any options here
      cli = {
        mux = {
          backend = "zellij",
          --backend = "tmux",
          enabled = false,
        },
      },
    },
    keys = {
      {
        "<tab>",
        function()
          -- if there is a next edit, jump to it, otherwise apply it if any
          if not require("sidekick").nes_jump_or_apply() then
            return "<Tab>" -- fallback to normal tab
          end
        end,
        expr = true,
        desc = "Goto/Apply Next Edit Suggestion",
      },
      {
        "<c-.>",
        function()
          require("sidekick.cli").focus()
        end,
        desc = "Sidekick Focus",
        mode = { "n", "t", "i", "x" },
      },
      {
        "<leader>aa",
        function()
          require("sidekick.cli").toggle()
        end,
        desc = "Sidekick Toggle CLI",
      },
      {
        "<leader>as",
        function()
          require("sidekick.cli").select()
        end,
        -- Or to select only installed tools:
        -- require("sidekick.cli").select({ filter = { installed = true } })
        desc = "Select CLI",
      },
      {
        "<leader>ad",
        function()
          require("sidekick.cli").close()
        end,
        desc = "Detach a CLI Session",
      },
      {
        "<leader>at",
        function()
          require("sidekick.cli").send { msg = "{this}" }
        end,
        mode = { "x", "n" },
        desc = "Send This",
      },
      {
        "<leader>af",
        function()
          require("sidekick.cli").send { msg = "{file}" }
        end,
        desc = "Send File",
      },
      {
        "<leader>av",
        function()
          require("sidekick.cli").send { msg = "{selection}" }
        end,
        mode = { "x" },
        desc = "Send Visual Selection",
      },
      {
        "<leader>ap",
        function()
          require("sidekick.cli").prompt()
        end,
        mode = { "n", "x" },
        desc = "Sidekick Select Prompt",
      },
      -- Example of a keybinding to open Claude directly
      {
        "<leader>ac",
        function()
          require("sidekick.cli").toggle { name = "claude", focus = true }
        end,
        desc = "Sidekick Toggle Claude",
      },
    },
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = true,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
  --  {
  --    "rest-nvim/rest.nvim",
  --    dependencies = {
  --      "nvim-treesitter/nvim-treesitter",
  --      opts = function(_, opts)
  --        opts.ensure_installed = opts.ensure_installed or {}
  --        table.insert(opts.ensure_installed, "http")
  --      end,
  --    },
  --  },
}
