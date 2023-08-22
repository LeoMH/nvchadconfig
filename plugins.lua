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

}
return plugins
