return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
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
            "c",
            "markdown",
   	    	},
    	},
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
