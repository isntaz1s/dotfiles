local null_ls = require("null-ls") -- require null

local opts = {
    sources = {
        null_ls.builtins.formatting.clang_format,         -- formatter c language
        null_ls.builtins.formatting.prettierd,            -- formatter prettier
        null_ls.builtins.formatting.goimports,            -- formatter goimports
        null_ls.builtins.diagnostics.golangci_lint.with({ -- formatter go language
            command = vim.fn.expand("~") .. "/go/bin/golangci-lint",
        }),
    },
}
return opts
