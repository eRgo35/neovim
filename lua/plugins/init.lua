return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			-- lua
        "lua-language-server", 
        "stylua",
        
        -- web dev
  			"html-lsp", 
        "css-lsp", 
        "prettier",
        "typescript-language-server",
        "deno",

        -- rusty rust
        "rust-analyzer",

        -- c/c++
        "clangd",
        "clang-format",
        "corelldb",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", 
        "lua", 
        "vimdoc",
        "html", 
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
  		},
      indent = {
        enable = true,
      },
  	},
  },

  { "nvim-neotest/nvim-nio" },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.after.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.after.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },

  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      -- require("core.utils").load_mappings("dap")
    end
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },

  {
    "nanotee/zoxide.vim",
    lazy = false,
  },

  {
    "othree/html5.vim",
  },

  {
    "pangloss/vim-javascript",
  },

  {
    "evanleck/vim-svelte",
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

}
