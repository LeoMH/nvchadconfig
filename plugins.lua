local plugins = {
  {
    "williamboman/mason.nvim",
    opts= {
      ensure_installed = {
        "rust-analyzer",
        -- "haskell-language-server",
        "lua-language-server",
        "ltex-ls",
        "latexindent",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    'junegunn/rainbow_parentheses.vim',
    lazy = false
  },
  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function ()
     vim.g.rustfmt_autosave = 1
    end
  },
  {
    "godlygeek/tabular"
  },
  --{
  --  "preservim/vim-markdown",
  --  ft = 'markdown',
  --  init = function ()
  --    vim.g.vim_markdown_math = 1
  --  end
  --},
  {
    "mickael-menu/zk-nvim",
    lazy = false,
    config = function()
    require("zk").setup({
      -- can be "telescope", "fzf", "fzf_lua" or "select" (`vim.ui.select`)
      -- it's recommended to use "telescope", "fzf" or "fzf_lua"
      picker = "telescope",
      lsp = {
        -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
          -- on_attach = ...
          -- etc, see `:h vim.lsp.start_client()`
        },

        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
          enabled = true,
          filetypes = { "markdown" },
        },
      },
    })
    end
  },
}
return plugins
