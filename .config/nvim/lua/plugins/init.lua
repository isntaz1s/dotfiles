return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "gopls",
        "pyright",
        "clangd",
        "clang-format",
        "prettierd",
        "json-lsp",
        "html-lsp",
        "css-lsp",
      }
    }
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {
      "javascript",
      "typescript",
      "go",
      "python",
      "c",
      "cpp"
    },
    opts = function ()
      return require "configs.null-ls"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "vim",
          "lua",
          "vimdoc",
          "c",
          "cpp",
          "html",
          "css",
          "typescript",
          "javascript",
          "tsx",
          "go",
          "python"
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require "configs.autotag"
    end,
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.chunk"
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
        require "configs.diagnostic"
     end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "configs.dashboard"
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },

  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function ()
      require "configs.neoscroll"
    end,
  },

  {
    "wakatime/vim-wakatime",
    lazy = false
  }
}
