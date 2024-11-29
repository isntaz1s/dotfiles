return {
    {
        "stevearc/conform.nvim", -- auto formatter
        event = 'BufWritePre',
        opts = require "configs.conform",
    },

    {
        "williamboman/mason.nvim", -- mason for lsp servers
        opts = {
            ensure_installed = {
                "clangd",
                "gopls",
                "typescript-language-server",
                "html-lsp",
                "css-lsp",
                "prettierd",
                "clang-format",
            }
        }
    },

    {
        "neovim/nvim-lspconfig", -- lspconfig for setup servers
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter", -- treesitter for better snippets
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css", "javascript",
                "typescript", "go", "toml", "c", "cpp"
            },
        },
    },

    {
        "jose-elias-alvarez/null-ls.nvim", -- null_ls for better formatter
        event = "VeryLazy",
        opts = function()
            return require "configs.null-ls"
        end
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim", -- telescope for better file searching
        run = "make",
    },
}
