local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig  = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true
      }
    }
  }
})

lspconfig.hls.setup({
  filetypes = {"haskell"},
  root_dir = util.root_pattern("*.hs")
})

lspconfig.texlab.setup({
  root_dir = util.root_pattern("*.tex")
})

lspconfig.ltex.setup({
  filetypes = { "bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex", "pandoc", "quarto", "rmd"}
})

lspconfig.jdtls.setup({
  root_dir = util.root_pattern(".git", ".gradle*"),
  filetypes = {"java"}
})

lspconfig.pyright.setup({
  root_dir = util.root_pattern(".git", "__init__.py", "*.py"),
  filetypes = {"python"}
})
