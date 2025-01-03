require("nvchad.configs.lspconfig").defaults()

-- configs
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local util = require "lspconfig/util"

-- lsp for c/c++
lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = {"c", "cpp", "cxx"},
  settings = {
    clangd = {
      completeUnimported = true,
      usePlaceholders = false,
      analyses = {
        unusedparams = true,
      }
    }
  }
}

-- lsp for go-lang
lspconfig.gopls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
}

-- lsp for python
lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = {"python"},
}

-- lsp for typescript/javascript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
}

-- lsp for json
lspconfig.jsonls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = {"json"},
  settings = {
    json = {
      schemas = {
        {
          fileMatch = { "package.json" },
          url = "https://json.schemastore.org/package.json"
        },
        {
          fileMatch = { "tsconfig.json" },
          url = "https://json.schemastore.org/tsconfig.json"
        },
      }
    }
  }
}

-- lsp for html
lspconfig.html.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
}

-- lsp for css
lspconfig.cssls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
}
